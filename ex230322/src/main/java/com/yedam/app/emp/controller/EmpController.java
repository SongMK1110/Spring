package com.yedam.app.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.app.emp.service.EmpService;
import com.yedam.app.emp.service.EmpVO;

@Controller
public class EmpController {

	@Autowired
	EmpService empService;
	
	// getEmpInfo?employee_id=100
	@RequestMapping("/getEmpInfo")
	@ResponseBody // page리턴 x -> 대상 -> body출력
	public EmpVO getEmpInfo(EmpVO empVO) {
		return empService.getEmpInfo(empVO);
	} // EmpVO 객체 -> 텍스트 : jackson으로 직렬화
}
