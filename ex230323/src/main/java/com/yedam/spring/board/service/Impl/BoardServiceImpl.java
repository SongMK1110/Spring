package com.yedam.spring.board.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.spring.board.mapper.BoardMapper;

@Service
public class BoardServiceImpl {
	
	@Autowired
	BoardMapper boardmapper;
	
	
}
