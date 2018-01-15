package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Completion;
import service.CompletionService;

@Controller
@RequestMapping("/completion")
public class CompletionController{

	@Autowired
	private CompletionService service;
	
	
	

	@RequestMapping("/insert")
	public String insert(Completion completion) {
		this.service.insert(completion);
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
	public String update(Completion completion) {
		this.service.update(completion);
		System.out.println("update success");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<Completion> completions = this.service.queryAll();
		model.addAttribute("completions", completions);
		System.out.println("queryAll success");
		return "/query.jsp";
	}

	@RequestMapping("/queryById")
	public String queryById(Integer id,Model model) {
		Completion completion = this.service.queryById(id);
		model.addAttribute("completion", completion);
		System.out.println("queryById success");
		return "/query.jsp";
	}
	
	
	
}
