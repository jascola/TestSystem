<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线考试系统 - 学生模式</title>

<link rel="stylesheet" href="/TestSystem/resources/css/index.css" type="text/css" media="screen" />

<script type="text/javascript" src="/TestSystem/resources/js2/jquery.min.js"></script>
<script type="text/javascript" src="/TestSystem/resources/js2/tendina.min.js"></script>
<script type="text/javascript" src="/TestSystem/resources/js2/common.js"></script>

</head>
<body>
    <!--顶部-->
    <div class="layout_top_header">
            <div style="float: left"><span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">在线考试系统</h1></span></div>
            <div id="ad_setting" class="ad_setting">
                <a class="ad_setting_a" href="javascript:; ">
                    <i class="icon-user glyph-icon" style="font-size: 20px"></i>
                    <span>我的主页</span>
                    <i class="icon-chevron-down glyph-icon"></i>
                </a>
                <ul class="dropdown-menu-uu" style="display: none" id="ad_setting_ul">
                    <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-user glyph-icon"></i> 个人中心 </a> </li>
                    <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-cog glyph-icon"></i> 设置 </a> </li>
                    <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-signout glyph-icon"></i> <span class="font-bold">退出</span> </a> </li>
                </ul>
            </div>
    </div>
    <!--顶部结束-->
    <!--菜单-->
    <div class="layout_left_menu">
        <ul id="menu">
            <li class="childUlLi">
               <a href="index.jsp"><i class="glyph-icon icon-home"></i>首页</a>
                
            </li>
            <li class="childUlLi">
                <a href="user.html"  target="menuFrame"> <i class="glyph-icon icon-reorder"></i>我的考试</a>
                <ul>
                    <li><a href="myexam.jsp"  target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>在线考试</a></li>

                </ul>
            </li>

             <li class="childUlLi">
                <a href="role.html" target="menuFrame" > <i class="glyph-icon icon-reorder"></i>成绩查询</a>
                <ul>
                    <li><a href="queryScore.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>成绩</a></li>   
                </ul>
            </li>
            
        </ul>
    </div>
    <!--菜单-->
    <div id="layout_right_content" class="layout_right_content">

      
        <div class="mian_content">
            <div id="page_content">
                <iframe id="menuFrame" name="menuFrame" src="main.jsp" style="overflow:visible;"
                        scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>
    <div class="layout_footer">
        <p>华中师范大学-计算机学院-2014级</p>
    </div>
</body>
</html>