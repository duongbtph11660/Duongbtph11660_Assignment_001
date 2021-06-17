package com.spring.mapper;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dto.CategorieDTO;
import com.spring.dto.OrderDetailDTO;
import com.spring.entity.Categorie;
import com.spring.entity.OrderDetail;

@Service
public class OrderDetailMapper {
	
	@Autowired
	private  ModelMapper modelMapper;
	
	//Hàm chuyển từ DTO về Entity
	public  OrderDetail convertToEntity(OrderDetailDTO orderDetailDTO)
	{
		OrderDetail entity = modelMapper.map(orderDetailDTO, OrderDetail.class);
		return entity;
	}
	
	//Hàm chuyển từ User sang DTO
	public  OrderDetailDTO convertToDTO(OrderDetail entity) 
	{
		OrderDetailDTO order = modelMapper.map(entity, OrderDetailDTO.class);
		
		return order;
	}
}
