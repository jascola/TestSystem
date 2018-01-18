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
<title>queryScore</title>
</head>
<body onLoad="Resize();">
<div id="right_ctn">
	<div class="right_m">
        <div class="hy_list">
        	<div class="box_t">
        	
            	<span class="name">成绩查询</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="/TestSystem/resources/images/icon5.png" alt=""/></a>
                    <a href="">首页</a>
                    
                </div>
                <!--当前位置-->
            </div>
            <!--查询-->
            <div class="search">
            	<form action="/TestSystem/score/querystu" method="get">
                <input type="hidden" name="userId" value="1">
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
                <th scope="col">用户ID</th>
                <th scope="col">用户姓名</th>
                <th scope="col">科目名称</th>
                <th scope="col">成绩</th>
                <th scope="col" colspan="1">操作</th>
              </tr>
             <c:forEach items="${scores }" var="score">
			<tr>
				<td>${score.user.userId}</td>
				<td>${score.user.userName }</td>
				<td>${score.subject.subjectName }</td>
				<td>${score.score }</td>
				<td class="width_small"><button data-toggle="modal" class="button blue" data-target="#${score.scoreId}a"
						value="alter">修改</button>
				</td>
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