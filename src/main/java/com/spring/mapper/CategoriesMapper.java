package com.spring.mapper;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dto.CategorieDTO;
import com.spring.dto.ProductDTO;
import com.spring.entity.Categorie;
import com.spring.entity.Product;

@Service
public class CategoriesMapper {
	@Autowired
	private  ModelMapper modelMapper;
	
	//Hàm chuyển từ DTO về Entity
	public  Categorie convertToEntity(CategorieDTO categoriesDTO)
	{
		Categorie entity = modelMapper.map(categoriesDTO, Categorie.class);
		return entity;
	}
	
	//Hàm chuyển từ User sang DTO
	public  CategorieDTO convertToDTO(Categorie entity) 
	{
		CategorieDTO userDTO = modelMapper.map(entity, CategorieDTO.class);
		
		return userDTO;
	}
}
