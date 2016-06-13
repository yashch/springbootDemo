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
<style type="text/css">
th.cart_good {
	background-color: #e8e8e8;
}
/* alert框NEWCSS */
html,body{ height:100%; margin:0; padding:0} 
	.mask{height:100%; width:100%; position:fixed;  top:0; z-index:1000; } 
	.mask a{text-decoration:none;}
	.opacity{ height:100%;width:100%;opacity:0.5;filter:alpha(opacity=50);background-color:#000;position:fixed;top:0;z-index:999; }
	.mask *{color: #333} 
	.btnFontStyle{display:inline-block;margin-right:60px;border: 1px solid #0DA3E2;background-color:#fff;color:#0DA3E2;padding:4px 10px;font-family: '微软雅黑';text-decoration:none;}
	.closeThePage{display:inline-block;color:#0DA3E2;position:absolute;top:10px;right:20px;font-size: 18px;font-family: '微软雅黑';text-decoration:none;padding:0 6px;line-height:18px}
	.btnFontStyle:hover{background-color:#0DA3E2;color:#fff;border:1px solid #0DA3E2;box-shadow: 0px 3px  4px #dcdcdc; }
</style>
<%-- <base href="${ctx}/"> --%>


<%-- 

<link rel="icon" href="//${staticResource}/cashier/images/browserTitle.ico" type="image/x-icon">
<link rel="shortcut icon" href="//${staticResource}/cashier/images/browserTitle.ico" type="image/x-icon">
<link rel="Stylesheet" href="//${staticResource}/cashier/css/userbase.css">
<link rel="stylesheet" href="//${staticResource}/cashier/css/page_log_reg_v1.css"> 
<link rel="stylesheet" href="//${staticResource}/cashier/css/findpaymentListbase.css" />
<link rel="stylesheet" href="//${staticResource}/cashier/css/findpaymentListorder.css" />

<link href="//${staticResource}/cashier/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<link href="//${staticResource}/cashier/css/jquery.fancybox.css" rel="stylesheet" />
<link rel="stylesheet" href="//${staticResource}/cashier/css/rs-style.css" media="screen">
<link rel="stylesheet" href="//${staticResource}/cashier/css/settings.css" media="screen">
<link href="//${staticResource}/cashier/css/jquery.bxslider.css" rel="stylesheet" />

<link href="//${staticResource}/cashier/css/style-metronic.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/style.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/blue.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="//${staticResource}/cashier/css/style-responsive.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/custom.css" rel="stylesheet" type="text/css" />
 <link href="//${staticResource}/cashier/css/alterConetntDiv.css" rel="stylesheet" type="text/css"/>
 
 --%>
<link rel="icon" href="//${staticResource}/cashier/images/browserTitle.ico" type="image/x-icon">
<link rel="shortcut icon" href="//${staticResource}/cashier/images/browserTitle.ico" type="image/x-icon">
<link href="//${staticResource}/cashier/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//${staticResource}/cashier/css/default4.css" rel="stylesheet" type="text/css"/>
<link href="//${staticResource}/cashier/css/alterConetntDiv.css" rel="stylesheet" type="text/css"/>
<%-- <link href="//${staticResource}/cashier/css/??default4.css,alterConetntDiv.css" rel="stylesheet" type="text/css"/> --%>

<!-- END THEME STYLES -->
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
	<script src="//${staticResource}/cashier/js/jquery.placeholder.js"></script>
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