<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线考试系统管理后台 - 管理员模式</title>

<link rel="stylesheet" href="/TestSystem/resources/css/index.css" type="text/css" media="screen" />

<script type="text/javascript" src="/TestSystem/resources/js2/jquery.min.js"></script>
<script type="text/javascript" src="/TestSystem/resources/js2/tendina.min.js"></script>
<script type="text/javascript" src="/TestSystem/resources/js2/common.js"></script>

</head>
<body>
    <!--顶部-->
    <div class="layout_top_header">
            <div style="float: left"><span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">在线考试系统管理后台</h1></span></div>
            <div id="ad_setting" class="ad_setting">
                <a class="ad_setting_a" href="javascript:; ">
                    <i class="icon-user glyph-icon" style="font-size: 20px"></i>
                    <span>管理员</span>
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
                <a href="user.html"  target="menuFrame"> <i class="glyph-icon icon-reorder"></i>学生信息管理</a>
                <ul>
                    <li><a href="addUser.jsp"  target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>新增学生</a></li>
                    <li><a href="queryUser.jsp"  target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>学生信息查询与修改</a></li>
                    
                </ul>
            </li>
            <li class="childUlLi">
                <a href="role.html" target="menuFrame"> <i class="glyph-icon icon-reorder"></i>科目管理</a>
                <ul>
                    <li><a href="addSubject.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>添加科目</a></li>
                    <li><a href="querySubject.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>科目查询与修改</a></li>
                </ul>
            </li>
            
              <li class="childUlLi">
                <a href="role.html" target="menuFrame"> <i class="glyph-icon icon-reorder"></i>题库管理</a>
                <ul>
                    <li><a href="addChoice.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>添加选择题</a></li>
                    <li><a href="addCompletion.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>添加填空题</a></li>
                    <li><a href="addRecogniz.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>添加判断题</a></li>
                    <li><a href="queryChoice.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>选择题查询与修改</a></li>
                    <li><a href="queryCompletion.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>填空题查询与修改</a></li>
                    <li><a href="queryRecogniz.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>判断题查询与修改</a></li>
                </ul>
            </li>
            
             <li class="childUlLi">
                <a href="role.html" target="menuFrame" > <i class="glyph-icon icon-reorder"></i>成绩查询</a>
                <ul>
                    <li><a href="queryScore.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>学生成绩查询与修改</a></li>
                    
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
        <p>Copyright © 2014 - XXXX科技</p>
    </div>
</body>
</html>