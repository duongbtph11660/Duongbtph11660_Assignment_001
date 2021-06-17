package com.spring.dto;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailDTO {
	
	private String from = "buitrongduong2001@gmail.com";
	private String to;
	private String subject;
	private String body;
	List<String> cc = new ArrayList<String>();
	List<String> bcc = new ArrayList<String>();
	List<File> file = new ArrayList<>();
	
	public MailDTO(String to, String subject, String body) {
		super();
		this.to = to;
		this.subject = subject;
		this.body = body;
	}
	
}
