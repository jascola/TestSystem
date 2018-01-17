package controller;

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
	private ScoreService service;
	@Autowired
	ChoiceService choice;
	@Autowired
	OptionzService optionz;
	@RequestMapping(value="/createscore",produces="application/json",consumes = "application/json")
	@ResponseBody
	/*传递字符串数组需要用@RequestParam声明类型，ajax指明类型为json*/
	public String createscore(
		@RequestBody FinallyAnswer fi	)
	{
	User user=	(User)session.getAttribute("user");
		int score=0;
		for(ReAnswer re:fi.getReanswers()) {
			
			Recogniz reco = new Recogniz();
			reco=this.recogniz.queryById(Integer.valueOf(re.getRecogniz()));
		
			if(reco.getAnswer().equals("1")&& re.getReanswer().equals("对")) {
				score+=5;
				System.out.println(score);
			}
			
		}
		for(MultiAnswer mu:fi.getMultianswers()) {
			
		}
		for(SingleAnswer si:fi.getSingleanswers()) {
			si.getOptionzId();
			Optionz op = new Optionz();
			op=this.optionz.queryById(Integer.valueOf(si.getOptionzId()));
			if(op.getIsRight()==1 ) {
				score+=5;
				System.out.println(score);
			}
		}
		for(CoAnswers cos:fi.getCoanswers()) {
			
		}
		
		
		return " ss";
	}
	/*@RequestMapping(value="/creates",produces="application/json",consumes = "application/json")
	
	传递字符串数组需要用@RequestParam声明类型，ajax指明类型为json
	public String createscore(
			@RequestBody MultiAnswer []multianswers
			)
	{
		for(MultiAnswer s:multianswers)
		System.out.println(s);

		return " ss";
	}*/
	/*@RequestBody MultiAnswer[] multianswers,
	@RequestBody SingleAnswer[] singleanswers,
	@RequestBody CoAnswers[] coanswers,
	@RequestBody ReAnswer[] reanswers*/
	
	
	
	
	
	@RequestMapping("/query")
	public String query(ScoreQueryDto sqd, Model model) {
		List<Score> scores = this.service.query(sqd);
		System.out.println(scores);
		model.addAttribute("scores", scores);
		return "/admin/queryScore.jsp";
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
