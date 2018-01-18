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
<title>addOptionz</title>
</head>
<body >
<div id="right_ctn">
	<div class="right_m">
        <div class="hy_list">
        	<div class="box_t">
            	<span class="name">新增选择题选项</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="/TestSystem/resources/images/icon5.png" alt=""/></a>
                    <a href="main.jsp">首页</a>
                  
                </div>
            </div>
            <div class="space_hx">&nbsp;</div>
            <!--终端列表-->
            <form id="form" action="/TestSystem/optionz/insert" method="get">
            <input type="hidden" name="choice.choiceId" value="${choice.choiceId}" id="ii"/>
            <div class="xjhy">
            <!--基本配置-->
                <ul class="hypz" id="opList">
                
                
                	<li class="tj_btn">
                   		<input  type="button" value="增加选项" class="button white" onClick="add()" />
                        <input type="reset" class="button white" value="重置">
                        <input type="button" class="button blue" value="全部添加" onClick="su()" >
                    </li>
                
                
                    <li class="clearfix">
                        <span class="title">选择题描述：</span>
                        <div class="li_r">
                            <span>${choice.content }</span>
                        </div>
                    </li>
                    
                    <li class="clearfix">
                        <span class="title">单/多选：</span>
                        <div class="li_r">
                        <c:if test="${choice.isMulti==1}">
    					<span>多选</span>
						</c:if>
                        <c:if test="${choice.isMulti==0}">
    					<span>单选</span>
						</c:if>
                        </div>
                    </li>
                    
                    <li class="clearfix">
                        <span class="title">选项描述：</span>
                        <div class="li_r">
                            <input type="text" name="content">
                            <i>*</i>
                        </div>
                    	<span>正确性：</span>
                        <div class="li_r">
                       <select name="isRight">
							<option value="0">错误选项</option>
							<option value="1">正确选项</option>
						</select>
                            <i>*</i>
                        </div>
                    </li>
                    

                    
                    
                </ul>
            </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">

	/* var count = 1; */
	
	function add(){
		var opList = document.getElementById("opList");
		
		var i1 = document.createElement("i");
		i1.innerHTML="*";
		
		var i2 = document.createElement("i");
		i2.innerHTML="*";
		
		var li = document.createElement("li");
		li.addClass="clearfix";
		
		var span1 = document.createElement("span");
		span1.setAttribute("class", "title"); 
		span1.innerHTML="选项描述：";
		
		var span2 = document.createElement("span");
		span2.innerHTML="正确性：";
		
		var div1 = document.createElement("div");
		div1.setAttribute("class", "li_r"); 
		
		var div2 = document.createElement("div");
		div2.setAttribute("class", "li_r"); 
		
		var input = document.createElement("input");
		input.type = "text";
		input.name = "content";
		
		var select = document.createElement("select");
		select.name="isRight";
		var op1=document.createElement("option");
		op1.text="错误选项";
		op1.value="0";
		var op2=document.createElement("option");
		op2.text="正确选项";
		op2.value="1";
		
		select.add(op1);
		select.add(op2);
		
		div1.appendChild(input);
		div1.appendChild(i1);
		div2.appendChild(select);
		div2.appendChild(i2);
		
		li.appendChild(span1);
		li.appendChild(div1);
		li.appendChild(span2);
		li.appendChild(div2);
		
		opList.appendChild(li);
		
	}
	
	
	/* function addElement(){
		
		 var Form1 = document.getElementById("opList");   
	    
	     Form1.method = 'post';
	 	Form1.action = ''; 
		
		/* var newInput1 = document.createElement("input");
		newInput1.type = "hidden";
		newInput1.name = "choice.choiceId";
		newInput1.value = "${choice.choiceId}"; 
		
		var newInput2 = document.createElement("input");
		newInput2.type = "text";
		newInput2.name = "content";
		
		var newInput3 = document.createElement("select");
		newInput3.name="isRight";
		var op1=document.createElement("option");
		op1.text="错误选项";
		op1.value="0";
		var op2=document.createElement("option");
		op2.text="正确选项";
		op2.value="1";
		
		newInput3.add(op1);
		newInput3.add(op2);
		
		var br = document.createElement("br");
		
		
		Form1.appendChild(newInput2);
		Form1.appendChild(newInput3);
		Form1.appendChild(br); 
		
		
		document.body.appendChild(Form1); 
	} */
	
	
	
	 function su(){
		 var inputs = document.getElementsByName("content");   
 		 var select=document.getElementsByName("isRight");  
 		 var id = document.getElementById("ii");   
 		 var inputarr= new Array();
 		 var selectarr =new Array();
 		var idd =id.value;
 		 for(var i=0;i<inputs.length;i++){
 			 inputarr.push(inputs[i].value);
 		 }
 		 for(var i=0;i<select.length;i++){
 			
 			var value = select[i].value; // 选中值
 			 selectarr.push(value);
 		 }
 		 
		 console.log(id);
		  $.ajax({
				url:"/TestSystem/optionz/insertlist",
				data:{
					"choiceId":idd,
					"questions":inputarr,
					"isRight":selectarr
					
				},
				dataType : "json",
				success:function(result){
					console.log(result);
				}
				
			}); 
		 
		 
	 }
	 
</script>
</html>
