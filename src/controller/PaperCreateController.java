package controller;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import entity.Choice;
import entity.ChoicePaper;
import entity.Completion;
import entity.Optionz;
import entity.Paper;
import entity.Recogniz;
import entity.Subject;
import service.ChoiceService;
import service.CompletionService;
import service.OptionzService;
import service.RecognizService;
import service.SubjectService;

@Controller
@Scope
@RequestMapping("/papercreate")

public class PaperCreateController {
	@Autowired
	private ChoiceService choice;
	@Autowired
	private CompletionService completion;
	@Autowired
	private RecognizService recogniz;
	@Autowired
	private OptionzService optionz;
	@Autowired
	private SubjectService su;
	@RequestMapping("/requestpaper")
	public String requestpaper(Integer subjectId,HttpSession session) {
		/*model.addAttribute("subject",subjectId);*/
		session.setAttribute("testsub", subjectId);
		System.out.println(subjectId);
		return "/query.jsp";
	}

	@RequestMapping(value="/create",produces = "application/json;charset=utf-8")
	 @ResponseBody
	public String create(Integer subjectId) {
		System.out.println("subID:"+subjectId);
		Subject subject = this.su.queryById(subjectId);
		
		
	List<Choice> choices =this.choice.queryBySubjectId(subjectId);
	List<Completion> completions =this.completion.queryBySubjectId(subjectId);
	List<Recogniz> recognizs =this.recogniz.queryBySubjectId(subjectId);
	
	/*System.out.println(choices.size()+" "+completions.size()+" "+recognizs.size());*/
	HashSet<Choice> choiceset = new HashSet<Choice>();
	HashSet<Completion> completionset = new HashSet<Completion>();
	HashSet<Recogniz> recognizset = new HashSet<Recogniz>();
	
	int i=0,j=0,k=0;
	int ss=0;
	while(i<=9) {
		 int max=choices.size();
		 System.out.println("max:"+max);
	     Random random = new Random();
	     int s = random.nextInt(max);
	     /*System.out.println(s);*/
	     if(ss==5&&choices.get(s).getIsMulti()==1) {
	    	 continue;
	     }
	    if( choiceset.add(choices.get(s))) {
	    	System.out.println("填空题题号："+i);
	    	i++;
	    	if(choices.get(s).getIsMulti()==1) {
	    		
	    		ss++;
	    	}
	    }
	}
	while(j<=4) {
		 int max=completions.size();
	     Random random = new Random();
	     int s = random.nextInt(max);	     
	    /* System.out.println(s);*/
	    if( completionset.add(completions.get(s))) {
	    	System.out.println("填空题题号："+j);
	    	j++;
	    }
	}
	while(k<=4) {
		 int max=recognizs.size();
	     Random random = new Random();	     
	     int s = random.nextInt(max);
	    /* System.out.println(s);*/
	    if( recognizset.add(recognizs.get(s))) {
	    	System.out.println("填空题题号："+k);
	    	k++;
	    }
	}
	/*System.out.println(choiceset.size()+" "+completionset.size()+" "+recognizset.size());*/
	List<ChoicePaper> choicePapers = new ArrayList<ChoicePaper>();
	for(Choice c:choiceset) {
		ChoicePaper cp =new ChoicePaper();
		List<Optionz> optionzs  = this.optionz.queryByChoiceId(c.getChoiceId());
		cp.setChoice(c);
		cp.setOptionz(optionzs);
		choicePapers.add(cp);
	}
	Paper paper =new Paper();
	paper.setCompletionset(completionset);
	paper.setChoicepaperlist(choicePapers);
	paper.setRecognizset(recognizset);
	paper.setSubject(subject);
	String jsonString = JSONObject.toJSONString(paper);
	return jsonString;
	/*return "/query.jsp";*/
		/*String jsonString = JSONObject.toJSONString(user);

		return jsonString;*/
	}
	
}
