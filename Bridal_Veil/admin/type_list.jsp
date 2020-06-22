<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>类目列表</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

	<jsp:include page="/admin/header.jsp"></jsp:include>

	<br>

	<!-- <div>
		<form class="form-inline" method="post" action="/admin/type_add">
			<input type="text" class="form-control" id="input_name" name="name" placeholder="输入类目名称" required="required" style="width: 500px">
			<input type="submit" class="btn btn-warning" value="添加类目"/>
		</form>
	</div> -->
	<br/>
	<c:if test="${!empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	<c:if test="${!empty failMsg }">
		<div class="alert alert-danger">${failMsg }</div>
	</c:if>
	<br>

	<table class="table table-bordered table-hover">

		<tr>
			<th width="5%">姓名</th>
			<th width="10%">预约电话</th>
			<th width="5%">预约城市</th>
			<th width="15%">预约门店</th>
			<th width="10%">预约主题</th>
			<th width="10%">预约设计师</th>
			<th width="30%">其他要求</th>
			<th width="10%">操作</th>
		</tr>

		<c:forEach items="${allReservation }" var="t">
			<tr>
				<td><p>${t.order_name }</p></td>
				<td><p>${t.order_phone }</p></td>
				<td><p>${t.order_city }</p></td>
				<td><p>${t.order_site }</p></td>
				<td><p>${t.order_subject }</p></td>
				<td><p>${t.order_author }</p></td>
				<td><p>${t.order_remark }</p></td>
				<td>
					<a class="btn btn-primary" href="/admin/type_edit.jsp?id=${t.order_name }&name=${t.order_phone }">联系</a>
					<a class="btn btn-danger" href="/admin/type_delete?id=${t.order_name }">删除</a>
				</td>
			</tr>
		</c:forEach>


	</table>

</div>
</body>
</html>