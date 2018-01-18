<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线考试系统登录页面</title>
<link href="/TestSystem/resources/login/css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/TestSystem/resources/login/js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
</head>
<body>
<div class="message warning">
	<div class="inset">
		<div class="login-head">
			<h1>用户登录</h1>
			<div class="alert-close"></div> 			
		</div>
		
		<form action="/TestSystem/user/userlogin" method="get">
			<ul>
				<li><input type="text" class="text" name="userName" value="用户名" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}"><a href="#" class=" icon user"></a></li>
				<li><input type="password" name="password" value="" /> <a href="#" class="icon lock"></a></li>
				<li><input type="radio" name="identity" value="0"/><label>学生</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="identity" value="1"/><label>管理员</label></li>
			</ul>
			
			<div class="submit">
				<input type="submit"  value="登录" >
				<h4><a href="#">忘记密码?</a></h4>
				<div class="clear">  </div>	
			</div>
		</form>
	</div>					
</div>

<!--- footer --->
<div class="footer">
	${msg}
</div>

<div style="text-align:center;">

</div>
</body>
</html>