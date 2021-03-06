package controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import entity.Subject;
import entity.User;
import service.SubjectService;
@Controller
@Scope
@RequestMapping("/subject")
public class SubjectController {

	
	@Autowired
	private SubjectService service;
	
	@RequestMapping("/insert")
	public String insert(Subject pro) {
		this.service.insert(pro);
		System.out.println("insert success");
		return "redirect:/admin/querySubject.jsp";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id) {
		this.service.delete(id);
		System.out.println("delete success");
		return "/admin/querySubject.jsp";
	}
	
	@RequestMapping("/update")
	public String update(Subject sub) {
		this.service.update(sub);
		System.out.println("update success");
		return "/admin/querySubject.jsp";
	}
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<Subject> subjects = this.service.queryAll();
		model.addAttribute("subjects", subjects);
		System.out.println("queryAll success");
		return "/query.jsp";
	}
	
	@RequestMapping("/queryByName")
	public String queryByName(String subjectName,Model model) {
		System.out.println("ready to search..."+ " name:"+ subjectName);
		List<Subject> subjects = this.service.queryByName(subjectName);
		model.addAttribute("subjectN", subjects);
		System.out.println("queryByName success");
		return "/admin/querySubject.jsp";
	}
	
	@RequestMapping(value="/queryById")
	public String queryById(Integer id,Model model) {
		Subject subject = this.service.queryById(id);
		model.addAttribute("subject", subject);
		System.out.println("queryById success");
		return "/query.jsp";
	}
	
	@RequestMapping(value="/querySub",method=RequestMethod.POST,produces = "application/json;charset=utf-8")
	@ResponseBody
	public String querySub(HttpServletRequest request,HttpServletResponse response) {
		
		List<Subject> subjects = this.service.queryAll();
		/*System.out.println("querySub success");*/
		/*System.out.println(subjects);*/
		String jsonString = JSONObject.toJSONString(subjects);
		return jsonString;
	}
	
}
