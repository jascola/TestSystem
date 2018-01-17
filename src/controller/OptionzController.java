package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Choice;
import entity.Optionz;
import service.OptionzService;



@Controller
@Scope
@RequestMapping("/optionz")
public class OptionzController{

	@Autowired
	private OptionzService service;

	@RequestMapping("/insertlist")
	/*传递字符串数组需要用@RequestParam声明类型，ajax指明类型为json*/
	public String insertList(@RequestParam(value = "choiceId") Integer choiceId,
			@RequestParam(value = "questions[]") String[] questions,
			@RequestParam(value = "isRight[]") String[] isRight) {
		
		for(int i=0;i<questions.length;i++)
		{
			Optionz op =new Optionz();
			Choice ch = new Choice();
			ch.setChoiceId(choiceId);
			op.setContent(questions[i]);
			op.setChoice(ch);
			op.setIsRight(Integer.valueOf(isRight[i]));
			this.service.insert(op);
		}
		
		return "/query.jsp";
	}
	
	@RequestMapping("/insert")
	public String insert(Optionz op) {
		System.out.println(op);
		this.service.insert(op);
		System.out.println("insert success");
		return "/admin/addOptionz.jsp";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id) {
		this.service.delete(id);
		System.out.println("delete success");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/update")
	public String update(Optionz Optionz) {
		this.service.update(Optionz);
		System.out.println("update success");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/queryAll")
	public String queryAll(Model model) {
		List<Optionz> optionzs = this.service.queryAll();
		model.addAttribute("optionzs", optionzs);
		System.out.println("queryAll success");
		return "/query.jsp";
	}

	@RequestMapping("/queryById")
	public String queryById(Integer id,Model model) {
		Optionz Optionz = this.service.queryById(id);
		model.addAttribute("Optionz", Optionz);
		System.out.println("queryById success");
		return "/query.jsp";
	}
	
	
	
}
