<%@ page contentType="text/html;charset=UTF-8"%>
<%-- <%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %> --%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springside.modules.base.util.BaseConstant"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
	<c:set var="staticResource" value='<%=BaseConstant.bundle.getObject("staticResource") %>'/>
<!DOCTYPE html>
<html>
<head>
<title>QuickStart示例:<sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link type="image/x-icon" href="//${staticResource}/cashier/images/favicon.ico" rel="shortcut icon">
<link href="//${staticResource}/cashier/bootstrap/2.3.2/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="//${staticResource}/cashier/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />
<link href="//${staticResource}/cashier/styles/default.css" type="text/css" rel="stylesheet" />
<script src="//${staticResource}/cashier/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="//${staticResource}/cashier/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="//${staticResource}/cashier/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
<script src="//${staticResource}/cashier/js/notices.js"></script>

<sitemesh:write property='head'/>
</head>

<body>
	<div class="container">
		<%@ include file="/WEB-INF/views/layouts/header.jsp"%>
		<div id="content">
			<sitemesh:write property='body'/>
		</div>
		<%@ include file="/WEB-INF/views/layouts/footer.jsp"%>
	</div>
	<script src="//${staticResource}/cashier/bootstrap/2.3.2/js/bootstrap.min.js" type="text/javascript"></script>
	
	
	<script type="text/javascript">
 		tempNotice("${hostName}","${rootUrl}");
	</script>
	
</body>
</html>