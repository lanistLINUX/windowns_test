<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head lang="en">
<script src="../js/jquery-3.2.1.js" ></script>
    <meta charset="UTF-8">
    <title>国际辛德瑞拉婚纱礼服定制有限公司</title>
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/Login.css" />
</head>

<body>
<%
request.getSession().setAttribute("userName", null);
%>
<div class="container">
    <div class="back">
        <a href="./Home.jsp">
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

                <a class="way" id="pwdl" onclick="pwdlg()">密码登录</a>
                <a class="way" id="msgl" onclick="msglg()">短信登录</a>
                <form class="pwd_form">
                   
                    <input class="ipts" type="text" id="phonename" name="phone" value="" placeholder="手机号/用户名">
                    <input id="pwdi" class="ipts" type="password" name="password" value="" placeholder="密码">
                    <div id="pwd_login">
                        <input class="btn_login" type="button" value="登录">
                    </div>
                </form>
                <form class="msg_form">
                    <input class="ipts" type="text" id="phone" name="phone" value="" placeholder="手机号">
                    <div id="msgd">
                        <input id="msgcode" class="ipts msgpwd" type="text" value="" placeholder="验证码">
                        <input id="sendmsg" class="btn_login btn_send " type="button" value="发送验证码">
                    </div>
                    <div id="msg_login">
                        <input class="btn_login" type="button" value="登录">
                    </div>
                </form>
                <div class="autolg">
                    <input type="checkbox" value="true" checked="checked">
                    <span id="lgtxt">下次自动登录</span>
                    <a href="./Register.jsp">注册</a>
                    <span id="slt">|</span>
                    <a href="./GB_Passwd.jsp">忘记密码</a>
                </div>
            </div>
            <!--<div class="bei" align="center">京ICP备11017824号-4/京ICP证130164号 北京市公安局朝阳分局备案号：1101050000501</div>-->
            <div class="bei" align="center">中国·上海·杨浦区·宝源路F518时尚创意园13栋汇所</div>
            <div class="copy" align="center"> Copyright 2018-2019 Cinderall</div>
        </div>
    </div>
</div>
<script src="../js/login.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery-1.11.3.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	$("#pwd_login").click(pwdEnter);
	$("#msg_login").click(msgEnter);
	$("#sendmsg").click(sendmsg);
	
})

function pwdEnter(){
	var name= $("#phonename").val();
	var pwd = $("#pwdi").val();
	$.ajax({
		async:true,
		url:"../user_EnterByPwd_Servlet",
		type:"post",
		data:{name:name,pwd:pwd},
		success:function(data){
			
		var code=JSON.parse(data);
			if(code.code==0){
				alert("登录成功！");
				window.location.href="Home.jsp"; 
			}else if(code.code==1){
				alert("账户或者密码输入错误！");
			}
		}
		
	});
	
} 

function msgEnter(){
	var phone= $("#phone").val();
	var msgcode = $("#msgcode").val();
	if(msgcode==""){
	alert("请输入验证码！");
	}else{
		
	
	$.ajax({
		async:true,
		url:"../user_EnterByPhone_Servlet",
		type:"post",
		data:{phone:phone,msgcode:msgcode},
		success:function(data){
		var code =JSON.parse(data);
			if(code.code==0){
				alert("登录成功！");
				window.location.href="Home.jsp"; 
			}else if(code.code==3){
				alert("该手机号未注册！");
			}else if(code.code==1){
				alert("验证码输入错误！");
			}
		}
	});
	
	}
} 


function sendmsg(){
	var phone = $("#phone").val();
	
	$.ajax({
		async:true,
		url:"../sendYzmServlet",
		type:"post",
		data:"phone="+phone,
		success:function(data){
			alert(data);
		}
	});
	
	
}

</script>



</body>

</html>