<%@ page language="java" pageEncoding="UTF-8" %>
<%@page import="org.springside.modules.base.util.BaseConstant"%>

<div style="width:100%;height:80px;"></div>
<div class="copyright" id="copyright" style="background:none repeat scroll 0 0 #fff;border-top:1px solid #f1f1f1;font-size: 12px;padding: 10px 0px;position:fixed;bottom:0;width:100%;height:80px;z-index:998;">
      <div class="container" style="margin-top:15px;margin-bottom:15px;" >
          <div class="row">
          	   <div class="col-md-2" >
               </div>
               <div class="col-md-8">
                   <div class="row">
                       <div class="col-md-12" style="text-align: center;">
                           <%String articleRootUrl=BaseConstant.bundle.getString("naga_url").toString(); %>
                       
                   		<a href="<%=articleRootUrl %>/article/noauth/4" style="color:#bbb;">关于我们</a>
                   		<a href="<%=articleRootUrl %>/article/noauth/5" style="color:#bbb;margin-left: 20px;">法律声明</a>
                   		<a href="<%=articleRootUrl %>/article/noauth/6" style="color:#bbb;margin-left: 20px;">联系我们</a> 
      	 		      </div>   	
          	 		</div>
                   <div class="row">        
                       <div class="col-md-12" style="text-align: center;">
		                <p style="margin-top: 7px;">
		                     Copyright &copy;2014通用考试报名管理平台&nbsp;&nbsp;&nbsp;All Rights Reserved.&nbsp;&nbsp; 京ICP备05031027号
		                </p>
                       </div>    
                   </div> 
               </div>                   
          </div>
       </div> 
</div> 
