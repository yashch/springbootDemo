// var etControl = {};
//    etControl.process = function (config) {
//        /*需要放在html中的body标签后面使用本控件*/
//        var count = 0;
//        var id = "loadingBg";
//        var el = "#" + id;
//        $("body").append('<div id="' + id + '"  class="loadingBg" align="center"   ></div>');
//        var divTxt = "#" + id + " div";
//        $(el).html("<div style=''><img src='/cerp/static/img/loader.gif' /></div>");
//        $(el).attr("style", "width: 100%;height: 100%;background: #4D4D4D;padding: 5px;position: fixed;left: 0;top: 0;font-size:12px;");
//        $(divTxt).attr("style", "vertical-align:middle;margin-top: 330px");
//        //$(el).remove() 
//    }

var docEle = function()
 {
     return document.getElementById(arguments[0]) || false;
 }
 function openNewDiv()
 {
     var m = "loadingBg";
     if (docEle(m)) document.body.removeChild(docEle(m));
    
     //mask遮罩层
     var newMask = document.createElement("div");
     newMask.id = m;
     newMask.style.position = "absolute";
     newMask.style.zIndex = "9999";
     _scrollWidth = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth);
     _scrollHeight = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);
     newMask.style.width = (_scrollWidth-20) + "px";
     newMask.style.height = (_scrollHeight-20) + "px";
     newMask.style.top = "0px";
     newMask.style.left = "0px";
     newMask.style.background = "#ffffff";
     newMask.style.filter = "alpha(opacity=50)";
     newMask.style.opacity = "0.50";
     //newMask.innerHTML ="<div  align='center' style='margin-top: 20%;'><img src='"+PrjctStaUrl+"/static/img/loader.gif' width='16' height='16'  style='CURSOR: pointer'><br/><br/><div>";
     newMask.innerHTML ="<div  align='center' style='margin-top: 20%;'><div class='loading spin'></div><div>";
     document.body.appendChild(newMask);
 }
 
    function loadingBgAdd(){
       
    	openNewDiv();
    }
    function loadingBgRemove(){
    	$("#loadingBg").remove() 
    }