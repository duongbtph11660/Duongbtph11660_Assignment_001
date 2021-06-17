package com.spring.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetailDTO {
	
	@Null
	private Integer id;
	
	private Integer productid;
	
//	private Integer order_id;
	
	@NotNull
	private Float price;
	
	@NotNull
	private Integer quantity;
	
}
