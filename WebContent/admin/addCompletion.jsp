<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addCompletion</title>
</head>
<body>
	<form action="/TestSystem/completion/insert" method="get">
		科目名称：<select id="subjectId" name="subject.subjectId"></select><br>
		填空题描述：<input type="text" name="content"><br>
		标准答案：<input type="text" name="answer">
		<input type="submit" value="添加">
	</form>
</body>
<script type="text/javascript" src="/TestSystem/resources/js/jquery.js"></script>
<script>

        $(document).ready(function(){
            $.ajax({
                contentType : "application/json;charset=utf-8",
                type : "POST",
                url : "/TestSystem/subject/querySub",
                dataType : "json",
                success : function(data) {
                    $.each(data, function(i, subject) {
                        $('#subjectId').append(
                                $('<option>').text(subject.subjectName).attr('value',
                                        subject.subjectId));
                    });
                }
            });
        });

    </script>
</html>