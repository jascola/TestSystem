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
<title>queryScore</title>
</head>
<body>


	<form action="/TestSystem/score/query" method="get">

		用户名：<input type="text" name="userName"><br> 
		科目：<select id="subjectId" name="subject.subjectId">
			<option value="0">全部科目</option>
		</select><br>
		 <input type="submit" value="查询分数">
	</form>

	<table border="1px">
		<tr>
			<td colspan="5">query List</td>
		</tr>
		<tr>
			<th>用户ID</th>
			<th>用户名</th>
			<th>科目名称</th>
			<th>成绩</th>
			<th colspan="1">操作</th>
		</tr>

		<c:forEach items="${scores }" var="score">
			<tr>
				<td>${score.user.userId}</td>
				<td>${score.user.userName }</td>
				<td>${score.subject.subjectName }</td>
				<td>${score.score }</td>
				<td><button data-toggle="modal" data-target="#${score.scoreId}a"
						value="alter">修改</button></td>
			
			</tr>

			<!-- 	update的调用模态框 -->
			<div class="modal fade" id="${score.scoreId}a" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/score/update" method="get">
								<div class="form-group">
								<input type="hidden" name="scoreId" value="${score.scoreId}"/>
									<label for="id">用户id</label> <input type="text"
										class="form-control" name="user.userId" value="${score.user.userId}"
										readonly> <label for="name">用户名</label> <input
										type="text" class="form-control" name="user.userName"
										value="${score.user.userName}" readonly> <label for="subjectName">科目名称</label>
									<input type="text" class="form-control" name="subject.subjectName"
										value="${score.subject.subjectName }" readonly> <label for="score">成绩</label>
									<input type="text" class="form-control" name="score"
										value="${score.score}" >
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

			
		</c:forEach>
	</table>
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
                        $('#subjectId').append(
                                $('<option>').text(subject.subjectName).attr('value',
                                        subject.subjectId));
                       
                    });
                }
            });
        });

    </script>



</html>