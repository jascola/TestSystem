<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>queryUser</title>
</head>
<body>
	<form action="/TestSystem/user/query" method="get">
		用户名：<input type="text" name="userName"><br> 权限：<input
			type="text" name="identity"> <input type="submit" value="查找">
	</form>

	<table border="1px">
		<tr>
			<td colspan="4">query List</td>
		</tr>
		<tr>
			<th>用户ID</th>
			<th>用户名</th>
			<th>密码</th>
			<th>身份</th>
			<th colspan="2">操作</th>
		</tr>

		<c:forEach items="${users1 }" var="p1">
			<tr>
				<td>${p1.userId}</td>
				<td>${p1.userName }</td>
				<td>${p1.password }</td>
				<td>${p1.identity }</td>
				<td><button data-toggle="modal" data-target="#${p1.userId}a"
						value="alter">修改</button></td>
				<td><button data-toggle="modal" data-target="#${p1.userId}d"
						value="delete">删除</button></td>
			</tr>

			<!-- 	update的调用模态框 -->
			<div class="modal fade" id="${p1.userId}a" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/user/update" method="get">
								<div class="form-group">
									<label for="id">用户id</label> <input type="text"
										class="form-control" name="userId" value="${p1.userId}"
										readonly> <label for="name">用户名</label> <input
										type="text" class="form-control" name="userName"
										value="${p1.userName}"> <label for="password">密码</label>
									<input type="text" class="form-control" name="password"
										value="${p1.password}"> <label for="identity">权限</label>
									<input type="text" class="form-control" name="identity"
										value="${p1.identity}">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="submit" class="btn btn-primary">提交更改</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!--       delete的调用模态框   -->
			<div class="modal fade" id="${p1.userId}d" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">确认删除</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/user/delete" method="get">
								<div class="form-group">
									<input type="hidden" class="form-control" name="id"
										value="${p1.userId}"> <label>确定要删除此条记录吗？</label>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="submit" class="btn btn-danger">确定删除</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</table>
</body>
</html>