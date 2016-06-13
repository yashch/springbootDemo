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
						<h5>添加</h5>
					</div>
					
					<form action="${ctx }/demo/add" method="post" id="addForm"
							class="form-horizontal form-validation" >
					<div class="widget-content" id="step1">
						
							<div class="control-group">
								<label class="control-label" style="width:150px;">项目编号：</label>
								<div class="controls"  style="margin-left:150px;">
									<input type="text" TABINDEX="1" placeholder="最多输入4个字符" maxLength="4"
 										class="required {required:true,rangelength:[1,4],messages: { rangelength: $.validator.format('最多可填{0}~{1}个字符')}}"   name="proId" id="proId" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" style="width:150px;">姓名：</label>
								<div class="controls" style="margin-left:150px;">
									<input type="text" TABINDEX="2" maxlength="30" placeholder="最多输入30个字符" class="required {required:true,rangelength:[1,30],messages: { rangelength: $.validator.format('最多可填{0}~{1}个字符')}}" name="name" id="name"/>
								</div>
							</div>
							<div class="control-group" id="div_next1">
								<div class="controls" style="text-align:center;">
								<input type="submit" class="btn " value="添加"/>
								</div>
							</div>
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