package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;
import service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping("/insert")
	public String insert(User pro) {
		this.service.insert(pro);
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
	public String update(User user) {
		this.service.update(user);
		System.out.println("update success");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<User> users = this.service.queryAll();
		model.addAttribute("users", users);
		System.out.println("queryAll success");
		return "redirect:/query.jsp";
	}
	
	
	
}
