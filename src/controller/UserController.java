package controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pojo.Customer;
import user.service.CustomerService;

@Controller
public class UserController {
    @Autowired
    private CustomerService customerservice;
    @RequestMapping("/findAll.html")
    public ModelAndView findAll() {
    	List<Customer> customers=customerservice.findAll();
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("cu",customers);
    	mv.setViewName("show");
		return mv;
    	
    }
    @RequestMapping("/delete.html")
    public String deleteCustomer(int cust_id) {
    	customerservice.deleteCustomer(cust_id);
    	return "redirect:/findAll.html";
    }
    @RequestMapping("toupdate.html")
    public String toupdate(Model model,@RequestParam int cust_id) {	
    	model.addAttribute("customer", customerservice.queryById(cust_id));
    	return "toupdate";
    }
    
    @RequestMapping("/update.html")
    public String updateCustomer(Customer customer,HttpServletRequest request) {
    	System.out.println(customer);
    	customerservice.updateCustomer(customer);
    	return "redirect:/findAll.html";
    }
    
    @RequestMapping("/add.html")
    public ModelAndView add() {
    	ModelAndView mv=new ModelAndView();   
    	mv.setViewName("add");
		return mv;   	
    }
    @RequestMapping("/addCustomer")
    public String addCustomer(Customer customer,HttpServletResponse response,HttpServletRequest request) {   	
    	try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        response.setCharacterEncoding("UTF-8");
    	customerservice.addCustomer(customer);
    	return "redirect:/findAll.html";
    }
    @RequestMapping("/select")
    public String Select() {
    	return "select";
    }
    @RequestMapping("/findByid")
    public String findById(Model model,@RequestParam int cust_id) {
    	System.out.println(cust_id);
    	model.addAttribute("select", customerservice.queryById(cust_id));
    	return "findByid";
    }
    @RequestMapping("/exit")
    public String Exit(HttpServletRequest request) {
    	HttpSession session = request.getSession(true);
    	session.invalidate();
    	return "login";
    }
    
}
