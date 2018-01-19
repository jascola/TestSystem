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
<title>querySubject</title>
</head>
<body onLoad="Resize();">
<div id="right_ctn">
	<div class="right_m">
		<!--会议列表-->
        <div class="hy_list">
        	<div class="box_t">
        	
            	<span class="name">科目信息查询</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="/TestSystem/resources/images/icon5.png" alt=""/></a>
                    <a href="">首页</a>
                    
                </div>
                <!--当前位置-->
            </div>
            <!--查询-->
            <div class="search">
            	<form action="/TestSystem/subject/queryByName" method="get">
            	<span>科目名称：</span>
                <div class="s_text"><input type="text" name="subjectName"></div>
                
                <input type="submit" class="button blue" value="查询">
                </form>
            </div>

            <div class="space_hx">&nbsp;</div>
            
            <table cellpadding="0" cellspacing="0" class="list_hy">
              <tr>
                <th scope="col">科目ID</th>
                <th scope="col">科目名称</th>
                <th scope="col" colspan="1">操作</th>
              </tr>
             <c:forEach items="${subjectN}" var="p1">
			<tr>
				<td>${p1.subjectId}</td>
				<td>${p1.subjectName}</td>

				<td class="width_small"><button data-toggle="modal" class="button blue" data-target="#${p1.subjectId}a"
						value="alter">修改</button>
				<button data-toggle="modal" class="button red" data-target="#${p1.subjectId}d"
						value="delete">删除</button></td>
			</tr>
			
			<!-- 	update的调用模态框 -->
			<div class="modal fade" id="${p1.subjectId}a" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/subject/update" method="get">
								<div class="form-group">
									<label for="id">科目id</label> <input type="text"
										class="form-control" name="subjectId" value="${p1.subjectId}"
										readonly> <label for="name">科目名称</label> <input
										type="text" class="form-control" name="subjectName"
										value="${p1.subjectName}"> 
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
			<div class="modal fade" id="${p1.subjectId}d" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">确认删除</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="/TestSystem/subject/delete" method="get">
								<div class="form-group">
									<input type="hidden" class="form-control" name="id"
										value="${p1.subjectId}"> <label>确定要删除此条记录吗？</label>
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
</html>