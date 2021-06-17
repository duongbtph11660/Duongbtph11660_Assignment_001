package com.spring.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.entity.Product;
import com.spring.repository.ProductRepository;
import com.spring.service.ProductService;

@Controller
public class ControllerIndexHome {
	@Autowired
	private ProductService proService;
	@Autowired
	private HttpServletRequest request;
	
	@GetMapping("")
	public String index(Model model) {
		List<Product> list1 = this.proService.findByStatus(2);
		List<Product> list2 = this.proService.findByStatus(1);
		model.addAttribute("list", list1);
		model.addAttribute("list2", list2);
		return "home/index";
	}
	@GetMapping("/products")
	public String product(Model model,
			@RequestParam(name = "name", required = false) String name) {
		try {
			String pageParams = this.request.getParameter("page");
			String limitParams = this.request.getParameter("limit");
			String  sortBy = request.getParameter("sort_by");
			String sortField = sortBy == null ? "id" : sortBy;
			Sort sort = Sort.by(Direction.ASC,sortField);
			int page =  pageParams==null ? 0 : Integer.parseInt(pageParams);
			int limit = limitParams==null ? 12 : Integer.parseInt(limitParams);
			Pageable pageable = PageRequest.of(page, limit,sort);
			Page<Product> pageData = null;
			if(StringUtils.hasText(name)){
				pageData = this.proService.findByName(name,pageable);
				model.addAttribute("name", name);
			}else {
				pageData = this.proService.findAll(pageable);
			}
//			List<Product> list = this.proService.findAll();
			model.addAttribute("list", pageData);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "home/products";
	}
	
}
