var su = new Object();
var sub = $("#go").val();
$.ajax({
		url:"/TestSystem/papercreate/create?subjectId="+sub ,
		
		success:function(result){
			console.log(result);
			$("#tit").html(result.subject.subjectName);
			su = result.subject;
			var count=1;var mu =6;var sing=1;
			/* 生成单选与多选题 */
			for(var j=0;j<result.choicepaperlist.length;j++){
				var g=$("<div></div>");
				g.addClass("questions");
				
				
				
				if(result.choicepaperlist[j].choice.isMulti==1){
					
					$("#multi").append(g);
					/*添加空行*/
					
					var konghang = $("<div></div>");
					konghang.addClass("konghang");
					$("#multi").append(konghang);
					
					
					var content = $("<div>"+mu.toString()+"." +result.choicepaperlist[j].choice.content+
							"<br>"+"</div>");
					content.addClass("content");
					g.append(content);
					
					/* 存题号 */
					var newInput1 = document.createElement("input");
					newInput1.type = "hidden";
					newInput1.name = "multiId";
					newInput1.value = result.choicepaperlist[j].choice.choiceId+"&"+result.choicepaperlist[j].optionz.length;
					g.append(newInput1);
					
					
					/* 添加选项 */
					for(var i=0;i<result.choicepaperlist[j].optionz.length;i++){
						
						var singleoption =$("<div></div>");
						singleoption.addClass("singleoption");
						g.append(singleoption);
						var str=result.choicepaperlist[j].choice.choiceId+"jdbk"+i.toString();
						var radio =$("<input type='radio' name='"+
								str+"' value='"+result.choicepaperlist[j].optionz[i].optionzId+"' />");
						radio.addClass("radio");
						singleoption.append(radio);
						
						var op = $("<div>"+result.choicepaperlist[j].optionz[i].content+"</div>");
						op.addClass("option");
						singleoption.append(op);
						
					}
					count++;
					mu++;
				}

				/* 单选 */
				else{
					$("#single").append(g);
					/*添加空行*/
					
					var konghang = $("<div></div>");
					konghang.addClass("konghang");
					$("#single").append(konghang);
					
					var content = $("<div>"+sing.toString()+"." +result.choicepaperlist[j].choice.content+"</div>");
					content.addClass("content");
					g.append(content);
					/* 存题号 */
					var newInput1 = document.createElement("input");
					newInput1.type = "hidden";
					newInput1.name = "singleId";
					newInput1.value = result.choicepaperlist[j].choice.choiceId;
					g.append(newInput1);
					
					for(var i=0;i<result.choicepaperlist[j].optionz.length;i++){
						var singleoption =$("<div></div>");
						singleoption.addClass("singleoption");
						g.append(singleoption);
				
						/* 用j来做radio的name value中存的是选项号*/
						/* 根据题号，和选项号得到答案 */
				
						var radio =$("<input type='radio' name='"+result.choicepaperlist[j].choice.choiceId+"' value='"+
								result.choicepaperlist[j].optionz[i].optionzId+"' />");
						radio.addClass("radio");
						singleoption.append(radio);
						
						var op = $("<div>"+result.choicepaperlist[j].optionz[i].content+"</div>");
						op.addClass("option");
						singleoption.append(op);
					}
					count++;
					sing++;
				}
			}

			
			/* 生成填空题 */
			for(var i=0;i<result.completionset.length;i++){
				var cc = $("<div></div>");
				cc.addClass("completion");
				
				/*添加空行*/
				
				
				
				$("#completion").append(cc);
				
				var konghang = $("<div></div>");
				konghang.addClass("konghang");
				$("#completion").append(konghang);
				
				var content = $("<div>"+count.toString()+"." +result.completionset[i].content+"</div>");
				content.addClass("content");
				cc.append(content);
				/* 存题号 */
				var newInput1 = document.createElement("input");
				newInput1.type = "hidden";
				newInput1.name = "completionId";
				newInput1.value = result.completionset[i].completionId;
				cc.append(newInput1);
				
				var input = $("<input  type='text'/>");
				input.addClass("input");
				cc.append(input);
				count++;
			}
			
			
			
			
			/* 生成判断题 */
			for(var i=0;i<result.recognizset.length;i++){
				var cc = $("<div></div>");
				cc.addClass("recogniz");
				$("#recogniz").append(cc);
				
				var konghang = $("<div></div>");
				konghang.addClass("konghang");
				$("#recogniz").append(konghang);
				
				var content = $("<div>"+count.toString()+"." +result.recognizset[i].content+"</div>");
				content.addClass(content);
				cc.append(content);
				
				/* 加入隐藏input 设置value用来存唯一题号*/
				var newInput1 = document.createElement("input");
				newInput1.type = "hidden";
				newInput1.name = "recognizId";
				console.log(result.recognizset[i].recognizId);
				newInput1.value = result.recognizset[i].recognizId;
				cc.append(newInput1);
				
				var ss = new Array();
				ss.push("对");
				ss.push("错");
				for(var j=0;j<2;j++){
					var singleoption =$("<div></div>");
					singleoption.addClass("singleoption");
					cc.append(singleoption);
					/*  radio相同题 name相同，不同题不同,value中存储 关联答案 */
					var radio =$("<input type='radio' name='"+result.recognizset[i].recognizId+"' value='"+result.recognizset[i].answer+"' />");
					radio.addClass("radio");
					singleoption.append(radio); 
					
					
				    var op = $("<div>"+ss[j]+"</div>");
					op.addClass("option");
					singleoption.append(op);
				}
				count++;
			}
	
		}
		
	});

