<%@page import="org.springside.modules.base.util.BaseConstant"%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticResource" value='<%=BaseConstant.bundle.getObject("staticResource") %>'/>

	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-default ">
		<!-- BEGIN TOP BAR -->
		<div class="front-topbar" id="login-info">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-sm-7">
						<ul class="list-unstyled inline">
						</ul>
					</div>
					<div class="col-md-5 col-sm-5 login-reg-links">
						<ul class="list-unstyled inline">
						<li id="#" class="dropdown">
		                    	<a href="javascript:void(0);" class="dropdown-toggle"  data-toggle="dropdown">前往
		                    	<span class="caret"></span>
		                    	</a>
							
									<ul id="goAnother" class="dropdown-menu" >
										<%String proIds []=BaseConstant.bundle.getString("successPro").toString().split(","); %>
										<% for (int i=0;i<proIds.length;i++) {%>
										
										<li>
											 <% String url=BaseConstant.bundle.getString("domain_name_"+proIds[i]); %>
											 <% String title=BaseConstant.bundle.getString("title_"+proIds[i]); %>
											 
											<a href=" 
												<%=url %>
											" >
												<%=title%>
											</a>
										</li>
										<%}%>
									</ul>
							</li>
                        	<li class="sep"><span>|</span></li>
							<%-- <li><a href="${PORTAL_WEBSITE_URL}">首页</a></li>
							<li class="sep"><span>|</span></li> --%>
							<li id="nagaLoginUrl">
									<a href="${LINA_ORDER_MYSIGNUP_URL}" style="color:#0da3e2"><span id="peopleName"></span></a>
							</li>
							<li class="sep"><span>|</span></li>
<!-- 							<li><a href="http://member.roshan.top/login/logout">退出</a></li> -->
							<li><a href="${NAGA_LOGIN_LOGOUT_URL}">退出</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- END TOP BAR -->
		<div class="container navbar-static-top">

			<div class="navbar-header">
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<button class="navbar-toggle btn navbar-btn" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<a class=" logo-v1" href="javascript:void(0);"> 
<!-- 					<img src="static/assets/img/neea_font.png" id="logoimg" alt=""> -->
					<img src="//${staticResource}/cashier/images/logo1-new.png" id="logoimg" alt="">
				</a>
				<!-- END LOGO -->
			</div>

			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="navbar-collapse collapse ">
				<ul class="nav navbar-nav">
					<li class="dropdown " id="home">
						<a href="${LINA_ORDER_MYSIGNUP_URL}" class="dropdown-toggle" data-delay="0" data-close-others="false">我的报考 </a>
					</li>
					<li class="dropdown active">
						<a href="javascript:void(0);" class="dropdown-toggle" data-delay="0" data-close-others="false">费用管理 </a>
					</li>
					<li class="dropdown">
						<a href="${Naga_url}" class="dropdown-toggle" data-delay="0" data-close-others="false">用户管理 </a>
					</li>
				</ul>
			</div>

			<!-- BEGIN TOP NAVIGATION MENU -->
		</div>
	</div>