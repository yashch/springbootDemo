<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<head> 
<title>添加</title>
</head>
<div id="content">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<!-- Test Schedule step     -->
				<div class="widget-box">
					<div class="widget-title" style="text-align:center;">
						<span class="icon"> <i class="icon-th"></i>
						</span>
						<h5>列表</h5>
					</div>
					
					<form action="${ctx }/demo/add" method="post" id="addForm"
							class="form-horizontal form-validation" >
					<div class="widget-content" id="step1">
						<c:if test="${!empty list }">
							<c:forEach items="${list }" var="account">
								<p>${account.id }---${account.name }----${account.proId }</p>
							</c:forEach>
						</c:if>
						<c:if test="${empty list }">
							<h1>没有记录</h1>
						</c:if>
					</div>
					<!-- end step1 -->
					
					</form>
				</div>
				<!-- end Test Schedule step     -->
			</div>
			<!-- end span12 -->
		</div>
	</div>
	<!-- end content -->
</div>