function fu(){
	var multiIds = document.getElementsByName("multiId");
	var multianswers = new Array();
	
for(var i=0;i<multiIds.length;i++){
	var str  =  multiIds[i].value.toString().split("&");
	var optionzs = new Array();
	for(var j=0;j<Number(str[1]);j++ ){
		var a = $("input[name='"+str[0]+"jdbk"+j.toString()+"']:checked").val();
		if (typeof(a) != "undefined")
		{optionzs.push(a);}
	}
		/* console.log(a); */
		
		/* singleanswers.push(s);	 */
		
		var s={"multiId":str[0],"optionzIds":optionzs}; 
		multianswers.push(s); 
	} 
	console.log(multianswers);
	
	var singleIds = document.getElementsByName("singleId");
	var singleanswers = new Array();
	for(var i=0;i<singleIds.length;i++){
		
		var a = $("input[name='"+singleIds[i].value+"']:checked").val();
		/* console.log(a); */
		var s={"singleId":singleIds[i].value,"optionzId":a};
		singleanswers.push(s);	
	} 
	console.log(singleanswers);
	
	/* 填空题的数据（利用隐藏的input存id），包含题目id，和答案，预备打包成json */
	var comletionIds =document.getElementsByName("completionId");
	var answers = $(".input");
	
	var coanswers = new Array();
	for(var i=0;i<comletionIds.length;i++){
		var s={"completionId":comletionIds[i].value,"coanswer":answers[i].value};
		coanswers.push(s);	
	} 
/* 生成json对象 */
	
	/* json转成json字符串 */
	
	/* [{"id":id,"an",a},{}]  json格式*/
	var recognizIds =document.getElementsByName("recognizId");
	var reanswers = new Array();/* json数组 */

	 for(var i=0;i<recognizIds.length;i++){
		 var a = $("input[name='"+recognizIds[i].value+"']:checked").val();
		 var s ={"recogniz":recognizIds[i].value,"reanswer":a};
		 reanswers.push(s); 
	} 
	/* 生成json对象 */
	
	
	
	/* json转成json字符串 */
	
	
	console.log(multianswers);
	console.log(singleanswers);
	console.log(coanswers);
	console.log(reanswers);
	
	var data={
			multianswers:multianswers,
			singleanswers:singleanswers,
			coanswers :coanswers,
			reanswers :reanswers,
			subject:su
	};
	
	$.ajax({
		url:"/TestSystem/score/createscore",
		type:"post",
		dataType:"json",
		data:JSON.stringify(data)
			,
		contentType:"application/json",
		success:function(result){
			
		}
	});
	
	
	
	
	/*$.ajax({
	
		url:"/TestSystem/score/creates",
		type:"post",
		dataType : "json",
		data:JSON.stringify(date),
		contentType:"application/json",
		success:function(result){
			console.log(result);
		}
	});*/
	
	
	/*{
		'multianswers':multianswers,
		'singleanswers':singleanswers,
		'coanswers':coanswers,
		'reanswers':reanswers
			}*/
}