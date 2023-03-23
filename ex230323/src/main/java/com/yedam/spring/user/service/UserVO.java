package com.yedam.spring.user.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class UserVO {
	private String name;
	private Integer age;
	// 날짜 입력 할 때 / 해야함
	// @DateTimeFormat 날짜패턴 정해 줄 수 있다
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	private Date today;
}
