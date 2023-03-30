package com.yedam.java.book.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.java.book.mapper.BookMapper;
import com.yedam.java.book.service.BookService;
import com.yedam.java.book.service.BookVO;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookMapper bookMapper;
	
	@Override
	public int insertBook(BookVO bookVO) {
		int result = bookMapper.insertBookInfo(bookVO);
		
		if(result == 1) {
			return bookVO.getBookNo();
		} else {
			return -1;
		}
	}

	@Override
	public List<BookVO> getBookList() {
		return bookMapper.selectBookList();
	}

	@Override
	public BookVO getBookNo() {
		return bookMapper.getBookNo();
	}

	@Override
	public List<BookVO> rentBookList() {
		return bookMapper.selectRentBookList();
	}

}
