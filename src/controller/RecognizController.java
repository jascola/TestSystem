package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Recogniz;
import service.RecognizService;

@Controller
@Scope
@RequestMapping("/recogniz")
public class RecognizController{

	@Autowired
	private RecognizService service;
	
	
	

	@RequestMapping("/insert")
	public String insert(Recogniz recogniz) {
		this.service.insert(recogniz);
		System.out.println("insert success");
		return "/admin/addRecogniz.jsp";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id) {
		this.service.delete(id);
		System.out.println("delete success");
		return "/admin/queryRecogniz.jsp";
	}
	
	@RequestMapping("/update")
	public String update(Recogniz recogniz) {
		this.service.update(recogniz);
		System.out.println("update success");
		return "/admin/queryRecogniz.jsp";
	}
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<Recogniz> recognizs = this.service.queryAll();
		model.addAttribute("recognizs", recognizs);
		System.out.println("queryAll success");
		return "/query.jsp";
	}

	@RequestMapping("/queryById")
	public String queryById(Integer id,Model model) {
		Recogniz recogniz = this.service.queryById(id);
		model.addAttribute("recogniz", recogniz);
		System.out.println("queryById success");
		return "/query.jsp";
	}
	
	@RequestMapping("/query")
	public String query(Recogniz rec,Model model) {
		List<Recogniz> recognizs = this.service.query(rec);
		model.addAttribute("recognizs", recognizs);
		System.out.println("queryAll success");
		return "/admin/queryRecogniz.jsp";
	}
	
	
	
}
