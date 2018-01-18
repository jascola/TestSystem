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
<title>queryRecogniz</title>
</head>
<body>
	<form action="/TestSystem/recogniz/query" method="get">

		关键字：<input type="text" name="content"><br> 
		科目：<select id="subjectId" name="subject.subjectId">
			<option value="0">全部科目</option>
		</select><br>
		 <input type="submit" value="判断题查询">
	</form>

	<table border="1px">
		<tr>
			<td colspan="6">query List</td>
		</tr>
		<tr>
			<th>题目ID</th>
			<th>科目名称</th>
			<th>题目内容</th>
			<th>题目答案</th>
			<th colspan="2">操作</th>
		</tr>

		<c:forEach items="${recognizs }" var="c">
			<tr>
				<td>${c.recognizId}</td>
				<td>${c.subject.subjectName}</td>
				<td>${c.content}</td>
				<td>${c.answer}</td>
				<td><button data-toggle="modal" data-target="#${c.recognizId}a"
						value="alter">修改题目</button></td>
				<td><button data-toggle="modal" data-target="#${c.recognizId}d"
						value="alter">删除题目</button></td>
			</tr>

			<!-- 	update的调用模态框 -->
			<div class="modal fade" id="${c.recognizId}a" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/recogniz/update" method="get">
								<div class="form-group">
								<label for="completionId">题目ID</label>
								<input type="text" name="recognizId" class="form-control" value="${c.recognizId}" readonly/>
							 <%--  <input type="hidden" name="subject" value="${c.subject}"> --%>
									<label for="content">题目内容</label> <input
										type="text" class="form-control" name="content"
										value="${c.content}"> 
									<label for="answer">题目答案</label> <input
										type="text" class="form-control" name="answer"
										value="${c.answer}"> 
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
			<div class="modal fade" id="${c.recognizId}d" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">确认删除</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/recogniz/delete" method="get">
								<div class="form-group">
									<input type="hidden" class="form-control" name="id"
										value="${c.recognizId}"> <label>确定要删除此条记录吗？</label>
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