<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springside.modules.base.util.BaseConstant"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="staticResource" value='<%=BaseConstant.bundle.getObject("staticResource") %>'/>
<nav class="page-sidebar" data-pages="sidebar">
      <!-- BEGIN SIDEBAR MENU TOP TRAY CONTENT-->
      <div class="sidebar-overlay-slide from-top" id="appMenu">
        <div class="row">
          <div class="col-xs-6 no-padding">
            <a href="#" class="p-l-40"><img src="//${staticResource}/cashier/uikit/assets/img/demo/social_app.svg" alt="socail">
            </a>
          </div>
          <div class="col-xs-6 no-padding">
            <a href="#" class="p-l-10"><img src="//${staticResource}/cashier/uikit/assets/img/demo/email_app.svg" alt="socail">
            </a>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-6 m-t-20 no-padding">
            <a href="#" class="p-l-40"><img src="//${staticResource}/cashier/uikit/assets/img/demo/calendar_app.svg" alt="socail">
            </a>
          </div>
          <div class="col-xs-6 m-t-20 no-padding">
            <a href="#" class="p-l-10"><img src="//${staticResource}/cashier/uikit/assets/img/demo/add_more.svg" alt="socail">
            </a>
          </div>
        </div>
      </div>
      <!-- END SIDEBAR MENU TOP TRAY CONTENT-->
      <!-- BEGIN SIDEBAR MENU HEADER-->
      <div class="sidebar-header">
        <img src="//${staticResource}/cashier/uikit/assets/img/logo_white.png" alt="logo" class="brand" data-src="//${staticResource}/cashier/uikit/assets/img/logo_white.png" data-src-retina="//${staticResource}/cashier/uikit/assets/img/logo_white_2x.png" width="78" height="22">
        <div class="sidebar-header-controls">
          <button type="button" class="btn btn-xs sidebar-slide-toggle btn-link m-l-20" data-pages-toggle="#appMenu">
          		<i class="fa fa-angle-down fs-16"></i>
          </button>
          <button type="button" class="btn btn-link visible-lg-inline" data-toggle-pin="sidebar">
          		<i class="fa fs-12"></i>
          </button>
        </div>
      </div>
      <!-- END SIDEBAR MENU HEADER-->
      <!-- START SIDEBAR MENU -->
      <div class="sidebar-menu">
        <!-- BEGIN SIDEBAR MENU ITEMS-->
        <ul class="menu-items">
          <!-- <li class="m-t-30 ">
            <a href="index.html" class="detailed">
              <span class="title">Dashboard</span>
              <span class="details">12 New Updates</span>
            </a>
            <span class="icon-thumbnail bg-success"><i class="fa-credit-card"></i></span>
          </li> -->
          <li class="m-t-30 ">
            <a href="javascript:void(0)" class="detailed">
             <span class="title">支付相关</span>
          	 <!-- <span class="details">支付</span> -->
          	 <span class="arrow"></span>
            </a>
            <span class="icon-thumbnail bg-success">Pay</span>
            <ul class="sub-menu">
		  		<li class="">
		  			<a href="${ctx}/subData">B2C 支付/工行e支付</a>
		  			<span class="icon-thumbnail">p</span>
		  		</li>
		  		<li class="">
		  			<a href="${ctx }/subData/returnFee">订单操作</a>
		  			<span class="icon-thumbnail">o</span>
		  		</li>
		  		<li class="">
		  			<a href="javascript:alert('程序猿加班开发中.......')">对账单</a>
		  			<span class="icon-thumbnail">c</span>
		  		</li>
		  	</ul>
          </li>
		 <%--  <li class="">
		  	<a href="${ctx}/api" class="title"> 
		  		<!-- <span class="title">API</span>
          		<span class="details">QickStart API</span> -->
			</a> 
			<span class="icon-thumbnail">api</span>
		  </li> --%>
		  <%-- <li class="">
		  	<a href="${ctx}/profile" class="title"> 
		  		<!-- <span class="title">Profile</span>
          		<span class="details">Edit Profile</span> -->
			</a> 
			<span class="icon-thumbnail">pro</span>
		  </li> --%>
		  <li class="">
		  	<a href="javascript:void(0);" >
		  		<span class="title">QickStart示例</span>
		  		<span class="arrow"></span>
		  	</a>
		  	<span class="icon-thumbnail">QS</span>
		  	<ul class="sub-menu">
		  		<li class="">
		  			<a href="${ctx }/api">API</a>
		  			<span class="icon-thumbnail">a</span>
		  		</li>
		  		<li class="">
		  			<a href="${ctx }/profile">Profile</a>
		  			<span class="icon-thumbnail">p</span>
		  		</li>
		  		<li class="">
		  			<a href="${ctx }/">Login</a>
		  			<span class="icon-thumbnail">l</span>
		  		</li>
		  	</ul>
		  </li>
			<li class="">
            <a href="javascript:;"><span class="title">UI Elements</span>
            <span class=" arrow"></span></a>
            <span class="icon-thumbnail">Ui</span>
            <ul class="sub-menu">
              <li class="">
                <a href="color.html">Color</a>
                <span class="icon-thumbnail">c</span>
              </li>
              <li class="">
                <a href="typography.html">Typography</a>
                <span class="icon-thumbnail">t</span>
              </li>
              <li class="">
                <a href="icons.html">Icons</a>
                <span class="icon-thumbnail">i</span>
              </li>
              <li class="">
                <a href="buttons.html">Buttons</a>
                <span class="icon-thumbnail">b</span>
              </li>
              <li class="">
                <a href="notifications.html">Notifications</a>
                <span class="icon-thumbnail">n</span>
              </li>
              <li class="">
                <a href="modals.html">Modals</a>
                <span class="icon-thumbnail">m</span>
              </li>
              <li class="">
                <a href="progress.html">Progress &amp; Activity</a>
                <span class="icon-thumbnail">pa</span>
              </li>
              <li class="">
                <a href="tabs_accordian.html">Tabs &amp; Accordions</a>
                <span class="icon-thumbnail">ta</span>
              </li>
              <li class="">
                <a href="sliders.html">Sliders</a>
                <span class="icon-thumbnail">s</span>
              </li>
              <li class="">
                <a href="tree_view.html">Tree View</a>
                <span class="icon-thumbnail">tv</span>
              </li>
              <li class="">
                <a href="nestables.html">Nestable</a>
                <span class="icon-thumbnail">ns</span>
              </li>
            </ul>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
      <!-- END SIDEBAR MENU -->
    </nav>