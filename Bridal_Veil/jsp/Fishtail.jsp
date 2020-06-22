<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<script src="../js/jquery-3.2.1.js" ></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>国际辛德瑞拉婚纱礼服定制有限公司</title>
    <link rel="stylesheet" href="../css/public.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/hover-effects.css">
    <link rel="stylesheet" href="../css/fishtail.css"/>
<style>
    .banner_menu_content{
        width: 250px;left:192px;background-color:#f0f0f0;
    }
.banner_menu_content_ul>li{
   margin-bottom:30px;
}
.li-1{
    padding-top:0;
    padding-bottom:0;
}
    .img-t{
        margin-right:20px;
    }

</style>
</head>
<body >
<%-- <%

String name = request.getParameter("name");

%> --%>


<script type="text/javascript" src="../js/bootlint.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/html5shiv.min.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<script type="text/javascript" src="../js/fishtail.js"></script>
<div class="container" style="background-color: #fcfcfc;">
  
    <div class="container">
        <div class="row hidden-xs">
    <div id="menu_content_bg" >

    </div>
    <div id="big_banner_wrap">
        <ul id="banner_menu_wrap" type="none" style="margin-top:4px;">
            <li class="active">
                <a>类型</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -20px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                           <a> <img class="img-t"src="../img/hsxq_s1.png" /></a> <a onclick="chose(this)">鱼尾婚纱</a></li>
                        <li>
                            <a> <img class="img-t" src="../img/hsxq_s4.png"> </a><a onclick="chose(this)">齐地婚纱</a></li>
                        <li>
                            <a> <img  class="img-t"src="../img/hsxq_s8.png"> </a><a onclick="chose(this)">蓬蓬裙婚纱</a></li>
                        <li>
                            <a> <img  class="img-t"src="../img/hsxq_s9.png"> </a> <a onclick="chose(this)">拖地婚纱</a></li>
                        

                </div>
            </li>
            <li>
                <a>材质</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width:250px; top: -62px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>雪纺</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>蕾丝</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s4.png"> </a> <a>双宫绸</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>网纱</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a> <a>真丝</a></li>


                    </ul>

                </div>
            </li>
            <li>
                <a>风格</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px;top: -104px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a>  <a>优雅</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>性感</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s4.png"> </a>  <a>甜美</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a> <a>森系</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>性感</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>版型</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -146px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>修身</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s4.png"> </a> <a>宽松</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>修身</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a> <a>宽松</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a> <a>修身</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>袖长</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -188px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>无袖</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a> <a>短袖</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s4.png"> </a> <a>中袖</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a> <a>长袖</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>吊带</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>领型</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -230px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>圆领</a></li>
                        <li>
                            <a> <img class="img-t" src="../img/hsxq_s1.png"> </a> <a>吊带</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a>  <a>方领</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>V领</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a>  <a>立领</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>季节</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -272px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a>  <a>春季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a> <a>夏季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s4.png"> </a> <a>秋季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>冬季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>秋季</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>领型</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -314px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>圆领</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a> <a>翻领</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>方领</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a>  <a>V领</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>立领</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>季节</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -356px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a>  <a>春季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>夏季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a> <a>秋季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a>  <a>冬季</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>夏季</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>版型</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 250px; top: -398px;left:192px;background-color:#fcfcfc;">
                    <ul class="banner_menu_content_ul" type="none">
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>修身</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>宽松</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s1.png"> </a> <a>修身</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s8.png"> </a> <a>宽松</a></li>
                        <li>
                            <a> <img class="img-t"src="../img/hsxq_s9.png"> </a> <a>宽松</a></li>
                    </ul>
                </div>
            </li>
        </ul>
        <div id="big_banner_pic_wrap">
            <ul id="big_banner_pic" type="none">
                <li><img class="img-responsive" src="../img/ft1.png"></li>
            </ul>
        </div>
    </div>
</div></div>

    <div class=" container">
        <div class="row" id="showaddress">
           
       <!--  <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic2.png" alt="Image-1">
                </div>
                <div class="text-desc">

                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn ">Learn more</a>
                </div>
            </div>
        </div>
    <div class="col-sm-3 col-xs-6 col-md-3">

        <div class="port-1 effect-3">
            <div class="image-box">
                <img class="img-responsive" src="../img/pic3.png" alt="Image-1">
            </div>
            <div class="text-desc">
                <p>性感鱼尾裙.</p>
                <a href="BridalVeil_Detail.jsp" target="_blank" class="btn ">Learn more</a>
            </div>
        </div>
    </div>

