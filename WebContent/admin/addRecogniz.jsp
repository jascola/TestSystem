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
<title>addRecogniz</title>
</head>
<body onLoad="Resize();">
<div id="right_ctn">
	<div class="right_m">
        <div class="hy_list">
        	<div class="box_t">
            	<span class="name">新增判断题</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="/TestSystem/resources/images/icon5.png" alt=""/></a>
                    <a href="main.jsp">首页</a>
                  
                </div>
            </div>
            <div class="space_hx">&nbsp;</div>
            <!--终端列表-->
            <form action="/TestSystem/recogniz/insert" method="get">
            <div class="xjhy">
            <!--基本配置-->
                <ul class="hypz">
                    <li class="clearfix">
                        <span class="title">科目名称：</span>
                        <div class="li_r">
                            <select id="subjectId" name="subject.subjectId"></select>
                            <i>*</i>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span class="title">判断题描述：</span>
                        <div class="li_r">
                            <input type="text" name="content">
                            <i>*</i>
                        </div>
                    </li>
                    
                    <li class="clearfix">
                        <span class="title">正确性：</span>
                        <div class="li_r">
                            <select name="answer">
								<option value="0">错误</option>
								<option value="1">正确</option>
							</select>
                            <i>*</i>
                        </div>
                    </li>
                    
                    <li class="tj_btn">
                        <input type="reset" class="button white" value="重置">
                        <input type="submit" class="button blue" value="添加">
                    </li>
                </ul>
            </div>
            </form>
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
