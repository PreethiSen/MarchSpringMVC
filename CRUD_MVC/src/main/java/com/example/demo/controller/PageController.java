package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Product;
import com.example.demo.service.ProductService;

@Controller
public class PageController {
	
	@Autowired
	ProductService productservice;
	
	@GetMapping("/home")
	public String home(Model model)
	{
		
		model.addAttribute("msg", "Welcome to the Spring Boot CRUD Application");
		
		return "home";
	}
	
	
	
	@GetMapping("/login")
	public String login(Model model)
	{
		
		model.addAttribute("msg", "Welcome to the Login Page");
		
		return "login";
	}
	
	
	@GetMapping("/productList")
	public String productListAll(Model model)
	{
		List<Product> productList=productservice.findAll();
		
		model.addAttribute("productList", productList);
		
		
		return "producthome";
	}
	
	@GetMapping("/new")
  public String addProduct(Model model)
  {
	  Product product= new Product();
	  model.addAttribute(product);
	 return "newproduct";
			
  }
	
	@PostMapping("/save")
	public String saveProduct(@ModelAttribute("product") Product product )
	{
		productservice.save(product);
		return "redirect:/productList";
	}

	
	@RequestMapping("/delete")
	public String deleteProduct(@RequestParam int id) {
		productservice.delete(id);
		return "redirect:/productList";
	}
	
	
	@RequestMapping("/edit")
	public ModelAndView editProduct(@RequestParam int id)
	{
		System.out.println("the id is " + id);
		ModelAndView mv=new ModelAndView();
		Product p=productservice.findbyId(id);
		System.out.println("the product is " + p);
		mv.setViewName("editproduct");
		mv.addObject("product", p);
		return mv;
	}

}
