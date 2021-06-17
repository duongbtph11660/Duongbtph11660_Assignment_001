package com.spring.dto;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Past;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {

	private Integer id;
	
	@NotBlank
	@NotNull
	private String name;
	
//	@NotBlank
//	@NotNull
	private MultipartFile image;
	
	
	@NotNull
	private float price;

	@NotNull
	private int status;
	
	@NotNull
	private Float discount;
	
	@NotNull
	private String mota;
	
	
	private Integer category_idd;
}