<div class="col-sm-3 col-xs-6 col-md-3">

    <div class="port-1 effect-3">
        <div class="image-box">
            <img class="img-responsive" src="../img/pic4.png" alt="Image-1">
        </div>
        <div class="text-desc">
            <p>性感鱼尾裙.</p>
            <a href="BridalVeil_Detail.jsp" target="_blank" class="btn ">Learn more</a>
        </div>
    </div>
</div>

        <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic2-1.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn ">Learn more</a>
                </div>
            </div>
            </div>

        <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic2-2.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn ">Learn more</a>
                </div>
            </div>

            </div>

        <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic2-3.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn ">Learn more</a>
                </div>
            </div>
            </div>

        <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic2-4.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn ">Learn more</a>
                </div>
            </div>
            </div>

        <div class="col-sm-3 col-xs-6 col-md-3">
            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic3-1.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn">Learn more</a>
                </div>
            </div>
            </div>

        <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic3-2.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn">Learn more</a>
                </div>
            </div>
        </div>
        <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic3-3.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank" class="btn">Learn more</a>
                </div>
            </div>
            </div>

        <div class="col-sm-3 col-xs-6 col-md-3">

            <div class="port-1 effect-3">
                <div class="image-box">
                    <img class="img-responsive" src="../img/pic3-4.png" alt="Image-1">
                </div>
                <div class="text-desc">
                    <p>性感鱼尾裙.</p>
                    <a href="BridalVeil_Detail.jsp" target="_blank"class="btn ">Learn more</a>
                </div>
            </div>
        </div>
    
     <div class="col-sm-3 col-xs-6 col-md-3">

                <div class="port-1 effect-3">
                    <div class="image-box">
                        <img  class="img-responsive" src="../img/hs_6.png" alt="Image-1" > 
                    </div>
                    <div class="text-desc">
                        <p>掉长裙</p>
                        <a href="BridalVeil_Detail.jsp" target="_blank" class="btn">Learn more</a>
                    </div>
                </div> 
            </div> -->

    </div> 
   </div>

    <div class="suspension">
        <div class="suspension-box">
            <a href="javascript:" class="a a-service-phone "><i class="i"></i></a>
            <a href="javascript:" class="a a-qrcode"><i class="i"></i></a>
                <a href="javascript:" class="a a-top"><i class="i"></i></a>
                <div class="d d-service-phone">
                    <i class="arrow"></i>
                    <div class="inner-box">
                        <div class="d-service-item clearfix">
                            <span class="circle"><i class="i-tel"></i></span>
                            <div class="text">
                                <p>服务热线</p>
                                <p class="red number">4001-123-456</p>
                            </div>
                        </div>
                        <div class="d-service-intro clearfix">
                            <p><i></i>功能和特性</p>
                            <p><i></i>价格和优惠</p>
                            <p><i></i>获取内部资料</p>
                        </div>
                    </div>
                </div>
                <div class="d d-qrcode">
                    <i class="arrow"></i>
                    <div class="inner-box">
                        <div class="qrcode-img"><img src="../img/public_erweima.png" alt=""></div>
                        <p>微信服务号</p>
                    </div>
                </div>
        </div>
    </div>


    <div class="container">
        <div class="public_footer">
            <div class="split_line"></div>
            <div id="pub_er">
                <img src="../img/public_erweima.png">
            </div>
            <nav>
                <ul id="fot_nav">
                    <li><a href="Home.jsp">首页</a></li>
                    <li><a href="BridalVeil.jsp">西式婚纱</a></li>
                    <li><a href="ChidalVeil.jsp">中式婚纱</a></li>
                    <li><a href="CocktailDress.jsp">晚礼服</a></li>
                    <li><a href="Hanfu.jsp">汉服</a></li>
                    <li><a href="Reservation.jsp">私人订制</a></li>
                    <li><a href="Company.jsp">关于我们</a></li>
                </ul>
            </nav>
            <div class="address_copyright">
                中国·上海·杨浦区·宝源路F518时尚创意园13栋汇所<br>
                Copyright©2018 ly<br>
                <span class="phone">咨询热线：400-101-8123</span>
            </div>
        </div>
    </div>
