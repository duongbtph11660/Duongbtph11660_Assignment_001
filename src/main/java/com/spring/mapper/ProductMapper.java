package com.spring.mapper;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dto.ProductDTO;
import com.spring.entity.Product;

@Service
public class ProductMapper {
	@Autowired
	private  ModelMapper modelMapper;
	
	//Hàm chuyển từ DTO về Entity
	public  Product convertToEntity(ProductDTO productDTO)
	{
		Product entity = modelMapper.map(productDTO, Product.class);
		return entity;
	}
	
	//Hàm chuyển từ User sang DTO
	public  ProductDTO convertToDTO(Product entity) 
	{
		ProductDTO userDTO = modelMapper.map(entity, ProductDTO.class);
		
		return userDTO;
	}
}
