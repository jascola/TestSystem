package controller;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

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
import service.ChoiceService;
import service.CompletionService;
import service.OptionzService;
import service.RecognizService;

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
	@RequestMapping(value="/create",produces = "application/json;charset=utf-8")
	 @ResponseBody
	public String create(Model model) {
	List<Choice> choices =this.choice.queryAll();
	List<Completion> completions =this.completion.queryAll();	
	List<Recogniz> recognizs =this.recogniz.queryAll();	
	
	HashSet<Choice> choiceset = new HashSet<Choice>();
	HashSet<Completion> completionset = new HashSet<Completion>();
	HashSet<Recogniz> recognizset = new HashSet<Recogniz>();
	
	
	int i=0,j=0,k=0;
	while(i==2) {
		 int max=choices.size()-1;
	     Random random = new Random();
	     int s = random.nextInt(max)+ 1;
	    if( choiceset.add(choices.get(s))) {
	    	i++;
	    }
	}
	while(j==2) {
		 int max=completions.size()-1;
	     Random random = new Random();
	     int s = random.nextInt(max)+ 1;
	    if( completionset.add(completions.get(s))) {
	    	j++;
	    }
	}
	while(k==2) {
		 int max=recognizs.size()-1;
	     Random random = new Random();
	     int s = random.nextInt(max)+ 1;
	    if( recognizset.add(recognizs.get(s))) {
	    	k++;
	    }
	}
	
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
	model.addAttribute("recogniz",recognizset);
	model.addAttribute("paper", paper);
	String jsonString = JSONObject.toJSONString(paper);
	return jsonString;
	/*return "/query.jsp";*/
		/*String jsonString = JSONObject.toJSONString(user);

		return jsonString;*/
	}
	
}
