package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Choice;
import entity.Completion;
import entity.Optionz;
import entity.Recogniz;
import entity.Score;
import entity.ScoreQueryDto;
import entity.User;
import scoreentity.CoAnswers;
import scoreentity.FinallyAnswer;
import scoreentity.MultiAnswer;
import scoreentity.ReAnswer;
import scoreentity.SingleAnswer;
import service.ChoiceService;
import service.CompletionService;
import service.OptionzService;
import service.RecognizService;
import service.ScoreService;

@Controller
@Scope
@RequestMapping("/score")
public class ScoreController{
	@Autowired
	HttpSession session;
	@Autowired
	RecognizService recogniz;
	@Autowired
	CompletionService co;
	@Autowired
	private ScoreService service;
	@Autowired
	ChoiceService choice;
	@Autowired
	OptionzService optionz;
	@Autowired
	ScoreService sc;
	@RequestMapping(value="/createscore",produces="application/json",consumes = "application/json")
	/*传递字符串数组需要用@RequestParam声明类型，ajax指明类型为json*/
	@ResponseBody
	public String createscore(
		@RequestBody FinallyAnswer fi	)
	{
	User user=	(User)session.getAttribute("user");
		int score=0;
		
		for(ReAnswer re:fi.getReanswers()) {
			System.out.println("recognizeID:"+re.getRecogniz()+"  "+"answer:"+re.getReanswer());
			
			
			if(re.getReanswer()!=null) {
			Recogniz reco = new Recogniz();
			reco=this.recogniz.queryById(Integer.valueOf(re.getRecogniz()));
			System.out.println("reanswer:"+reco.getAnswer());
			if(!reco.getAnswer().equals(re.getReanswer())) {
				score+=5;
			}
			}
		}
		for(MultiAnswer mu:fi.getMultianswers()) {
			if(mu.getOptionzIds().length!=0) {
			String [] ss =mu.getOptionzIds();
			int tag=0;
			List<Optionz> opti = new ArrayList<Optionz>();
			opti = this.optionz.queryByChoiceId(Integer.valueOf(mu.getMultiId() ));
			if(opti.size()<ss.length) {
				continue;
			}
			else {
				
			for(int i=0;i<ss.length;i++) {
				Optionz op = new Optionz();
				op=this.optionz.queryById(Integer.valueOf(ss[i]));
				if(op.getIsRight()!=1) {
					tag=1;
					break;
				}
				
			}
			if(opti.size()==ss.length) {
				score+=5;
			}
			if(opti.size()>ss.length) {
				score+=3;
			}
			
			 }
			if(tag==1) {
				continue;
			}
			 }
		}
		
		for(CoAnswers cos:fi.getCoanswers()) {
			if(cos.getCoanswer()!=null) {
			Completion comp = new Completion();
			comp=this.co.queryById(Integer.valueOf(cos.getCompletionId()));
			if(comp.getAnswer().equals(cos.getCoanswer())) {
				score+=5;
			}
			}
		}
		for(SingleAnswer si:fi.getSingleanswers()) {
			System.out.println("SingleID:"+si.getSingleId()+"  "+"answer:"+si.getOptionzId());
			
			if(si.getOptionzId()!=null) {
				
				
			Optionz op = new Optionz();
			
			op=this.optionz.queryById(Integer.valueOf(si.getOptionzId()));
			/*if(op==null) {continue;}*/
			if(op.getIsRight()==1 ) {
				score+=5;
				
			}
			}
		}
		System.out.println("user+"+user);
		if(user!=null) {
	Double ff = Double.valueOf(score);
	Score scoref = new Score();
	scoref.setScore(ff);
	scoref.setSubject(fi.getSubject());
	System.out.println("score:"+score);
	scoref.setUser(user);
	this.sc.insert(scoref);
		}
		return "";
	}

	@RequestMapping("/query")
	public String query(ScoreQueryDto sqd, Model model) {
		List<Score> scores = this.service.query(sqd);
		System.out.println(scores);
		model.addAttribute("scores", scores);
		return "/admin/queryScore.jsp";
	}
	
	@RequestMapping("/querystu")
	public String querystu(ScoreQueryDto sqd, Model model) {
		/*System.out.println(sqd);*/
		List<Score> scores = this.service.querystu(sqd);
		System.out.println(scores);
		model.addAttribute("scores", scores);
		return "/student/queryScore.jsp";
	}
	
	

	@RequestMapping("/insert")
	public String insert(Score Score) {
		this.service.insert(Score);
		System.out.println("insert success");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id) {
		this.service.delete(id);
		System.out.println("delete success");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/update")
	public String update(Score score) {
		System.out.println(score);
		this.service.update(score);
		System.out.println("update success");
		return "/admin/queryScore.jsp";
	}
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<Score> Scores = this.service.queryAll();
		model.addAttribute("Scores", Scores);
		System.out.println("queryAll success");
		return "/query.jsp";
	}

	@RequestMapping("/queryById")
	public String queryById(Integer id,Model model) {
		Score Score = this.service.queryById(id);
		model.addAttribute("Score", Score);
		System.out.println("queryById success");
		return "/query.jsp";
	}
	
	
	
}
