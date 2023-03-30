package com.yedam.java.book.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.yedam.java.book.service.BookService;
import com.yedam.java.book.service.BookVO;

@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/bookList")
	public String getBookList(Model model) {
		model.addAttribute("bookList", bookService.getBookList());
		return "book/bookList";
	}
	
	// 등록 - 폼
	@GetMapping("/bookInsert")
	public String bookInsertForm(Model model) {
		model.addAttribute("bookInfo", bookService.getBookNo());
		return "book/bookInsert";
	}
	
	//등록 - 프로세스
	@PostMapping("/bookInsert")
	public String bookInsertProcess(BookVO bookVO) {
		bookService.insertBook(bookVO);
		return "redirect:bookList";
	}
	
	@GetMapping("bookRental")
	public String bookRental(Model model) {
		model.addAttribute("bookRentList", bookService.rentBookList());
		return "book/bookRental";
	}
}
