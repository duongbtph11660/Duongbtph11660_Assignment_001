package com.spring.controller;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.Util.HashUtil;
import com.spring.dto.MailDTO;
import com.spring.dto.UserDTO;
import com.spring.entity.User;
import com.spring.mapper.UserMapper;
import com.spring.service.UserService;

@Controller
@RequestMapping("account")
public class CotrollerLogin {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private UserService userService;
	@Autowired
	private UserMapper mapper;
	@Autowired
	private JavaMailSender sender;
	
	@GetMapping("/login")
	public String getLogin() {
		
		return "home/account";
	}
	
	@PostMapping(value = "login")
	public String login(
			@RequestParam("email") String email,
			@RequestParam("password") String password
			) {
		HttpSession session = this.request.getSession();
		User entity = this.userService.findByEmail(email);
		boolean checkPss = false;
		if(entity!=null) {
			checkPss = HashUtil.verify(password, entity.getPassword());
		}
		if(!checkPss || entity==null) {
			session.setAttribute("mess", "Sai tài khoản hoặc mật khẩu");
			return "redirect:/account/login";
		}
		System.out.println(entity.getEmail() +" "+ entity.getAdmin());
		if(entity.getAdmin()==0) {
			session.setAttribute("user", entity);
			return "redirect:/admin/users";
		}else {
			session.setAttribute("user", entity);
			return "redirect:/";
		}
	}

	@PostMapping(value = "/register")
	public String register(Model model, @Valid UserDTO dto, BindingResult result,
			@RequestParam("password") String pass,
			@RequestParam("confirmPassword") String confirm, MailDTO mail
			,@RequestParam("code") int code) throws MessagingException {
		
		
		if(result.hasErrors()) {
			System.out.println("Loi register");
			System.out.println(result.getAllErrors());
			return "redirect:/account/login";
		}else {
			User enity = this.mapper.convertToEntity(dto);
			if(!pass.equals(confirm)) {
				
				model.addAttribute("error", "Mật khẩu phải trùng nhau");
			}else if(dto.getCode() != code) {
				model.addAttribute("error", "Vui Lòng Kiểm Tra email Để nhập đúng mã code");
			}
		
				String hasedPass = HashUtil.hash(enity.getPassword());
				String email = dto.getEmail();
				System.out.println(email);
				int end = email.indexOf("@");
				String username = email.substring(0,end);
				System.out.println("username: "+username);
				enity.setUsername(username);
				enity.setAdmin(1);
				enity.setActivated(0);
				enity.setPassword(hasedPass);
				this.userService.save(enity);
				return "redirect:/account/login";
		}
	}
	@PostMapping(value = "/send")
	public void send(UserDTO dto, MailDTO mail) throws MessagingException {
		Random r = new Random();
		int value = r.nextInt((9999-1111)+1) + 1111;
		dto.setCode(value);
		System.out.println(dto.getCode());
		MimeMessage msg = sender.createMimeMessage();
		MimeMessageHelper helpe = new MimeMessageHelper(msg,true,"utf-8");
		mail.setTo(dto.getEmail());
		mail.setSubject("Thông tin mã code đăng kí tài khoản");
		mail.setBody("Mã code bn là: "+value +"\n");
		helpe.setFrom(mail.getFrom());
		helpe.setTo(mail.getTo());
		helpe.setSubject(mail.getSubject());
		helpe.setText(mail.getBody(),true);
		helpe.setReplyTo(mail.getFrom());
		sender.send(msg);
		this.sender.send(msg);
	}
}
