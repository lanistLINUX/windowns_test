<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head lang="en">
<script src="../js/jquery-3.2.1.js" ></script>
    <meta charset="UTF-8">
    <title>国际辛德瑞拉婚纱礼服定制有限公司</title>
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/Register.css" />
    <!-- <style>
    .iptss{width: 280px;height: 38px; padding-left:20px; outline:none;border-radius: 3px;
   border-style:solid ;border:1px margin:8px auto;margin-left: 23px;}
    
    </style> -->
    
    
</head>

<body>
<div class="container">
    <div class="back">
        <a href="./Home.html">
            <img src="../img/ly_logo.png" alt="">
            <div>辛德瑞拉</div>
        </a>
    </div>

    <div id="all">
        <div class="content">
            <div class="title">
                <img src="../img/ly_logo.png">
                <div class="tong">通行证</div>
            </div>
            
         
            <div class="kuang">
                <a class="way" id="pwdl">手机号注册</a>
               <div class="autolg" align="center">  <a href="Login.jsp" class="login">我已注册，马上登录></a></div>
                <input class="ipts" type="text" id="username" name="username" value="" placeholder="用户名">
                <input id="phone" class="ipts" type="text" name="phone" value="" placeholder="手机号">
                <div id="msgd">
                    <input class="ipts msgpwd" type="text" id="yzm" placeholder="验证码">
                    <input id="sendyzm" class="btn_login btn_send " type="button" value="发送验证码">
                </div>
                <input class="ipts" type="text" id="pwd" name="pwd" value="" placeholder="请输入6-12位密码">
                <div id="login">
                    <button type="button"  id="sub" class="btn_login" data-toggle="modal" data-target="#myModal" >注册</button>
                </div>
                
                <div class="autolg">
                    <input type="checkbox" value="true" checked="checked">
                    <span id="lgtxt">我已阅读并同意相关隐私协议</span>
                </div>
            </div>
            
            
            
              <!-- Modal -->
           <%--    <c:if test="${ isZhuce}"> --%>
               <!--  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">注册成功，点此返回<a href="./Login.jsp">登录页面</a>进行登录
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                                </div>
                            </div>
                        </div>
                    </div>  -->
      <%--  </c:if> --%>
            
              
            
            <!--<div class="bei" align="center">京ICP备11017824号-4/京ICP证130164号 北京市公安局朝阳分局备案号：1101050000501</div>-->
            <div class="bei" align="center">中国·上海·杨浦区·宝源路F518时尚创意园13栋汇所</div>
            <div class="copy" align="center"> Copyright 2018-2019 Cinderall</div>
            
            
            
        </div>
    </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery-1.11.3.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.js"></script>
<script type="text/javascript">
$(document).ready(function (){
	
	$("#sendyzm").click(ajax);
	
	$("#sub").click(sub);
});

function ajax(){
	var phone = $("#phone").val();
	
	$.ajax({
		async:true,
		url:"../yzmServlet",
		type:"post",
		data:"phone="+phone,
		success:function(data){
			alert(data);
		}
	});
	
	
}

function sub(){
	var i=0,j=0,k=0,z=0;
	var username = $("#username").val();
	var phone = $("#phone").val();
	var pwd = $("#pwd").val();
	var yzmcode = $("#yzm").val();
	 if(username==""){
		 alert("请输入用户名！");
		 $("#username").css("border-color","red");
	}else{
		i=1;
		 $("#username").css("border-color","transparent");
	}
	 
	 if(phone==""){
		 alert("请输入手机号！");
		 $("#phone").css("border-color","red");
	 }else{
		 j=1;
		 $("#phone").css("border-color","transparent");
	 }
	
	if(pwd==""){
		alert("请输入密码！");
		$("#pwd").css("border-color","red");
	}else{
		k=1;
		$("#pwd").css("border-color","transparent");
	}
	
	if(yzmcode==""){
		alert("请输入验证码！");
	}else{
		z=1;
	}
	
	
	
	if(i==1&&j==1&&k==1&&z==1){
		$.ajax({
		async:true,
		url:"../user_Register_Servlet",
		type:"post",
		data:{username:username,phone:phone,pwd:pwd,yzmcode:yzmcode},
		success:function(data){
			alert(data);
			/* $.alerts.alert(data,function(){
				window.location.href="Home.jsp";
				}); */
			 
				window.location.href="Login.jsp"; 
		}
	});
	}
	
	
	
	
}

</script>

</body>


</html>