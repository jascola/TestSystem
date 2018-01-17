package controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

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
	/*�����ַ���������Ҫ��@RequestParam�������ͣ�ajaxָ������Ϊjson*/
	public String insertList(@RequestParam(value = "choiceId") Integer choiceId,
			@RequestParam(value = "questions[]") String[] questions,
			@RequestParam(value = "isRight[]") String[] isRight) {
		
		System.out.println(questions.length);

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
		System.out.println("===================================");
		return "/admin/addChoice.jsp";
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
	
	@RequestMapping(value="/queryByChoiceId",method=RequestMethod.GET,produces = "application/json;charset=utf-8")
	@ResponseBody
	public String queryByChoiceId(Integer id) {
		List<Optionz> optionz = this.service.queryByChoiceId(id);
		System.out.println(optionz);
		String jsonString = JSONObject.toJSONString(optionz);
		return jsonString;
		/*System.out.println("queryById success");
		return "/query.jsp";*/
	}
	
	
	
}
