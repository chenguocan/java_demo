package controller;



import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.User;
import user.service.UserService;
@Controller
public class loginController {
	@Autowired
	private UserService service;
	@RequestMapping("/index.html")
	public String login() {
		return "login";
	}
	
	@ResponseBody	
	@RequestMapping("check.html")
	public  String Check(@RequestParam String user_code,
			@RequestParam String user_password,HttpServletRequest request) {
		
		User user=service.login(user_code, user_password);	
		HttpSession session = request.getSession(true);
		if(user!=null) {
			session.setAttribute("loginname", user_code);
			return "success";
		}else  {
		  return "fail";
		}
	}
	@RequestMapping("/login.html")
	public String Loginintoindex() {	
		return "index";
	}
	
	
	  /*  @RequestMapping("login.html")
		 @ResponseBody
		public String login(@RequestParam String user_code,
				@RequestParam String user_password,HttpServletRequest request) {	
			User user=service.login(user_code,user_password);
			HttpSession session = request.getSession(true);
			if(user!=null) {
				session.setAttribute("loginname", user);
				return  "index";
			}else {
				return "index";
			}
				
		}*/
  /*  @ResponseBody
	@RequestMapping(value="/login.html")
	public User login(@RequestParam String user_code,
			@RequestParam String user_password,Model model,HttpServletRequest request) {	
    	HttpSession session = request.getSession(true);
		session.setAttribute("loginname",user_code); 
    	User user=service.login(user_code,user_password);
    	if(user!=null) {
		    return "success";
    	}else {
    		return "index";
    	}
	}*/
	/*@RequestMapping(value="/login.html",method=RequestMethod.POST)
	public String login(@RequestParam String user_code,
			@RequestParam String user_password,Model model,HttpServletRequest request) {
	
		User user=service.login(user_code,user_password);
		if(null!=user) {
			HttpSession session = request.getSession(true);
			session.setAttribute("loginname",user_code); 
			return "index";
		}else {
			model.addAttribute("msg","µÇÂ½Ê§°Ü");
			return "login.html";
		}
		
	}*/
	
	 
	
}
