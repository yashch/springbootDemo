<%@ page language="java" pageEncoding="UTF-8" %>
	
	<script src="static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="static/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="static/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- <script src="static/js/??jquery-1.10.2.min.js,jquery-migrate-1.2.1.min.js,bootstrap.min.js" type="text/javascript"></script> -->
	<script type="text/javascript"> var imgPath="//${staticResource}/cashier/";</script>
	<!-- <script type="text/javascript" src="static/js/back-to-top.js"></script> -->
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL JAVASCRIPTS(REQUIRED ONLY FOR CURRENT PAGE) -->
	<script type="text/javascript" src="static/js/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="static/js/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.bxslider.min.js"></script>
	<script src="static/js/userApp.js"></script>
	<script src="static/js/jquery.cookie.js"></script>
	<script src="static/js/index.js"></script>
	<!-- <script type="text/javascript" src="static/js/??back-to-top.js,jquery.fancybox.pack.js,jquery.themepunch.plugins.min.js,jquery.themepunch.revolution.min.js,jquery.bxslider.min.js,userApp.js,jquery.cookie.js,index.js"></script> -->

	<script type="text/javascript">
        jQuery(document).ready(function() {
            App.init();    
            App.initBxSlider();
            Index.initRevolutionSlider();                    
        });
    </script>
	<script src="//${staticResource}/cashier/js/jquery.placeholder.js"></script>    
    <script type="text/javascript">
    $(function () {
        // Invoke the plugin
        $('input, textarea').placeholder();
    });
	</script>