package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.spring.entity.Product;

@Controller
public class ControllerProductDetail {
	
	
	@GetMapping(value = "/products_detail/{id}")
	public String get(Model model,
			@PathVariable("id") Product product
			) {
		System.out.println(product.getCategory_id().getId()+ product.getCategory_id().getName());
		model.addAttribute("product", product);
		return "home/products_detail";
	}
}
