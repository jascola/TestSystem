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
<title>addUser</title>
</head>
<body onLoad="Resize();">
<div id="right_ctn">
	<div class="right_m">
		<!--会议列表-->
        <div class="hy_list">
        	<div class="box_t">
            	<span class="name">新增学生</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="Assets/images/icon5.png" alt=""/></a>
                    <a href="main.jsp">首页</a>
                  
                </div>
                <!--当前位置-->
            </div>
            <div class="space_hx">&nbsp;</div>
            <!--终端列表-->
            <form action="/TestSystem/user/insert" method="get">
            <input type="hidden" name="identity" value="0">
            <div class="xjhy">
            <!--基本配置-->
                <ul class="hypz">
                    <li class="clearfix">
                        <span class="title">学生姓名：</span>
                        <div class="li_r">
                            <input type="text" name="userName">
                            <i>*</i>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span class="title">密码：</span>
                        <div class="li_r">
                            <input type="text" name="password">
                            <i>*</i>
                        </div>
                    </li>
                    
                    <li class="tj_btn">
                        <input type="reset" class="button white" value="重置">
                        <input type="submit" class="button blue" value="添加">
                    </li>
                </ul>
            <!--基本配置-->
            </div>
            </form>
            <!--终端列表-->
        </div>
        <!--会议列表-->
    </div>
</div>
</body>
</html>
