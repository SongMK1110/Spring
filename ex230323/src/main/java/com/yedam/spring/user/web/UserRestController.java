package com.yedam.spring.user.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.spring.user.service.UserListVO;
import com.yedam.spring.user.service.UserVO;


@CrossOrigin // CORS web개발자가 숙명처럼 여기는 에러를 처리해줌
@RestController // @Controller + @ResponseBody => 해당 클래스 내의 모든 컨트롤러는 객체를 반환
public class UserRestController {
	
	@RequestMapping(value="/insertUser", method=RequestMethod.POST)
	public UserVO insertUser(UserVO userVO) {
		
		System.out.println("name : " + userVO.getName());
		System.out.println("age : " + userVO.getAge());
		
		return userVO;
	}
	
	@RequestMapping("/insertUsers")
	public List<UserVO> insertUserList(UserListVO userListVO){
		
		// 데이터 넘길 때 list[0].name, list[0].age... 이런 형식으로 보내줘야함
		for(UserVO user : userListVO.getList()) {
			System.out.println(user);
		}
		
		return userListVO.getList();
	}
	
	@RequestMapping("/getUserData")
	public UserVO getUserData(@RequestParam("id") String name, @RequestParam(defaultValue = "0" ,required = false) int age) {
		// RequestParam 디폴트는 매개변수랑 같다, ("변수") 설정해주면 변수 써야함 
		// required = false 는 입력안해도 됨 타입은 참조타입(기본타입은 null처리 x)으로 true(디폴트)면 무조건 입력
		// defaultValue = "0" 이거 써도 됨 그럼 기본타입 가능
		UserVO userVO = new UserVO();
		userVO.setName(name);
		userVO.setAge(age);
//		userVO.setAge(age == null ? 0 : age); 이렇게 해도 됨
		
		return userVO;
	}
	
	@GetMapping("/getDataList")
	public String getDataList(@RequestParam(required = false) Map<String, Object> map) {
		String message = null;
		if(map.isEmpty()) {
			message = "데이터가 존재하지 않습니다.";
		} else {
			message = "데이터가 생성되었습니다.";
			Set<Map.Entry<String, Object>> entryList = map.entrySet();
			for(Map.Entry<String, Object> entry : entryList) {
				System.out.print("key : " + entry.getKey() );
				System.out.println(", value : " + entry.getValue());
			}
		}
		
		return message; 
	}
	
	@RequestMapping("/getNames")
	public Map<String, Object> getNames(@RequestParam List<String> name){
		
		Map<String, Object> map = new HashMap<>();
		map.put("result", "success");
		map.put("data", name);
		
		return map;
	}
	
	@RequestMapping("/getEmpInfo/{employeeId}")
	public UserVO getEmpInfo(@PathVariable String employeeId) {
		UserVO userVO = new UserVO();
		userVO.setName(employeeId);
		return userVO;
	}
	
	@RequestMapping("/getInfo")
	public UserVO getInfo(@RequestBody UserVO userVO) {
		return userVO;
	}
	
	@PostMapping("/upload")
	public String uploadFile(@RequestPart MultipartFile[] pic) {
//		System.out.println(userVO);
//		System.out.println("name : " + userVO.getName());
//		System.out.println("file : " + userVO.getPic().getOriginalFilename());
		
		System.out.println(pic[0].getOriginalFilename());
		
		return "Upload Complete!";
	}
}
