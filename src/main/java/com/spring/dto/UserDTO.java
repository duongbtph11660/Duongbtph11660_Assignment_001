package com.spring.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
//	@Null
	private Integer id;	
	
//	@NotBlank
//	@NotNull
	private String username;
//	
//	@NotBlank
//	@NotNull
	private String password;
//	
//	@NotBlank
//	@NotNull
	private String confirmpassword;
	
//	@NotBlank
//	@NotNull
	private String fullname;
	
	@NotBlank
	@NotNull
	@Email
	private String email;
	
	private int code;
	
//	@NotBlank
//	@NotNull
	private String photo;
	
//	@NotNull
	private Integer activated;
	
//	@NotNull
	private Integer admin;
}
