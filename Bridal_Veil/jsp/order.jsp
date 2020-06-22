<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head lang="en">
		<meta charset="utf-8" />
		<title>order</title>
		<link rel="stylesheet" type="text/css" href="../css/public1.css"/>
		<link rel="stylesheet" type="text/css" href="../css/proList.css" />
		<link rel="stylesheet" type="text/css" href="../css/mygxin.css" />
		<style type="text/css">

body{ background:#EEEEEE;margin:0; padding:0; font-family:"微软雅黑", Arial, Helvetica, sans-serif; }

a{ color:#006600; text-decoration:none;}

a:hover{color:#990000;}

.top{ margin:5px auto; color:#990000; text-align:center;}

.info select{ border:1px #993300 solid; background:#FFFFFF;}

.info{ margin:5px; text-align:center;}

.info #show{ color:#3399FF; }

.bottom{ text-align:right; font-size:12px; color:#CCCCCC; width:1000px;}

</style>
		
	</head>
	<body>
		<!----------------------------------------order------------------>
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
							<a href="mygxin.jsp"><img src="../img/grzx.png"/></a>
							<a href="#" class="er1"><img src="../img/ewm.png"/></a>
							<a href="cart.jsp"><img src="../img/gwc.png"/></a>
							<p><a href="#"><img src="../img/smewm.png"/></a></p>
						</div>
					</div>
				</div>
		<!-- 		<ul class="clearfix" id="bott">
					<li><a href="index.jsp">首页</a></li>
					<li>
						<a href="#">所有商品</a>
						<div class="sList">
							<div class="wrapper  clearfix">
								<a href="paint.jsp">
									<dl>
										<dt><img src="img/nav1.jpg"/></dt>
										<dd>浓情欧式</dd>
									</dl>
								</a>
								<a href="paint.jsp">
									<dl>
										<dt><img src="img/nav2.jpg"/></dt>
										<dd>浪漫美式</dd>
									</dl>
								</a>
								<a href="paint.jsp">
									<dl>
										<dt><img src="img/nav3.jpg"/></dt>
										<dd>雅致中式</dd>
									</dl>
								</a>
								<a href="paint.jsp">
									<dl>
										<dt><img src="img/nav6.jpg"/></dt>
										<dd>简约现代</dd>
									</dl>
								</a>
								<a href="paint.jsp">
									<dl>
										<dt><img src="img/nav7.jpg"/></dt>
										<dd>创意装饰</dd>
									</dl>
								</a>
							</div>
						</div>
					</li>
					<li>
						<a href="flowerDer.jsp">装饰摆件</a>
						<div class="sList2">
							<div class="clearfix">
								<a href="proList.jsp">干花花艺</a>
								<a href="vase_proList.jsp">花瓶花器</a>
							</div>
						</div>
					</li>
					<li>
						<a href="decoration.jsp">布艺软饰</a>
						<div class="sList2">
							<div class="clearfix">
								<a href="zbproList.jsp">桌布罩件</a>
								<a href="bzproList.jsp">抱枕靠垫</a>
							</div>
						</div>
					</li>
					<li><a href="paint.jsp">墙式壁挂</a></li>
					<li><a href="perfume.jsp">蜡艺香薰</a></li>
					<li><a href="idea.jsp">创意家居</a></li>
				</ul> -->
			</div>
		</div>
		<div class="order cart mt">
			<!-----------------site------------------->
			<div class="site">
				<p class="wrapper clearfix">
					<span class="fl">订单确认</span>
					<img class="top" src="../img/temp/cartTop02.png">
				</p>
			</div>
			<!-----------------orderCon------------------->
			<div class="orderCon wrapper clearfix">
				<div class="orderL fl">
					<!--------h3---------------->
					<h3>收件信息<a href="#"  class="edit fr">新增地址</a></h3>
					<!--------addres---------------->
					<div class="addres clearfix">
					<c:forEach items="${address }" var="add">
						<div class="addre fl on">
							<div class="tit clearfix">
								<p class="fl">${add.uadd_name }
								<span class="default" id="addre">${add.uadd_id }</span>
									<span class="default" >[默认地址]</span>
								</p>
								<p class="fr">
									<a href="../del_Address_Servlet?uadd_id=${add.uadd_id }">删除</a>
									<span>|</span>
									<a href="#" class="edit">编辑</a>
								</p>
							</div>
							<div class="addCon">
								<p>${add.uadd_address }</p>
								<p>${add.uadd_phone }</p>
							</div>
						</div>
						</c:forEach>
						<!-- <div class="addre fl">
							<div class="tit clearfix">
								<p class="fl">张三2
								</p>
								<p class="fr">
									<a href="#" class="setDefault">设为默认</a>
									<span>|</span>
									<a href="#">删除</a>
									<span>|</span>
									<a href="#" class="edit">编辑</a>
								</p>
							</div>
							<div class="addCon">
								<p>河北省&nbsp;唐山市&nbsp;路北区&nbsp;大学生公寓村</p>
								<p>15732570937</p>
							</div>
						</div>
						<div class="addre fl">
							<div class="tit clearfix">
								<p class="fl">张三3
								</p>
								<p class="fr">
									<a href="#" class="setDefault">设为默认</a>
									<span>|</span>
									<a href="#">删除</a>
									<span>|</span>
									<a href="#" class="edit">编辑</a>
								</p>
							</div>
							<div class="addCon">
								<p>河北省&nbsp;唐山市&nbsp;路北区&nbsp;大学生公寓村</p>
								<p>15732570937</p>
							</div>
						</div> -->
					</div>
					<h3>支付方式</h3>
					<!--------way---------------->
					<div class="way clearfix">
						<img class="on" src="../img/temp/way01.jpg">
						<img src="../img/temp/way02.jpg"> 
						<img src="../img/temp/way03.jpg"> 
						<img src="../img/temp/way04.jpg"> 
					</div>
					<h3>选择快递</h3>
					<!--------dis---------------->
					<div class="dis clearfix">
						<span class="on">顺风快递</span>
						<span>百世汇通</span>
						<span>圆通快递</span>
						<span>中通快递</span>
					</div>
				</div>
				<div class="orderR fr">
					<div class="msg">
						<h3>订单内容<a href="cart.jsp" class="fr">返回购物车</a></h3>
						<!--------ul---------------->
						<c:forEach items="${wpBuy }" var="wp">
						<ul class="clearfix">
							<li class="fl">
								<img style="width: 90px;width: 90px" src="${wp.wp_url }">
							</li>
							<li class="fl">
								<p>${wp.wp_name }</p>
								<p>颜色分类：${wp.wp_texture }</p>
								<p>数量：1</p>
							</li>
							<li class="fr money" >￥${wp.wp_price }</li>
						</ul>
						</c:forEach>
						<!-- <ul class="clearfix">
							<li class="fl">
								<img  style="width: 90px;width: 90px" src="../img/temp/order02.jpg">
							</li>
							<li class="fl">
								<p>创意现代简约干花花瓶摆件</p>
								<p>颜色分类：烟灰色玻璃瓶</p>
								<p>数量：1</p>
							</li>
							<li class="fr">￥69.90</li>
						</ul> -->
					</div>
					<!--------tips---------------->
					<div class="tips">
						<p><span class="fl">商品金额：</span><span class="fr">￥${total_price }</span></p>
						<p><span class="fl">优惠金额：</span><span class="fr">￥0.00</span></p>
						<p><span class="fl">运费：</span><span class="fr">免运费</span></p>
					</div>
					<!--------tips count---------------->
					<div class="count tips">
						<p><span class="fl">合计：</span><span class="fr">￥${total_price }</span></p>
					</div>
					<!--<input type="button" name="" value="去支付"> -->
					<a href="#" class="pay" onclick="return pay(this)">去支付</a>
				</div>
			</div>
		</div>
		<!--编辑弹框-->
		<!--遮罩-->
		<div class="mask"></div>
		<div class="adddz editAddre">
			<form action="../add_Address_Servlet" method="post">
				<input type="text" name="u_name" placeholder="姓名"/>
				<input type="text" name="u_phone" placeholder="手机号" />
				<div class="city info">
				<select id="s_province" name="s_province"></select>  
				  <select id="s_city" name="s_city" ></select>  
   				 <select id="s_county" name="s_county"></select>
					<!-- <select name="">
						<option value="省份/自治区">省份/自治区</option>
					</select>
					<select>
						<option value="城市/地区">城市/地区</option>
					</select>
					<select>
						<option value="区/县">区/县</option>
					</select>
					<select>
						<option value="配送区域">配送区域</option>
					</select> -->
				</div>
				<textarea name="s_address" rows="" cols="" placeholder="详细地址"></textarea>
				<input type="text" name="code" placeholder="邮政编码" />
				<div class="bc">
					<input type="submit"  value="保存" />
					<input type="button" value="取消" />
				</div>
			</form>
		</div>
		
		
		
		<!--返回顶部-->
		<div class="gotop">
			<a href="cart.jsp">
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
			<a href="mygxin.jsp">
			<dl>
				<dt><img src="../img/gt3.png"/></dt>
				<dd>个人<br />中心</dd>
			</dl>
			</a>
			<a href="#" class="toptop" style="display: none;">
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
			违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
		</div>
		<script src="../js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/public2.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/pro.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/user.js" type="text/javascript" charset="utf-8"></script>
		 <script class="resources library" src="../js/area.js" type="text/javascript"></script>
		<script type="text/javascript">_init_area();</script>
		
<script type="text/javascript">
function pay(obj){
	var s = $(".on");
	var img = s[s.length-2].getAttribute("src"); //
	var express = s[s.length-1].innerHTML;
	var address = $(".on #addre")[0].innerHTML;
	
	$(obj).attr("href","../ok_Servlet?address="+address+"&img="+img+"&express="+express+" ");
	alert($(obj).attr("href"));
	return true;
	
}




var Gid  = document.getElementById ;

var showArea = function(){

	Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	

	Gid('s_city').value + " - 县/区" + 

	Gid('s_county').value + "</h3>"

							}

Gid('s_county').setAttribute('onchange','showArea()');

</script>
		
	</body>
</html>
