<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>国际辛德瑞拉婚纱礼服定制有限公司</title>
    <link rel="stylesheet" href="../css/public.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
<style type="text/css">
ul li {
  list-style: none;
  padding: 0px;
  margin: 0px;
}
</style>
</head>
<body>
<script type="text/javascript" src="../js/jquery-1.11.3.js"></script>
<div class="container"style="background-color: #fcfcfc;">
    <div class="container">
        <div id="wel_and_login">
            <span id="welcome">您好，欢迎光临</span>
	<c:if test="${userName==null }">
            <div id="log_reg">
                <a href="Login.jsp">登录</a>
                <span>/</span>
                <a href="Register.jsp">注册</a>
            </div>
            </c:if>
        

<c:if test="${userName!=null }">
            <div id="log_reg" >
               <li class="navmenu" ><c:out value="${userName }"></c:out>
               <ul>
					<span><li><a href="../admin_OneSelf_Servlet">个人信息</a></li></span>
					<span><li><a href="Chose_Passwd.jsp">修改密码</a></li></span>
					<span><li><a href="Login.jsp" onclick='return exit()'>退出</a></li></span>
               </ul>
                </li>
                 
        </div>
          <div id="log_reg" >
               <p><a href="../show_Car_Servlet"><img src="../img/gwc.png"/></a></p>
                 
        </div>
        
</c:if>
</div>
        <div id="public_logo">
            <img class="img-responsive" src="../img/public_log.png">
        </div>

        <div id="nav_sty">
            <div class="navbar navbar-default" id="header_nav">
                <div class="navbar-header" id="nav_hea">
                    <a class="navbar-toggle" data-toggle="collapse" data-target="#nav_list" id="hea_a">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                </div>
                <div class="navbar-collapse collapse" id="nav_list">
                    <ul class="nav navbar-nav" id="nav_ul">
                        <li><a href="Home.jsp">首页</a></li>
                        <li><a href="BridalVeil.jsp">西式婚纱</a></li>
                        <li><a href="ChidalVeil.jsp">中式婚纱</a></li>
                        <li><a href="CocktailDress.jsp">晚礼服</a></li>
                        <li><a href="Hanfu.jsp">汉服</a></li>
                        <li><a href="Reservation.jsp">私人订制</a></li>
                        <li><a href="Company.jsp">关于我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
 
<script type="text/javascript">
$(function(){ // 页面加载完成
	$(".navmenu").mouseover(function(){
		$(this).children("ul").show();
	})
	$(".navmenu").mouseout(function(){
		$(this).children("ul").hide();
	})
})

function exit(){
	
	var s = confirm("是否确认退出？");
	if(s==true){
		return s;
	}else{
		return s;
	}
	
}

</script>

</body>
</html>