<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springside.modules.base.util.BaseConstant"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="staticResource" value='<%=BaseConstant.bundle.getObject("staticResource") %>'/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>工行接口实例<sitemesh:title/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="apple-touch-icon" href="//${staticResource}/cashier/uikit/pages/ico/60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="//${staticResource}/cashier/uikit/pages/ico/76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="//${staticResource}/cashier/uikit/pages/ico/120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="//${staticResource}/cashier/uikit/pages/ico/152.png">
    <link rel="icon" type="image/x-icon" href="//${staticResource}/cashier/images/favicon.ico" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="//${staticResource}/cashier/uikit/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
    <link href="//${staticResource}/cashier/uikit/assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="//${staticResource}/cashier/uikit/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="//${staticResource}/cashier/uikit/assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="//${staticResource}/cashier/uikit/assets/plugins/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="//${staticResource}/cashier/uikit/assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="//${staticResource}/cashier/uikit/pages/css/pages-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="//${staticResource}/cashier/uikit/pages/css/pages.css" rel="stylesheet" type="text/css" />
    <script src="//${staticResource}/cashier/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    <!--[if lte IE 9]>
        <link href="//${staticResource}/cashier/uikit/pages/css/ie9.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <script type="text/javascript">
    window.onload = function()
    {
      // fix for windows 8
      if (navigator.appVersion.indexOf("Windows NT 6.2") != -1)
        document.head.innerHTML += '<link rel="stylesheet" type="text/css" href="//${staticResource}/cashier/uikit/pages/css/windows.chrome.fix.css" />'
    }
    </script>


<sitemesh:write property='head'/>
</head>

<body class="fixed-header   ">
	
	<!-- START SIDEBAR NAV -->
	 <%@ include file="/WEB-INF/views/layouts/sidebar.jsp"%>
	<!-- END SIDEBAR NAV -->
    <!-- ================================================================================= -->
    <div class="page-container">
      <!-- START HEADER -->
      <%@ include file="/WEB-INF/views/layouts/header.jsp"%>
      <!-- END HEADER -->
      <!-- START PAGE CONTENT WRAPPER -->
      <div class="page-content-wrapper">
        <!-- START PAGE CONTENT -->
       <!--  <div class="content sm-gutter">
        <div class="content"> -->
          <!-- START JUMBOTRON -->
          <div class="jumbotron" data-pages="parallax">
            <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
              <div class="inner" style="-webkit-transform: translateY(0px); opacity: 1; ">
                <!-- START BREADCRUMB -->
                <!-- <ul class="breadcrumb">
                  <li>
                    <p>Extras</p>
                  </li>
                  <li><a href="#" class="active">Blank template</a>
                  </li>
                </ul> -->
                <!-- END BREADCRUMB -->
              </div>
            </div>
          </div>
          <!-- END JUMBOTRON -->
          <!-- START PANEL -->
          <div class="panel panel-transparent">
              <div class="panel-body">
          		<sitemesh:write property='body'/>
          	  </div>
          </div>
          <!-- END PANEL -->
     <!--    </div>
        </div> -->
        <!-- END PAGE CONTENT -->
      </div>
      	<!-- START COPYRIGHT -->
        <%@ include file="/WEB-INF/views/layouts/footer.jsp"%>
        <!-- END COPYRIGHT -->
      <!-- END PAGE CONTENT WRAPPER -->
    </div>  
    <!-- BEGIN VENDOR JS -->
    <script src="//${staticResource}/cashier/uikit/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/modernizr.custom.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/boostrapv3/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery-bez/jquery.bez.min.js"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery-actual/jquery.actual.min.js"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script type="text/javascript" src="//${staticResource}/cashier/uikit/assets/plugins/bootstrap-select2/select2.min.js"></script>
    <script type="text/javascript" src="//${staticResource}/cashier/uikit/assets/plugins/classie/classie.js"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script type="text/javascript" src="//${staticResource}/cashier/uikit/assets/plugins/jquery-autonumeric/autoNumeric.js"></script>
    <script type="text/javascript" src="//${staticResource}/cashier/uikit/assets/plugins/dropzone/dropzone.min.js"></script>
    <script type="text/javascript" src="//${staticResource}/cashier/uikit/assets/plugins/bootstrap-tag/bootstrap-tagsinput.min.js"></script>
    <script type="text/javascript" src="//${staticResource}/cashier/uikit/assets/plugins/jquery-inputmask/jquery.inputmask.min.js"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/boostrap-form-wizard/js/jquery.bootstrap.wizard.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/plugins/summernote/js/summernote.min.js" type="text/javascript"></script>
    <!-- END VENDOR JS -->
    <!-- BEGIN CORE TEMPLATE JS -->
    <script src="//${staticResource}/cashier/uikit/pages/js/pages.min.js"></script>
    <!-- END CORE TEMPLATE JS -->
    <!-- BEGIN PAGE LEVEL JS -->
    <script src="//${staticResource}/cashier/uikit/assets/js/scripts.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS -->
    <script src="//${staticResource}/cashier/uikit/assets/js/form_wizard.js" type="text/javascript"></script>
    <script src="//${staticResource}/cashier/uikit/assets/js/notifications.js" type="text/javascript"></script>
	<script src="//${staticResource}/cashier/uikit/assets/js/scripts.js" type="text/javascript"></script>
</body>
<script>
	$().ready(function(){
		$('#showNoti').click();
	});
</script>
</html>