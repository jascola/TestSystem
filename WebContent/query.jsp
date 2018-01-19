<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/TestSystem/resources/css/mycss.css" type="text/css"  />
<link rel="stylesheet" href="/TestSystem/resources/css/query.css" type="text/css" media="screen" />
<body>
<!-- 动态创建div去显示题目选项 -->
<input type="hidden" id="go" value="${sessionScope.testsub}"/>


<div id="contener">

  欢迎来到本次考试，请勿作弊！！
  <h1 id="tit" ></h1>
			<div id="single">
			一、单选题	</div>
			<div class="konghang"></div>
			<div id="multi">
			二、多选题
			</div>
			<div class="konghang"></div>
			<div id="completion">
			三、填空题
			</div>
			<div class="konghang"></div>
			<div id="recogniz">
			四、判断题
			</div>
			<input  type="button" class="button blue button_l" value="提交试卷" onClick="fu()"/>
		</div>


</body>
<script type="text/javascript" src="/TestSystem/resources/js/jquery.js"></script>
<script type="text/javascript" src="/TestSystem/resources/js/papersubmit.js"></script>


<script type="text/javascript">
	
</script>


</html>