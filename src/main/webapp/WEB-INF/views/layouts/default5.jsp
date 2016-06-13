
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springside.modules.base.util.BaseConstant"%>


<c:set var="ctx" value="${pageContext.request.contextPath}" />

<c:set var="staticResource" value='<%=BaseConstant.bundle.getObject("staticResource") %>'/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta name="viewport" content="width=1080">
	
    	<!--[if lte IE 8]>
  			<link rel="stylesheet" type="text/css" href="//${staticResource}/cashier/css/ie.css  ">
  		<![endif]-->
<%-- <base href="${ctx}/"> --%>

<%-- 
<link rel="icon" href="//${staticResource}/cashier/images/browserTitle.ico" type="image/x-icon">
<link rel="shortcut icon" href="//${staticResource}/cashier/images/browserTitle.ico" type="image/x-icon">
<link href="//${staticResource}/cashier/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/jquery.fancybox.css" rel="stylesheet" />
<link href="//${staticResource}/cashier/css/style.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/style-metronic.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/style-responsive.css" rel="stylesheet" type="text/css" />
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link rel="stylesheet" href="//${staticResource}/cashier/css/rs-style.css" media="screen">
<link rel="stylesheet" href="//${staticResource}/cashier/css/settings.css" media="screen">
<link href="//${staticResource}/cashier/css/jquery.bxslider.css" rel="stylesheet" />
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="//${staticResource}/cashier/css/blue.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="//${staticResource}/cashier/css/custom.css" rel="stylesheet" type="text/css" />
 <link href="//${staticResource}/cashier/css/alterConetntDiv.css" rel="stylesheet" type="text/css"/>
 --%>
<!-- END THEME STYLES -->

<link href="//${staticResource}/cashier/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/default5.css" rel="stylesheet" type="text/css"/>
<link href="//${staticResource}/cashier/css/alterConetntDiv.css" rel="stylesheet" type="text/css"/>
<%-- <link href="//${staticResource}/cashier/css/??default5.css,alterConetntDiv.css" rel="stylesheet" type="text/css"/> --%>
<!-- 新样式 -->
<style>
.t_center{text-align:center}
.t_white{background-color:#fff}
.t_gray{background-color:#efefef}
.tr_center{margin:20px 0;text-align:center;border:hidden;height:40px;}
.tr_left{margin:20px 0;text-align:left;border:hidden;height:40px;}
.t_button_blue{text-align:center;border:hidden;height:40px;width:100px;font-size:14px;font-family:'微软雅黑' 'Open Sans';
line-height:40px;background-color:#0da3e2;color:#fff;}
.t_button_blue:hover{background-color:#0362fd;text-decoration:underline;}
.t_button_gray{text-align:center;height:40px;width:100px;font-size:14px;font-family:'微软雅黑' 'Open Sans';line-height:40px;
background-color:#efefef;border:1px solid #e3e3e3 ;color:#333;}
.t_button_gray:hover{background-color:#999;text-decoration:underline;color:#fff;}
.t_button_margin{margin-top:80px;margin-bottom:50px}
.col_margin{margin-left:73px}
.t_war{color:red;font-size:11px;line-height:30px;}
.row_margin{margin:30px 0;}
.YEtextwar{padding:20px;margin-bottom:50px}
.YEtextwar_title{/* border-top:red 1px solid; */color:red;font-family: '微软雅黑';font-size: 14px;border:hidden;}
.YEtextwar_p{font-size: 12px;font-family:'微软雅黑';color:red;}
#YEtextwar_p,#YEtextwar_title{text-align: left;}
.YEtextwar_hidden{display:none}
</style>
<style type="text/css">
	.dropdown.open .dropdown-toggle{background:#fff;color:#999}
  	#goAnother{min-width:100px;}
  	#goAnother li{display:block;text-align:left;padding:5px 5px;}
  	#goAnother li a{line-height:6px;font-size:12px;color:#666}
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lte IE 9]>
      <script src="//${staticResource}/cashier/js/html5shiv.js"></script>
      <script src="//${staticResource}/cashier/js/respond.min.js"></script>
    <![endif]-->
    
    <!--[if lte IE 8]>
  		<script type="text/javascript" src="//${staticResource}/cashier/js/bootstrap-ie.js"></script>
 	<![endif]-->
 	
<%--  	
	<script src="//${staticResource}/cashier/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="//${staticResource}/cashier/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="//${staticResource}/cashier/js/bootstrap.min.js" type="text/javascript"></script>
	<script type="text/javascript"> var imgPath="//${staticResource}/cashier/";</script>
	<script type="text/javascript" src="//${staticResource}/cashier/js/back-to-top.js"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL JAVASCRIPTS(REQUIRED ONLY FOR CURRENT PAGE) -->
	<script type="text/javascript" src="//${staticResource}/cashier/js/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="//${staticResource}/cashier/js/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript" src="//${staticResource}/cashier/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="//${staticResource}/cashier/js/jquery.bxslider.min.js"></script>
	<script src="//${staticResource}/cashier/js/userApp.js"></script>
	<script src="//${staticResource}/cashier/js/jquery.cookie.js"></script>
	<script src="//${staticResource}/cashier/js/index.js"></script>
	<script src="//${staticResource}/cashier/js/jquery.placeholder.js"></script>    
	
	<script src="//${staticResource}/cashier/js/notices.js"></script>
 --%>	
 
	<script src="//${staticResource}/cashier/js/pkg/script4.js"></script>
  	<script type="text/javascript"> var imgPath="//${staticResource}/cashier/"; </script>
 	<script type="text/javascript" src="//${staticResource}/cashier/js/back-to-top.js"></script>
	<script src="//${staticResource}/cashier/js/jquery.placeholder.js"></script>
	<%-- <script type="text/javascript" src="//${staticResource}/cashier/js/??back-to-top.js,jquery.placeholder.js"></script> --%>
 
    <script type="text/javascript">
    $(function () {
        // Invoke the plugin
        $('input, textarea').placeholder();
    });
	</script>
<sitemesh:write property='head'/>

</head>

<body class="page-header-fixed">

		<%@ include file="/WEB-INF/views/layouts/header2.jsp"%>
		
		<sitemesh:write property='body'/>
		
		<%@ include file="/WEB-INF/views/layouts/footer1.jsp"%>
		
 	
	<c:set var="hostName" value='<%=BaseConstant.bundle.getObject("domain") %>'/>
	<c:set var="rootUrl" value='<%=BaseConstant.bundle.getObject("zeus_url") %>'/>
	
 	<script type="text/javascript">
	 tempNotice("${hostName}","${rootUrl}");
	
 </script>
</body>
</html>