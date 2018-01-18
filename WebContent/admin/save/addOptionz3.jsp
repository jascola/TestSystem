<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addOptionz</title>
</head>
<body>
	<form id="form" action="/TestSystem/optionz/insert" method="get">
		
		<input type="hidden" name="choice.choiceId" value="${choice.choiceId}" id="ii"/>
		题目id:${choice.choiceId }<br>
		题目：${choice.content }<br>
		选项描述：&nbsp;正确性：<br>
		<input type="text" name="content">
		<select name="isRight">
						<option value="0">错误选项</option>
						<option value="1">正确选项</option>
					</select>
		<input  type="button" value="增加选项" onClick="addElement()" />
		<input type="button" value="全部添加" onClick="su()"><br>
	</form>
</body>
<script type="text/javascript" src="/TestSystem/resources/js/jquery.js"></script>
<script type="text/javascript">

	/* var count = 1; */
	
	function addElement(){
		
		 var Form1 = document.getElementById("form");   
	    
	    /* Form1.method = 'post';
	 	Form1.action = ''; */
		
		/* var newInput1 = document.createElement("input");
		newInput1.type = "hidden";
		newInput1.name = "choice.choiceId";
		newInput1.value = "${choice.choiceId}"; */
		
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
		
		
		/* document.body.appendChild(Form1); */
	}
	
	
	
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
