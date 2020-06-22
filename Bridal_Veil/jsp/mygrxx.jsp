<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head lang="en">
		<meta charset="utf-8" />
		<title>个人信息</title>
		<link rel="stylesheet" type="text/css" href="../css/public1.css"/>
		<link rel="stylesheet" type="text/css" href="../css/mygrxx.css" />
		<style type="text/css">
		select{
			padding: 5px;
			border-radius: 5px;
			outline: none;
		}
		.error{
		color:red;
		}
		
	</style>
	</head>
	<body>
		<!------------------------------head------------------------------>
		<div class="head ding">
			<div class="wrapper clearfix">
				<div class="clearfix" id="top">
					<h1 class="fl"><a href="Home.jsp"><img src="../img/public_log.png"/></a></h1>
					<div class="fr clearfix" id="top1">
						<p class="fl">
							<a href="#" id="login">登录</a>
							<a href="#" id="reg">注册</a>
						</p>
						<form action="#" method="get" class="fl">
							<input type="text" placeholder="搜索" />
							<input type="button" />
						</form>
						<div class="btn fl clearfix">
							<a href="mygxin.html"><img src="../img/grzx.png"/></a>
							<a href="#" class="er1"><img src="../img/ewm.png"/></a>
							<a href="cart.html"><img src="../img/gwc.png"/></a>
							<p><a href="#"><img src="../img/smewm.png"/></a></p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<!------------------------------idea------------------------------>
		<div class="address mt">
			<div class="wrapper clearfix">
				<a href="Home.jsp" class="fl">首页</a>
				<span>/</span>
				<a href="Person.jsp" class="on">个人中心</a>
			</div>
		</div>
		
		<!------------------------------Bott------------------------------>
		<div class="Bott">
			<div class="wrapper clearfix">
				
				<div class="you fl">
					<h2>个人信息</h2>
					<div class="gxin">
						<div class="tx"><a href="#"><img style="border-radius: 300px;width: 100px;height: 100px" src="${Person.user_tou }"/><p id="avatar">修改头像</p></a></div>
						<div class="xx">
							<h3 class="clearfix"><strong class="fl">基础资料</strong><a href="#" class="fr" id="edit1">编辑</a></h3>
							<div>姓名：${Person.user_name }</div>
							<div>生日：${Person.birthday }
							<div id="date" style="margin-left: 100px;margin-top: 50px;">
	
	</div>
							
							
							</div>
							<div>性别：${Person.sex }</div>
							<h3>高级设置</h3>
							<!--<div><span class="fl">银行卡</span><a href="#" class="fr">管理</a></div>-->
							<div><span class="fl">账号地区：中国</span></div>
							<div><span class="fl">绑定邮箱：${Person.email }</span><a href="#" class="fr" id="edit2">修改</a></div>
						</div>
					</div>			
				</div>
			</div>
		</div>
		<!--遮罩-->
		<div class="mask"></div>
		<!--编辑弹框-->
		<div class="bj">
			<div class="clearfix"><a href="#" class="fr gb"><img src="../img/icon4.png"/></a></div>
			<h3>编辑基础资料</h3>
			<form action="../admin_Updata_Servlet" method="post">
				<p><label>姓名：</label><input type="text" name="user_name" value="" /></p>
				<p><label>生日：</label>	
		<select name="year" id="year">
				<option value="">选择年份</option>
		</select>
		<select name="month" id="month">
			<option value="">选择月份</option>
		</select>
		<select id="days" name="day" class="day">
			<option value="">选择日期</option>
		</select></p>
				<p>
					<label >性别：</label>
					<span><input type="radio"  name="sex" value="男" />男</span>
					<span><input type="radio"  name="sex" value="女" />女</span>
				</p>
				<div class="bc">
					<input type="submit" value="保存"  />
					<input type="button" value="取消" />
				</div>
			</form>
		</div>
		<!--高级设置修改-->
		<div class="xg">
			<div class="clearfix"><a href="#" class="fr gb"><img src="../img/icon4.png"/></a></div>
			<h3>切换绑定邮箱</h3>
			<!--../admin_UpdataEmail_Servlet  -->
			<form id="loginForm" action="../admin_UpdataEmail_Servlet" method="post">
				<p><label>邮箱：</label><input type="text"  name="email" value="" /></p>
				<div >
					<input type="submit" value="保存" />
					<input type="button" class="fr gb" value="取消" />
				</div>
			</form>
		</div>
		<!--修改头像-->
		<div class="avatar">
			<div class="clearfix"><a href="#" class="fr gb"><img src="../img/icon4.png"/></a></div>
			<h3>修改头像</h3>
			<form action="../admin_FileUploadTou_Servlet" method="post" enctype="multipart/form-data">
				<h4>请上传图片</h4>
				<input type="file" name="fileName" value="上传头像" />
				<p>jpg或png，大小不超过2M</p>
				<input type="submit" value="提交" />
			</form>
		</div>
		
		<!--返回顶部-->
		<div class="gotop">
			<a href="cart.html">
			<dl>
				<dt><img src="../img/gt1.png"/></dt>
				<dd>去购<br />物车</dd>
			</dl>
			</a>
			<a href="#" class="dh">
			<dl>
				<dt><img src="../img/gt2.png"/></dt>
				<dd>联系<br />客服</dd>
			</dl>
			</a>
			<a href="mygxin.html">
			<dl>
				<dt><img src="../img/gt3.png"/></dt>
				<dd>个人<br />中心</dd>
			</dl>
			</a>
			<a href="#" class="../toptop" style="display: none">
			<dl>
				<dt><img src="../img/gt4.png"/></dt>
				<dd>返回<br />顶部</dd>
			</dl>
			</a>
			<p>400-800-8200</p>
		</div>
		<!--footer-->
		<div class="footer">
			<div class="top">
				<div class="wrapper">
					<div class="clearfix">
						<a href="#2" class="fl"><img src="../img/foot1.png"/></a>
						<span class="fl">7天无理由退货</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="../img/foot2.png"/></a>
						<span class="fl">15天免费换货</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="../img/foot3.png"/></a>
						<span class="fl">满599包邮</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="../img/foot4.png"/></a>
						<span class="fl">手机特色服务</span>
					</div>
				</div>
			</div>
			<p class="dibu">最家家居&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br />
			违法和不良信息举报电话：400-800-8200，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
		</div>
		<script src="../js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/jquery-validation.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/public2.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/user.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/select.js" type="text/javascript" charset="utf-8"></script>
		<script src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
		<script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
		<script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
		
		<script type="text/javascript">
		$(function(){
			 $("#date").selectDate()
			
			$("#days").focusout(function(){
				var year = $("#year option:selected").html()
				var month = $("#month option:selected").html()
				var day = $("#days option:selected").html()
				console.log(year+month+day)
			})
			 
			
			
			
		})
		
			
			$("#loginForm").validate({
			
		rules:{
			 email: {
			        required: true,
			        email: true
			      }
			},
			messages: {
				email: "Please enter a valid email address",
			}
			
			
			})
			
		
	</script>
		
	</body>
</html>
