/*
 * Image preview script 
 * powered by jQuery (http://www.jquery.com)
 * 
 * written by Alen Grakalic (http://cssglobe.com)
 * 
 * for more info visit http://cssglobe.com/post/1695/easiest-tooltip-and-image-preview-using-jquery
 *
 */
 
this.imagePreview = function(){	
	/* CONFIG */
		
		xOffset = 200;
		yOffset = 50;
		
		// these 2 variable determine popup's distance from the cursor
		// you might want to adjust to get the right result
		
	/* END CONFIG */
	$("a.preview").hover(function(e){
		this.t = this.title;
		this.title = "";	
		var c = (this.t != "") ? "<br/>" + this.t : "";
		$("body").append("<p id='preview' style='z-index:1000;'><img src='"+ this.href +"' alt='Image preview' style='width:400px;height:auto'/>"+ c +"</p>");								 
		$("#preview")
			.css("top","200px")
			.css("left","100px")
			.fadeIn("fast");
    },
	function(){
		this.title = this.t;	
		$("#preview").remove();
    });	
	$("a.preview").mousemove(function(e){
		$("#preview")
			.css("top","200px")
			.css("left","500px");
	});			
};


// starting the script on page load
$(document).ready(function(){
	imagePreview();
});