package com.yedam.boot.emp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.yedam.boot.emp.mapper.EmpMapper;

@Controller
public class EmpController {

	@Autowired
	EmpMapper empMapper;

//	@GetMapping("/")
//	@ResponseBody
//	public String main() {
//		return "hello";
//	}

	// 사원 전체조회
	@GetMapping("/empList")
	public String empAllList(Model model) {
		model.addAttribute("empList", empMapper.selectEmpAllList());
		return "empList";
	}
	
	//test
	@GetMapping("/test")
	public String test() {
		return "test";
	}
}
