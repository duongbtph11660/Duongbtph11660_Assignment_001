package com.spring.mapper;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dto.UserDTO;
import com.spring.entity.User;

@Service
public class UserMapper {
	@Autowired
	private  ModelMapper modelMapper;
	
	//Hàm chuyển từ DTO về Entity
	public  User convertToEntity(UserDTO userDTO)
	{
		User entity = modelMapper.map(userDTO, User.class);
		return entity;
	}
	
	//Hàm chuyển từ User sang DTO
	public  UserDTO convertToDTO(User entity) 
	{
		UserDTO userDTO = modelMapper.map(entity, UserDTO.class);
		
		return userDTO;
	}
}
