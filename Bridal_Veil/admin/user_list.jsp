<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>客户列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="../css/bootstrap.css"/> 
   <style> 
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 25%; 
            left: 25%; 
            width: 55%; 
            height: 55%; 
            padding: 20px; 
            border: 10px solid green; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
    </style> 

<script type="text/javascript" src="js/jquery-3.2.1.js" ></script>
</head>
<body>
<div class="container-fluid">

	




	<jsp:include page="header.jsp"></jsp:include>

	<div class="text-right"><a class="btn btn-warning" href="user_add.jsp">添加客户</a></div>
	<c:if test="${!empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	<c:if test="${!empty failMsg }">
		<div class="alert alert-danger">${failMsg }</div>
	</c:if>
	<br>
	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">用户名</th>
		<th width="10%">邮箱</th>
		<th width="10%">收件人</th>
		<th width="10%">电话</th>
		<th width="5%">生日</th>
		<th width="5%">性别</th>
		<th width="12%">操作</th>
	</tr>


		<c:forEach items="${userMsg }" var="u">
			<tr>
				<td><p>${u.user_id }</p></td>
				<td><p>${u.username }</p></td>
				<td><p>${u.email }</p></td>
				<td><p>${u.user_name }</p></td>
				<td><p>${u.userphone }</p></td>
				<td><p>${u.birthday }</p></td>
				<td><p>${u.sex }</p></td>
				<td>
					<a class="btn btn-info" href="/admin/user_reset.jsp?id=${u.user_id }&username=${u.username }&email=${u.email }">重置密码</a>
					<a class="btn btn-primary" href="/admin/user_editshow?id=${u.user_id }">修改</a>
					<a class="btn btn-danger" href="${pageContext.request.contextPath }/admin/user_delete?id=${u.user_id }">删除</a>
				</td>
			</tr>
		</c:forEach>
     
     
</table>

<br>
	<%-- <jsp:include page="/page.jsp">
		<jsp:param value="/admin/user_list" name="url"/>
	</jsp:include> --%>
<br>
</div>
<div class="text-right"  ><a style="background-color: green;border-color: green;"   class="btn btn-warning" href = "JavaScript:void(0)" onclick = "openDialog()">导入Excell</a>&nbsp&nbsp<a style="background-color: green;border-color: green;" class="btn btn-warning" href="../admin_Excell_Export">导出为Excell</a></div>
             
        <div id="light" class="white_content">
            <form id="uploadForm" target="frameFile" class="bs-docs-example form-horizontal" method="post" action="../admin_Excell_Import"  enctype="multipart/form-data">
                
                 <input type="hidden" name="method" value="insertUserInfo">
                 <table cellpadding="0" cellspacing="0" border="0" style="width:600px;margin:20px auto;text-algin:left;">
                  <tr><td colspan="4"><input id="dyId" type="hidden"/></td></tr>
                  <tr><td colspan="3"><a href="../admin/file/userInfoModel.xls" id="downloadModel" name="downloadModel" style="margin-left:7px;"><u>点击下载人员模板</u></a></td></tr>
                  <tr><td colspan="4"><br/></td></tr>
                  <tr><td colspan="3"><input id="files" name="files" type="file" style="width:200px;"/></td></tr><!-- background:url('/center/images/uploadImg.png') no-repeat 0px 10px; -->
                <tr><td colspan="4"><br/></td></tr>
                <tr>
                     <td colspan="4" style="text-align: center;">
                     <hr style="width:720px;border-width: 0.3px;margin-left:-10px;">
                         <button id="tiJiao" type="submit" class="czbtn" style="width:100px;font-size: 16px;">导入</button>
                     </td>
                 </tr>
                 </table>
             </form>
            <a href = "javascript:void(0)" onclick = "closeDialog()">点这里关闭本窗口</a>
        </div> 
        <div id="fade" class="black_overlay"></div> 
        
        
             <!-- <button class="btn">Click me</button>
			<div class="dialog" align="center">我是浮动的窗口</div> -->
			
			
			
            <script type="text/javascript">
             $("#tiJiao").click(function(){
                if($("#files").val() == ""){
                    alert("请选择要上传的文件");
                }else{
                    CommonPerson.Base.LoadingPic.FullScreenShow();
                    $("#tkDiv").hide();
                     $("#tk1").hide();
                    $("#uploadForm").submit();    
                }
            }) 
            
            $(function(){
            })
            function openDialog(){
                document.getElementById('light').style.display='block';
                document.getElementById('fade').style.display='block'
            }
            function closeDialog(){
                document.getElementById('light').style.display='none';
                document.getElementById('fade').style.display='none'
            }
            
            
          /*   $(".btn").click(function(){
			$(".dialog").show(100)
			}) */
            
            </script>
             
</body>
</html>