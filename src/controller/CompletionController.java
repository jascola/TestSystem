package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Completion;
import service.CompletionService;

@Controller
@Scope
@RequestMapping("/completion")
public class CompletionController{

	@Autowired
	private CompletionService service;
	
	
	

	@RequestMapping("/insert")
	public String insert(Completion completion) {
		this.service.insert(completion);
		System.out.println("insert success");
		return "/admin/addCompletion.jsp";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id) {
		this.service.delete(id);
		System.out.println("delete success");
		return "/admin/queryCompletion.jsp";
	}
	
	@RequestMapping("/update")
	public String update(Completion completion) {
		System.out.println(completion);
		this.service.update(completion);
		System.out.println("update success");
		return "/admin/queryCompletion.jsp";
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
	
	@RequestMapping("/query")
	public String query(Completion com,Model model) {
		List<Completion> completions = this.service.query(com);
		model.addAttribute("completions", completions);
		System.out.println("queryAll success");
		return "/admin/queryCompletion.jsp";
	}
	
	
	
}
