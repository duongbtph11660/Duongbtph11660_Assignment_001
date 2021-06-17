package com.spring.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

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

import com.spring.Util.HashUtil;
import com.spring.dto.UserDTO;
import com.spring.entity.User;
import com.spring.mapper.UserMapper;
import com.spring.service.UserService;


@Controller
@RequestMapping("/admin/users")
public class ControllerAdminUser {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private UserService userSv;
	@Autowired
	private UserMapper mapper;
	@Autowired 
	private HttpServletResponse respon;
	
	@GetMapping("")
	public String getIndex(Model model) {
		List<User> listUser = this.userSv.findAll();
		model.addAttribute("list", listUser);
		
		return "admin/table_users";
	}
	@GetMapping(value = "/create")
	public String getCreate() {
		
		return "admin/create_users";
	}
	
	@PostMapping(value = "/save")
	public String save(Model model,
			@RequestParam("confirmpassword") String confirmPass,
			@RequestParam("password") String password
			,@Valid UserDTO user,
			BindingResult result
			){
		
		if(result.hasErrors()) {
			System.out.println("Tên: "+result.getAllErrors());
			return "admin/create_users";
		}else {
			User entity = this.mapper.convertToEntity(user);
			if(!password.equals(confirmPass)) {
				model.addAttribute("errorPass", "Mật khẩu phải trùng nhau");
				return "admin/create_users";
			}
			String hashedPassword = HashUtil.hash(entity.getPassword());
			entity.setPassword(hashedPassword);
			this.userSv.save(entity);
			return "redirect:/admin/users";
			
		}
			
	}
	@GetMapping(value = "/edit/{id}")
	public String getEdit(Model model,
			@PathVariable("id") User entity
			) {
		UserDTO userDTO = this.mapper.convertToDTO(entity);
		model.addAttribute("user", userDTO);
		System.out.println(entity.getId());
		return "admin/update_users";
	}
	@PostMapping(value = "/update/{id}")
	public String update(
			Model model,@Valid @ModelAttribute("user") UserDTO user
			,BindingResult result,
			@PathVariable("id") User u
			) {
		System.out.println(user.getId());
		if(result.hasErrors()) {
			System.out.println("Looi"+result.getAllErrors());
			model.addAttribute("error", result.getAllErrors());
			model.addAttribute("user",user);
			return "admin/update_users";
		}else {
			System.out.println("Vào update win");
			
			User entity = this.mapper.convertToEntity(user);
			Optional<User> ktId = this.userSv.findById(user.getId());
			
			if(ktId==null) {
				System.out.println(ktId.get().getUsername());
				return "admin/users/edit";
			}
			entity.setPassword(u.getPassword());
			this.userSv.save(entity);
			return "redirect:/admin/users";
		}
	}
	
	@PostMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") User entity) {
		System.out.println(entity.getId());
		this.userSv.deleteById(entity.getId());
		return "redirect:/admin/users";
	}
	
}
