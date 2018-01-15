package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
}
