package com.yedam.spring.user.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UserVO {
	private String name;
	private Integer age;
	// 날짜 입력 할 때 / 해야함
	// @DateTimeFormat 날짜패턴 정해 줄 수 있다
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date today;
	
	private MultipartFile[] pic; // html input에 있는 name이랑 같아야함
}
