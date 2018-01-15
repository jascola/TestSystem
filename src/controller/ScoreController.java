package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Score;
import service.ScoreService;

@Controller
@RequestMapping("/Score")
public class ScoreController{

	@Autowired
	private ScoreService service;
	
	
	

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
	public String update(Score Score) {
		this.service.update(Score);
		System.out.println("update success");
		return "redirect:/index.jsp";
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
