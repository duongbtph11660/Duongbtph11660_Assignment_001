package com.spring.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.context.annotation.SessionScope;

import com.spring.dto.OrderDetailDTO;
import com.spring.entity.OrderDetail;
import com.spring.entity.Product;
import com.spring.entity.User;
import com.spring.mapper.OrderDetailMapper;
import com.spring.service.OrderDetailService;

@Controller
public class ControllerCarts {
	@Autowired
	private OrderDetailService orderSevice;
	@Autowired
	private OrderDetailMapper mapper;

	@GetMapping(value = "/cart")
	public String getCart(Model model) {
		List<OrderDetail> listOrder = this.orderSevice.findAll();
		float tong = 0;
		for (int i = 0; i < listOrder.size(); i++) {
			tong += listOrder.get(i).getPrice();
		}
		model.addAttribute("tong", tong);
		model.addAttribute("listOrder", listOrder);
		return "home/cart";
	}

	@PostMapping(value = "/cart/{id}")
	public String saveCart(@PathVariable("id") Product product,
			@ModelAttribute("orderDetail") OrderDetailDTO orderDetailDTO) {
		OrderDetail orderDetail = this.mapper.convertToEntity(orderDetailDTO);
		List<OrderDetail> list = this.orderSevice.findByProduct(product.getId());
		Optional<OrderDetail> id = null;
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				orderDetail.setQuantity(1 + list.get(i).getQuantity());
				if (product.getDiscount() == 0.0) {
					orderDetail.setPrice(product.getPrice() * orderDetail.getQuantity());
				} else if ((product.getPrice() - (product.getPrice() * (product.getDiscount() / 100))) != product
						.getPrice()) {
					float tong = (product.getPrice() - (product.getPrice() * (product.getDiscount() / 100)));
					System.out.println("Price: " + tong);
					orderDetail.setPrice(tong * orderDetail.getQuantity());
				}
				orderDetail.setProduct_id(product);
				id = this.orderSevice.findById(list.get(i).getId());
			}
			this.orderSevice.deleteById(id.get().getId());
			this.orderSevice.save(orderDetail);
			return "redirect:/cart";
		} else {
			orderDetail.setQuantity(1);
			orderDetail.setProduct_id(product);
			System.out.println(product.getDiscount());
			if (product.getDiscount() == 0.0) {
				orderDetail.setPrice(product.getPrice() * orderDetail.getQuantity());
			} else if ((product.getPrice() - (product.getPrice() * (product.getDiscount() / 100))) != product
					.getPrice()) {
				float tong = (product.getPrice() - (product.getPrice() * (product.getDiscount() / 100)));
				System.out.println("Price: " + tong);
				orderDetail.setPrice(tong * orderDetail.getQuantity());
			}
			this.orderSevice.save(orderDetail);
			return "redirect:/cart";
		}
	}
	
	@PostMapping(value = "/cart/delete/{id}")
	public String delete(@PathVariable("id") OrderDetail entity) {
		this.orderSevice.deleteById(entity.getId());
		
		return "redirect:/cart";
	}
}
