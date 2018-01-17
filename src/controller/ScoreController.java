package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Score;
import entity.ScoreQueryDto;
import entity.User;
import entity.UserQueryDto;
import service.ScoreService;

@Controller
@Scope
@RequestMapping("/score")
public class ScoreController{

	@Autowired
	private ScoreService service;
	
	
	
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
