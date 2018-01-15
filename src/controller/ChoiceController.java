package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Choice;
import service.ChoiceService;

@Controller
@Scope
@RequestMapping("/choice")
public class ChoiceController{

	@Autowired
	private ChoiceService service;
	
	
	

	@RequestMapping("/insert")
	public String insert(Choice choice) {
		this.service.insert(choice);
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
	public String update(Choice choice) {
		this.service.update(choice);
		System.out.println("update success");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<Choice> choices = this.service.queryAll();
		model.addAttribute("choices", choices);
		System.out.println("queryAll success");
		return "/query.jsp";
	}

	@RequestMapping("/queryById")
	public String queryById(Integer id,Model model) {
		Choice choice = this.service.queryById(id);
		model.addAttribute("choice", choice);
		System.out.println("queryById success");
		return "/query.jsp";
	}
	
	
	
}
