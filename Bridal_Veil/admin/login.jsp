<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>后台登录</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- //for-mobile-apps -->
    <link href="css/index.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</head>
<body>
    <!-- main -->
    <div class="main">
        <h1>
            后台登录系统
        </h1>
        <form action="../admin_Login_Servelt" method="post">
            <input type="text" value="用户名" name="username" id="name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}"
                   required="">
            <input type="password" value="Password" name="userpwd" id="pwd" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}"
                   required="">
                  <!-- style="width: 660px;height: 80px" -->
                   
                  
                <input type="text" value="验证码" id="msgcode" name="yzmcode" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}"
                   required="">
                 <img class="img" alt="" src="../imageServlet" id="code">
                      
            <input type="submit" value="登录" onclick = "return enter()">
        </form>
    </div>
    <div class="footer">
       
    </div>
    <!-- //main -->
    <script type="text/javascript">
    $(document).ready(function (){
    	
    	
    	$("#code").click(changeCode);
    	
    	
    })
    

    
    
    function changeCode(){
    	$.ajax({
    		
    	async:true,
    		url:"../imageServlet",
    		type:"post",
    		data:"",
    		success:function(data){
    				
    				$("#code").attr("src","../imageServlet");
    		}
    		
    		
    		
    	})
    	
    }
    
    function enter(){
   
    	var msgcode = $("#msgcode").val();
    	var name = $("#name").val();
    	var pwd = $("#pwd").val();
    	var flag=0;

    	if(msgcode=="验证码"){
    	alert("请输入验证码！");
    	return false;
    	}else if(name=="用户名"||pwd=="Password"){
		alert("用户名或密码为空");
		return false;
        }else{
        		
        	
    	
    	$.ajax({
    		url:"../image_isTrue",
    		type:"post",
    		data:{msgcode:msgcode},
    		success:function(data){
    			var data = JSON.parse(data);
    		if(data.code==0){
    			return true;
    		}else{
    			return false;
    		}
    	}
    		
    	}); 
    	
    	
    	
    	
    	
    	}
    }
    
    
    </script>
    
</body>
</html>