package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;
import entity.UserQueryDto;
import service.UserService;

@Controller
@Scope
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping("/userlogin")
	public String userlogin(String userName,String password,
			Integer identity,HttpSession httpSession) {
		
		if(userName==null || userName=="" ||password==null || password=="" ||identity==null) {
			String msg="用户名，密码或身份为空！";
			httpSession.setAttribute("msg", msg);
			return "redirect:/login.jsp";
		}
		try {
		User user =this.service.queryByName(userName);
		if(user.getPassword().equals(password)&&identity==0 &&user.getIdentity().equals(identity)) {
			System.out.println("学生登录");
			httpSession.setAttribute("user", user);
			return "redirect:/student/index.jsp";
		}
		else if(user.getPassword().equals(password)&&identity==1&&user.getIdentity().equals(identity)) {
			httpSession.setAttribute("user", user);
			System.out.println("管理员登录");
			return "redirect:/admin/index.jsp";
		}
		}catch (Exception e) {
			String msg="用户名，密码或身份错误！";
			httpSession.setAttribute("msg", msg);
			return "redirect:/login.jsp";
		}
		return "redirect:/login.jsp";
	}
	
	@RequestMapping(value="/logout")  
    public String logout(HttpSession session) throws Exception{  
        //清除Session  
        session.invalidate();  
          
        return "";  
    }  

	@RequestMapping("/insert")
	public String insert(User pro) {
		this.service.insert(pro);
		System.out.println("insert success");
		return "redirect:/admin/addUser.jsp";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id) {
		System.out.println(id);
		System.out.println("--------------------------");
		this.service.delete(id);
		System.out.println("delete success");
		return "redirect:/admin/queryUser.jsp";
	}
	
	@RequestMapping("/update")
	public String update(User user) {
		this.service.update(user);
		System.out.println("update success");
		return "redirect:/admin/queryUser.jsp";
	}
	
	@RequestMapping("/query")
	public String query(UserQueryDto user, Model model) {
		List<User> users = this.service.query(user);
		System.out.println(users);
		model.addAttribute("users1", users);
		return "/admin/queryUser.jsp";
	}
	
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<User> users = this.service.queryAll();
		model.addAttribute("users", users);
		System.out.println("queryAll success");
		return "/query.jsp";
	}

	@RequestMapping("/queryById")
	public String queryById(Integer id,Model model) {
		User user = this.service.queryById(id);
		model.addAttribute("user", user);
		System.out.println("queryById success");
		return "/query.jsp";
	}
	
	
	
}
