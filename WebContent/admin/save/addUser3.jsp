<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addUser</title>
</head>
<body>
	<form action="/TestSystem/user/insert" method="get">
		用戶名：<input type="text" name="userName">
		密码：<input type="text" name="password">
		<input type="hidden" name="identity" value="0">
		<input type="submit" value="添加">
	</form>
</body>
</html>