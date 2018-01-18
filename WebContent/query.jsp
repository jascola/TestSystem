<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	
	
	.radio{
	float:left;
	
	}
	
	.singleoption{
	clear:both;
	
	}
</style>

<body>欢迎来到本次考试，请勿作弊！！
<h1 id="tit" ></h1>
<!-- 动态创建div去显示题目选项 -->

<div id="contener">

			<div id="single">
			一、单选题
				
			</div>
			二、多选题
			<div id="multi">
			</div>
			
			<div id="completion">
			三、填空题
			</div>
			
			<div id="recogniz">
			四、判断题
			</div>
		</div>
<input  type="button" value="提交试卷" onClick="fu()"/>

</body>
<script type="text/javascript" src="/TestSystem/resources/js/jquery.js"></script>
<script type="text/javascript" src="/TestSystem/resources/js/papersubmit.js"></script>
<script type="text/javascript">
	
</script>


</html>