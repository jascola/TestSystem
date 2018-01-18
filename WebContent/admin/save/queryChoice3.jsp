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
<title>queryChoice</title>
</head>
<body>
	<form action="/TestSystem/choice/query" method="get">

		关键字：<input type="text" name="content"><br> 
		科目：<select id="subjectId" name="subjectId">
			<option value="0">全部科目</option>
		</select><br>
		 <input type="submit" value="选择题查询">
	</form>

	<table border="1px">
		<tr>
			<td colspan="6">query List</td>
		</tr>
		<tr>
			<th>题目ID</th>
			<th>科目名称</th>
			<th>题目内容</th>
			<th>是否多选</th>
			<th colspan="2">操作</th>
		</tr>

		<c:forEach items="${choices }" var="c">
			<tr>
				<td>${c.choiceId}</td>
				<td>${c.subject.subjectName}</td>
				<td>${c.content}</td>
				<td>${c.isMulti }</td>
				
				<td><button data-toggle="modal" data-target="#${c.choiceId}a"
						value="alter">修改题目</button></td>
				<td><button data-toggle="modal" data-target="#${c.choiceId}b"
						value="alter" onclick="getOptionzs()">修改选项</button></td>
			</tr>

			<!-- 	update的调用模态框 -->
			<div class="modal fade" id="${c.choiceId}a" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/choice/update" method="get">
								<div class="form-group">
								<input type="hidden" name="choiceId" value="${c.choiceId}"/>
								<input type="hidden" name="subjectId" value="${c.subject.subjectId}">
									<label for="name">题目内容</label> <input
										type="text" class="form-control" name="content"
										value="${c.content}"> 
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
			
			
			<div class="modal fade" id="${c.choiceId}b" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/choice/update" method="get">
								<div class="form-group" id="${c.choiceId}b">		
									<label for="name">题目内容</label>
									
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
        
        
        function getOptionzs(){
        	 $.ajax({
                 contentType : "application/json;charset=utf-8",
                 data:{"id":1},
                 type : "GET",
                 url : "/TestSystem/optionz/queryByChoiceId",
                 dataType : "json",
                 success : function(data) {
                	 console.log(data);
                     $.each(data, function(i, optionz) {
                    	 
                         $('#${c.choiceId}b').append(
                                 /* $('<input>').attr('value',optionz.content)); */
                        $("<input type='text' name='optionzId' value='"+optionz.optionzId+"'/>"))
                     });
                 }
             });
        }

    </script>



</html>