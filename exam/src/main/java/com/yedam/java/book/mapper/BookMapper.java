package com.yedam.java.book.mapper;

import java.util.List;

import com.yedam.java.book.service.BookVO;

public interface BookMapper {
	//전체조회
	public List<BookVO> selectBookList();
	
	//등록글번호
	public BookVO getBookNo();
	
	// 등록
	public int insertBookInfo(BookVO bookVO);
	
	//대여
	public List<BookVO> selectRentBookList();
}
