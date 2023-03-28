package com.yedam.spring.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yedam.spring.board.service.BoardService;
import com.yedam.spring.board.service.BoardVO;

//@RequestMapping("/board") Controller에도 메핑 가능
@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	// 전체조회 : URI - getBoardList, RETURN - board/boardList
	@GetMapping("/getBoardList")
	public String getBoardList(Model model) {
		model.addAttribute("boardList", boardService.getBoardList());
		return "board/boardList";
	}
	
	// 단건조회 : URI - getBoardInfo, return - board/boardInfo
	@GetMapping("/getBoardInfo")
	public String getBoardInfo(BoardVO boardVO, Model model) {
		model.addAttribute("boardInfo", boardService.getBoardInfo(boardVO));
		return "board/boardInfo";
	}
	
	// 등록 - 페이지 : URI - boardInsert, return - board/boardInsert
	@GetMapping("/boardInsert")
	public String boardInsertForm(Model model) {
		model.addAttribute("boardInfo", boardService.getBoardNo());
//		model.addAttribute("bno", boardService.getBoardNo().getBno());
		return "board/boardInsert";
	}
	
	// 등록 - 처리 : URI - boardInsert, return - 전체조회 다시 호출
	@PostMapping("/boardInsert")
	public String boardInsertProcess(BoardVO boardVO) {
		boardService.insertBoardInfo(boardVO);
		return "redirect:getBoardList";
	}
	
	// 수정 - 페이지 : URI - boardUpdate, return - board/boardUpdate
	@GetMapping("/boardUpdate")
	public String boardUpdateForm(BoardVO boardVO, Model model) {
		model.addAttribute("boardInfo", boardService.getBoardInfo(boardVO));
		return "board/boardUpdate";
	}
	
	// 수정 - 처리 : URI - boardUpdate, return - 단건조회 다시 호출
	@PostMapping("/boardUpdate")
	public String boardUpdateProcess(BoardVO boardVO) {
		boardService.updateBoardInfo(boardVO);
		return "redirect:getBoardInfo?bno="+boardVO.getBno();
	}
	
	// 삭제 : URI - boardDelete, return - 전체조회 다시 호출
	@GetMapping("/boardDelete")
	public String boardDeleteProcess(@RequestParam int bno) {
		boardService.deleteBoardInfo(bno);
		return "redirect:getBoardList";
	}
}
