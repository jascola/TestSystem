<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	<form action="/TestSystem/user/queryAll" method="get">
		<input type="submit" value="查询All">
	</form> -->

	<table border="1px">
		<tr>
			<td colspan="4">queryAll List</td>
		</tr>
		<tr>
			<th>用户ID</th>
			<th>用户名</th>
			<th>密码</th>
			<th>身份</th>
			<th colspan="2">操作</th>
		</tr>

		<c:forEach items="${users }" var="p">
			<tr>
				<td>${p.userId}</td>
				<td>${p.userName }</td>
				<td>${p.password }</td>
				<td>${p.identity }</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	
	<table border="1px">
		<tr>
			<td colspan="4">queryById List</td>
		</tr>
		<tr>
			<th>用户ID</th>
			<th>用户名</th>
			<th>密码</th>
			<th>身份</th>
			<th colspan="2">操作</th>
		</tr>
		
			<tr>
				<td>${user.userId }</td>
				<td>${user.userName }</td>
				<td>${user.password }</td>
				<td>${user.identity }</td>
			</tr>
	</table>

</body>
</html>