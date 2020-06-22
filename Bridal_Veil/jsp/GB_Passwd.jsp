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
    <link rel="stylesheet" href="../css/GB_Passwd.css" />
</head>

<body>
    <div class="container">
        <div class="content">
            <div class="back">
                <a href="./Home.jsp">
                    <img src="../img/ly_logo.png" alt="">
                    <div>辛德瑞拉</div>
                </a>
            </div>

            <div class="title">
                <span>找回密码</span>
            </div>
            <div class="con_cen">
                <div class="shou">
                    <input class="fp_phone" id="phone" type="text" name="phone" value="" placeholder="手机号">
                </div>
                <div class="val">
                    <div class="drag">
                        <div class="bg"></div>
                        <div class="text" onselectstart="return false;">请拖动滑块解锁</div>
                        <div class="btn">>></div>
                    </div>
                </div>
                <div id="mess_inv">
                    <input class="fp_phone validate_code" type="text" name="validate_code" id="msgcode" placeholder="验证码" />
                    <input  id="sendyzm" class="btn_send" type="button" value="发送验证码">
                </div>
                <div class="next">
                    <input class="btn_next" type="button" id="nextD" value="下一步">
                </div>
                <h6 align="center"><a  href="javascript:history.back(-1)">返回</a></h6>
            </div>
            <div class="copy">京ICP备11017824号-4/京ICP证130164号 北京市公安局朝阳分局备案号：1101050000501
                <br/> Copyright 2018-2019 Cinderall
            </div>
        </div>
    </div>
    <script src="../js/findpassword.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery-1.11.3.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script type="text/javascript">
    $(document).ready(function (){
    	
    	$("#sendyzm").click(ajax);
    	$("#nextD").click(msgEnter);
    	
    });
    function ajax(){
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
    				window.location.href="Change_Passwd.jsp"; 
    			}else if(code.code==3){
    				alert("该手机号未注册！");
    			}else if(code.code==1){
    				alert("验证码输入错误！");
    			}
    		}
    	});
    	
    	}
    } 
    
    
    </script>
    
</body>

</html>