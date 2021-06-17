package com.spring.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.Util.SaveFileUntil;
import com.spring.dto.CategorieDTO;
import com.spring.dto.ProductDTO;
import com.spring.dto.UserDTO;
import com.spring.entity.Categorie;
import com.spring.entity.Product;
import com.spring.entity.User;
import com.spring.mapper.CategoriesMapper;
import com.spring.mapper.ProductMapper;
import com.spring.service.CategoriesService;
import com.spring.service.ProductService;

@Controller
@RequestMapping("/admin/product")
public class ControllerAdminProduct {
	@Autowired 
	private ProductService productRep;
	@Autowired
	private ProductMapper productMapper;
	
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private CategoriesMapper categoryMapper;
	@Autowired
	private SaveFileUntil saveFile;
	
	@ModelAttribute("category")
	public List<CategorieDTO> getCategories(){
		return this.categoriesService.findAll().stream().map(item->{
			CategorieDTO dto = new CategorieDTO();
			BeanUtils.copyProperties(item, dto);
			return dto;
		}).collect(Collectors.toList());
	}
	
	@GetMapping("")
	public String index(Model model) {
		List<Product> listProduct = this.productRep.findAll();
//		System.out.println(listProduct.get(0).getCategory_id().getName());
//		Float sale = null;
//		for (int i = 0; i < listProduct.size(); i++) {
//			sale = listProduct.get(i).getPrice() - (listProduct.get(i).getPrice() * (listProduct.get(i).getDiscount()/100)); 
//		}
//		System.out.println(sale);
//		model.addAttribute("sale", sale);
		model.addAttribute("list", listProduct);
		return "admin/table_product";
	}
	@GetMapping(value = "/create")
	public String create() {
		
		return "admin/create_product";
	}
	@PostMapping(value = "/save")
	public String save(
			Model model,
			@Valid @ModelAttribute("product") ProductDTO product,
			BindingResult result,
			@RequestParam("image") MultipartFile image,
			@RequestParam("category_idd") Categorie cate,
			@RequestParam("name") String name
			
			) {
		System.out.println(product.getName()+" "+product.getMota() + " "+product.getDiscount()  + "cate: "+ cate.getId());
		if(result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "admin/create_product";
		}
			if(name==null) {
				model.addAttribute("mess", "Koo");
			}
			Product entity = this.productMapper.convertToEntity(product);
			entity.setCategory_id(cate);
			File file = this.saveFile.handleUploadFile(image);
			String img = file.getName();
			System.out.println("Img: "+img);
			entity.setImage(img);
			model.addAttribute("mess", "Thêm mới thành công");

			this.productRep.save(entity);
			return "redirect:/admin/product";
	}
	@GetMapping(value = "/edit/{id}")
	public String edit(Model model, 
			@PathVariable("id") Product entity
			) {
		System.out.println(entity.getName());
		ProductDTO dto = this.productMapper.convertToDTO(entity);
		model.addAttribute("product", dto);
		return "admin/update_product";
	}
	@PostMapping(value = "/update/{id}")
	public String update(
			Model model,@Valid @ModelAttribute("product") ProductDTO product
			,BindingResult result,
			@PathVariable("id") Product entity,
			@RequestParam("image") MultipartFile image,
			@RequestParam("category_idd") Categorie cate
			) {
		System.out.println(product.getImage());
		if(result.hasErrors()) {
			System.out.println("Looi"+result.getAllErrors());
			model.addAttribute("error", result.getAllErrors());
			model.addAttribute("product",product);
			return "admin/update_product";
		}else {
			System.out.println("Vào update win");
			
			Product entit = this.productMapper.convertToEntity(product);

			File file = this.saveFile.handleUploadFile(image);
			String img = file.getName();
			System.out.println("Img: "+img);
			entit.setImage(img);
			entit.setCategory_id(cate);
			this.productRep.save(entit);
			return "redirect:/admin/product";
		}
	}
	@PostMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Product entity) {
		this.productRep.deleteById(entity.getId());
		return "redirect:/admin/product";
	}
}
