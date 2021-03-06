<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/TestSystem/resources/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/TestSystem/resources/css/common.css"/>
<link rel="stylesheet" type="text/css" href="/TestSystem/resources/css/thems.css">
<link rel="stylesheet" type="text/css" href="/TestSystem/resources/css/mycss.css">
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	//自适应屏幕宽度
	window.onresize=function(){ location=location }; 
	
	var main_h = $(window).height();
	$('.hy_list').css('height',main_h-45+'px');
	
	var search_w = $(window).width()-40;
	$('.search').css('width',search_w+'px');
	//$('.list_hy').css('width',search_w+'px');
});
</script>
<title>queryCompletion</title>
</head>
<body onLoad="Resize();">
<div id="right_ctn">
	<div class="right_m">
        <div class="hy_list">
        	<div class="box_t">
        	
            	<span class="name">填空题查询</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="/TestSystem/resources/images/icon5.png" alt=""/></a>
                    <a href="">首页</a>
                    
                </div>
                <!--当前位置-->
            </div>
            <!--查询-->
            <div class="search">
            	<form action="/TestSystem/completion/query" method="get">
            	<span>题目关键字：</span>
                <div class="s_text"><input type="text" name="content"></div>
                <span>科目：</span>
                <div class="s_text">
                <select id="subjectId" name="subject.subjectId">
					<option value="0">全部科目</option>
				</select></div>
                <input type="submit" class="button blue" value="查询">
                </form>
            </div>

            <div class="space_hx">&nbsp;</div>
            
            <table cellpadding="0" cellspacing="0" class="list_hy">
              <tr>
                <th scope="col">题目ID</th>
                <th scope="col">科目名称</th>
                <th scope="col">题目内容</th>
                <th scope="col">题目答案</th>
                <th scope="col" colspan="2">操作</th>
              </tr>
             <c:forEach items="${completions }" var="c">
			<tr>
				<td>${c.completionId}</td>
				<td>${c.subject.subjectName}</td>
				<td>${c.content}</td>
				<td>${c.answer}</td>
				<td class="width_small"><button data-toggle="modal" class="button blue" data-target="#${c.completionId}a"
						value="alter">修改</button>
				<button data-toggle="modal" class="button red" data-target="#${c.completionId}d"
						value="delete">删除</button></td>
			</tr>
			
			<!-- 	update的调用模态框 -->
			<div class="modal fade" id="${c.completionId}a" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/completion/update" method="get">
								<div class="form-group">
								<label for="completionId">题目ID</label>
								<input type="text" name="completionId" class="form-control" value="${c.completionId}" readonly/>
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
			<div class="modal fade" id="${c.completionId}d" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">确认删除</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/completion/delete" method="get">
								<div class="form-group">
									<input type="hidden" class="form-control" name="id"
										value="${c.completionId}"> <label>确定要删除此条记录吗？</label>
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
        </div>
    </div>
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
                        $('#subjectId').append(
                                $('<option>').text(subject.subjectName).attr('value',
                                        subject.subjectId));
                       
                    });
                }
            });
        });

    </script>
</html>