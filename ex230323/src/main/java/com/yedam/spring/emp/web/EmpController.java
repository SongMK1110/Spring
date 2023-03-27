package com.yedam.spring.emp.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yedam.spring.emp.service.EmpService;
import com.yedam.spring.emp.service.EmpVO;

@Controller
public class EmpController {
	
	@Autowired
	EmpService empService;
	
	//조회(데이터, 일반페이지) -> GET
	//등록, 수정, 삭제 -> POST
	
	//전체조회
	@GetMapping("/empList")
	public String getEmpAllList(Model model) {
		model.addAttribute("empList", empService.getEmpAll());
		return "emp/empList";
	}
	
	//단건조회
	@GetMapping("/empInfo")
	public String getEmpInfo(EmpVO empVO, Model model) {
		model.addAttribute("empInfo", empService.getEmp(empVO));
		return "emp/empInfo";
	}
	
	//등록 - Form
	@GetMapping("/empInsert")
	public String empInsertForm() {
		return "emp/empInsert";
	}
	
	//등록 - Process
	@PostMapping("/empInsert")
	public String empInsertProcess(EmpVO empVO, RedirectAttributes rrtt) {
		int empId = empService.insertEmp(empVO);
		String result = null;
		if(empId == -1) {
			result = "정상적으로 등록되지 않았습니다.";
		} else {
			result = "정상적으로 등록되었습니다."
					+ "\n 등록된 사원의 사번은 " + empId + " 입니다.";
		}
		// model 쓰면 안됨 데이터 손실 날 수도 RedirectAttributes 이거 씀
		rrtt.addFlashAttribute("result", result);
		// redirect -> controller(empList) 요청
		return "redirect:empList";
	}
	
	//수정 - Process 
	// 1) Client -Json -> Server
	// 2) Server -text -> Client
	@PostMapping("/empUpdate")
	@ResponseBody // data 보내는 거 page가 아니면 됨
	public Map<String, String> empUpdateProcess(@RequestBody EmpVO empVO) {
		return empService.updateEmp(empVO);
	}
	
	//삭제
	@PostMapping("/empDelete")
	@ResponseBody
	public String empDeleteProcess(@RequestParam int employeeId) { //@RequestParam 필수임 만약 없으면 -> required = false, defalutvalue(참조타입) 설정해줘야함
		Map<String, String> map = empService.deleteEmp(employeeId);
		return map.get("결과");
	}
	
}
