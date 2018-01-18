<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/TestSystem/resources/js/jquery.js"></script>
<style type="text/css">
	.subject{
		float:left;
		margin-right:10px;
		width:254px;
		height: 240px;
		background-color: #FFFFCC;
	}
	.subject .subname{
		font-size: 30px;
		text-decoration: none;
		float:right;
	}
	
	.subject .subimg{
		padding-left:2px;
	}
</style>
</head>
<body>
<div id="contener">


</div>

</body>
<script>
$(document).ready(function(){
    $.ajax({
        contentType : "application/json;charset=utf-8",
        type : "POST",
        url : "/TestSystem/subject/querySub",
        dataType : "json",
        success : function(data) {
            $.each(data, function(i, subject) {	
            	var div = $("<div id='"+subject.subjectId+ " '></div>");
            	div.addClass("subject");
            	$("#contener").append(div);
            	
            
            	
            	var di = $("<image src='/TestSystem/resources/images/test.jpg' width='250px' height='200px' />");
            	div.append(di);
            	var dii =$("<a href='/TestSystem/papercreate/requestpaper?subjectId=" +subject.subjectId + "  '>"+"进入"+subject.subjectName+ "考试</a>")
            	div.append(dii);
 
            });
        }
    });
});


</script>

</html>

