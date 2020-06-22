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
    <link rel="stylesheet" href="../css/Change_Passwd.css" />
</head>

<body>
    <div class="container">
        <div class="content">
            <div class="back">
                <a href="./Home.html">
                    <img src="../img/ly_logo.png" alt="">
                    <div>辛德瑞拉</div>
                </a>
            </div>

            <div class="title">
                <span>修改密码</span>
            </div>
            <div class="con_cen">
                <div class="shou">
                    <input class="fp_phone" type="password" id="npwd1" name="fp_phone" value="" placeholder="输入新密码">
                </div>
                <div class="mess_inv">
                    <input class="fp_phone" type="password" id="qpwd1" name="validate_code" placeholder="确认新密码" />
                </div>
                 <center>  <span id='xinxi'></span></center>
                <div class="next">
                
                
                    <button type="button" class="btn_next" data-toggle="modal" data-target="#myModal" onclick="pass()">
                			        确认修改
                    </button>
                    
                    
                    
                     </div>
            </div>
                    <!-- Modal -->
               <!--      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    修改密码成功，点此返回
                                    <a href="Login.jsp">登录页面</a>进行登录
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                                </div>
                            </div>
                        </div>
                    </div> -->
               
            <div class="copy">京ICP备11017824号-4/京ICP证130164号 北京市公安局朝阳分局备案号：1101050000501
                <br/> Copyright 2018-2019 Cinderall
            </div>
        </div>
    </div>
   <!--  <script src="../js/jquery-1.11.3.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
   
    
      <script type="text/javascript">
    function pass(){
    	
    	var npwd=document.getElementById('npwd1').value;
    	var qpwd=document.getElementById('qpwd1').value;
    	var xinxi=document.getElementById('xinxi');
    	var kong=0;
    	if(npwd!=""&&qpwd!=""){
    		kong=1;
    	}
    	
    	
    	if(npwd!=qpwd||kong==0){
    		xinxi.innerText='两次密码不同';
    		xinxi.setAttribute('style',"color: red;")
    		return true;
    	}else{
    		xinxi.innerText='';
    		xinxi.setAttribute('style',"color: transparent;")
    	
    		$.ajax({
    			
    		
				async:true,
				url:"../updataPwdByPhone",
				type:"post",
				data:"pwd="+npwd,
				success:function(data){
			var code = 	JSON.parse(data);
			if(code.code==0){
				alert("密码修改成功！请重新登录");
				window.location.href="Login.jsp";
			}else if(code.code==1){
				alert("密码修改失败！");
			}
				}
		
    		
    		
    		});
    			
    	
    	}
    	
    }
    
    </script>
    
    
</body>

</html>