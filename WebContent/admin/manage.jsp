<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理页面</title>
<style>
	#content{
		position:absolute;
		top:50px;
		left:200px;
		width:500px;
		height:500px;
	}
</style>
</head>
<body>
<ul>
	<li>学生信息管理
		<ul>
			<li><a href="addUser.jsp">添加学生</a></li>
			<li><a href="queryUser.jsp">学生信息查询与修改</a></li>
		</ul>
	</li>
	<li>科目管理
		<ul>
			<li><a href="addSubject.jsp">添加科目</a></li>
			<li><a href="querySubject.jsp">科目查询与修改</a></li>
		</ul>
	</li>
	<li>题库管理
		<ul>
			<li><a href="addChoice.jsp">添加选择题</a></li>
			<li><a href="">添加填空题</a></li>
			<li><a href="">添加判断题</a></li>
			<li><a href="">题目查询与修改</a></li>
		</ul>
	</li>
	<li>成绩查询
		<ul>
			<li><a href="queryScore.jsp">学生成绩查询</a></li>
		</ul>
	</li>
</ul>
	<div id="content">
	
	</div>
</body>
<script type="text/javascript">
	
</script>

</html>