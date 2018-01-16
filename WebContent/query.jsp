<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	
	
	.radio{
	float:left;
	
	}
	
	.singleoption{
	clear:both;
	
	}
</style>
<body>欢迎来到本次考试，请勿作弊！！

<!-- 动态创建div去显示题目选项 -->

<div id="contener">
			<div id="single">
				
			</div>
			
			<div id="multi">
			</div>
			
			<div id="completion">
			</div>
			
			<div id="recogniz">
			</div>
		</div>


</body>
<script type="text/javascript" src="/TestSystem/resources/js/jquery.js"></script>
<script type="text/javascript">
	$.ajax({
		url:"/TestSystem/papercreate/create",
		success:function(result){
			console.log(result);
			/* 生成单选与多选题 */
			for(var j=0;j<result.choicepaperlist.length;j++){
				var g=$("<div></div>");
				
				g.addClass("questions");
				if(result.choicepaperlist[j].choice.isMulti==1){
					$("#multi").append(g);
						
			
					var content = $("<div>"+result.choicepaperlist[j].choice.content+"<br>"+"</div>");
					content.addClass("content");
					g.append(content);
					
					
					
					/* 添加选项 */
					for(var i=0;i<result.choicepaperlist[j].optionz.length;i++){
						
						var singleoption =$("<div></div>");
						singleoption.addClass("singleoption");
						g.append(singleoption);
						
						var radio =$("<input type='radio' name='radiobutton' value='radiobutton' />");
						radio.addClass("radio");
						singleoption.append(radio);
						
						var op = $("<div>"+result.choicepaperlist[j].optionz[i].content+"</div>");
						op.addClass("option");
						singleoption.append(op);
					}
					
				}

				
				else{
					$("#single").append(g);
					var content = $("<div>"+result.choicepaperlist[j].choice.content+"</div>");
					content.addClass("content");
					g.append(content);
					
					for(var i=0;i<result.choicepaperlist[j].optionz.length;i++){
						var singleoption =$("<div></div>");
						singleoption.addClass("singleoption");
						g.append(singleoption);
						
						var radio =$("<input type='radio' name='radiobutton' value='radiobutton' />");
						radio.addClass("radio");
						singleoption.append(radio);
						
						var op = $("<div>"+result.choicepaperlist[j].optionz[i].content+"</div>");
						op.addClass("option");
						singleoption.append(op);
					}
				}
			}

			
			/* 生成填空题 */
			for(var i=0;i<result.completionset.length;i++){
				var cc = $("<div></div>");
				cc.addClass("completion");
				$("#completion").append(cc);
				
				var content = $("<div>"+result.completionset[i].content+"</div>");
				content.addClass("content");
				cc.append(content);
				
				var input = $("<input placeholder='请输入答案' type='text'/>");
				input.addClass("input");
				cc.append(input);
				
			}
			
			
			
			
			/* 生成判断题 */
			for(var i=0;i<result.recognizset.length;i++){
				var cc = $("<div></div>");
				cc.addClass("recogniz");
				$("#recogniz").append(cc);
				
				var content = $("<div>"+result.recognizset[i].content+"</div>");
				content.addClass(content);
				cc.append(content);
				
				var ss = new Array();
				ss.push("对");
				ss.push("错");
				for(var j=0;j<2;j++){
					var singleoption =$("<div></div>");
					singleoption.addClass("singleoption");
					cc.append(singleoption);
					 
					var radio =$("<input type='radio' name='radiobutton' value='radiobutton' />");
					radio.addClass("radio");
					singleoption.append(radio);
					
				    var op = $("<div>"+ss[j]+"</div>");
					op.addClass("option");
					singleoption.append(op);
				}
			}
			
			
		}
		
	});

</script>
</html>