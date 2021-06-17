package com.spring.dto;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {
	
	@Null
	private Integer id;
	@NotBlank
	@NotNull
	private String username;
	@NotNull
	private String create_date;
	@NotBlank
	@NotNull
	private String address;
}