</div>
</body>


<script type="text/javascript" src="../js/fishtail.js"></script>
<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
<script>
window.onload = function(){ 
   var url = window.location.search; //获取url中"?"符后的字串   
   var theRequest = new Object();  
 var name;
   if (url.indexOf("?") != -1) {   
      var str = url.substr(1);   
      strs = str.split("&");   
      for(var i = 0; i < strs.length; i ++) {   
          //就是这句的问题
        name= theRequest[strs[i].split("=")[0]]=decodeURI(strs[i].split("=")[1]); 
         // alert( theRequest[strs[i].split("=")[0]]=decodeURI(strs[i].split("=")[1]));
         //之前用了unescape()
         //才会出现乱码  
      }   
   }   
   $.ajax({
		async:true,
		url:"../get_Address",
		type:"post",
		data:{name:name},
		success:function(data){
	  	 var address = 	JSON.parse(data); 
	  	  for(var i=0;i<address.length;i++){
	  	  $("#showaddress").append("<div class=\"col-sm-3 col-xs-6 col-md-3\"> "
	  	         +" <div class=\"port-1 effect-3\">"
	  	          +" <div class=\"image-box\">"
	  	            +" <img  class=\"img-responsive\" src=\""+address[i].url+"\" alt=\"Image-1\"> "
	  	             +" </div> "
	  	             +" <div class=\"text-desc\"> "
	  	              +"    <p>"+address[i].dress_name+"</p> "
	  	               +"   <a href=\"BridalVeil_Detail.jsp?name="+address[i].dress_name+"&imgurl="+address[i].url+"&author="+address[i].author_name+" \" target=\"_blank\" class=\"btn\">Learn more</a>"
	  	             +" </div> "
	  	         +" </div>"
	  	     +" </div>");	 
	  	 } 
		}
 
  });
	
	} 


	 function chose(str){
		var ss = $(str).html();
		alert(ss);
		$("#showaddress").empty();
		 $.ajax({
				async:true,
				url:"../get_Address",
				type:"post",
				data:{name:ss},
				success:function(data){
			  	 var address = 	JSON.parse(data); 
			  	  for(var i=0;i<address.length;i++){
			  		 
			  	  $("#showaddress").append("<div class=\"col-sm-3 col-xs-6 col-md-3\"> "
			  	         +" <div class=\"port-1 effect-3\">"
			  	          +" <div class=\"image-box\">"
			  	            +" <img  class=\"img-responsive\" src=\""+address[i].url+"\" alt=\"Image-1\"> "
			  	             +" </div> "
			  	             +" <div class=\"text-desc\"> "
			  	              +"    <p>"+address[i].dress_name+"</p> "
			  	               +"   <a href=\"BridalVeil_Detail.jsp?name="+address[i].dress_name+"&imgurl="+address[i].url+"&author="+address[i].author_name+" \" target=\"_blank\" class=\"btn\">Learn more</a>"
			  	             +" </div> "
			  	         +" </div>"
			  	     +" </div>");	 
			  	 } 
				}
		 
		  });
		
		
	} 
    
  /*   $(document).ready(function(){ */
     	
    	
     	
        /* ----- 侧边悬浮 ---- */
         /*  $(document).on("mouseenter", ".suspension .a", function(){
            var _this = $(this);
            var s = $(".suspension");
            var isService = _this.hasClass("a-service");
            var isServicePhone = _this.hasClass("a-service-phone");
            var isQrcode = _this.hasClass("a-qrcode");
            if(isService){ s.find(".d-service").show().siblings(".d").hide();}
            if(isServicePhone){ s.find(".d-service-phone").show().siblings(".d").hide();}
            if(isQrcode){ s.find(".d-qrcode").show().siblings(".d").hide();}
        });
        $(document).on("mouseleave", ".suspension, .suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("mouseenter", ".suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("click", ".suspension .a-top", function(){
            $("html,body").animate({scrollTop: 0});
        });
        $(window).scroll(function(){
            var st = $(document).scrollTop();
            var $top = $(".suspension .a-top");
            if(st > 400){
                $top.css({display: 'block'});
            }else{
                if ($top.is(":visible")) {
                    $top.hide();
                }
            }
        });   */

   /*  }); */
    
    
</script>

</html>