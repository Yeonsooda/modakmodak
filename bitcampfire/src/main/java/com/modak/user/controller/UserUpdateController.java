package com.modak.user.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modak.user.bean.UserDto;
import com.modak.user.service.UserService;

@Controller
@RequestMapping(value="user")
public class UserUpdateController {
	@Autowired
	private UserService userService;

	//프로필 사진 수정하기
	
	//회원정보 수정폼 띄우기
	@GetMapping(value="userUpdateForm")
	public String userUpdateForm(Model model) {		
		UserDto userDto = new UserDto();
		
		userDto.setUser_id("manbal");
		userDto.setUser_name("연수당");
		userDto.setUser_nickname("공주아잉교");
		userDto.setUser_email("manbal@aaa");
	    
		model.addAttribute("userDto", userDto);
		
		return "/user/userUpdateForm";
	}
	
	//회원정보 수정을 위해 회원정보 가져오기
	@PostMapping(value="getUser")
	@ResponseBody
	public UserDto getUser(HttpSession session) {
		String user_id = (String) session.getAttribute("memId");
		return userService.getUser(user_id);
	}	
	
	//회원정보 수정
	@PostMapping(value="Update")
	@ResponseBody
	public void update(@RequestParam Map<String, String> map) {
		userService.update(map);
	}
	
	//비밀번호 수정폼 띄우기
	@GetMapping(value="userPasswordChange")
	public String passwordChange() {
		return "/user/userPasswordChange";
	}
	
	//기존 비밀번호과 폼 
//	@PostMapping(value="updatePasswordChange")
//	@ResponseBody
//	public String updatePasswordChange(Model medel, @requstparam) {
//		String user_id = (String) session.getAttribute("memId");
//		return userService.getUser(user_id);
//	}
	
	//회원탈퇴
	//회원탈퇴	 확인창 띄우기
	@GetMapping(value="userDeleteConfirm")
	public String userDeleteConfirm() {
		return "/user/userDeleteConfirm";
	}
	
	//회원탈퇴-탈퇴 후 정보보관 기간(60일) 기능 추가하기
    @PostMapping(value="delete")
    @ResponseBody
    public void delete(Model model, String user_id, HttpSession session) {    	
		UserDto userDto = new UserDto();
		
		userDto.setUser_id("manbal");    
		model.addAttribute("userDto", userDto);
		
        userService.delete(user_id);
        session.invalidate();
    }
    
//	//회원탈퇴	완료
//	@PostMapping(value="userDeleteComplete")
//	public String userDeleteComplete() {
//		return "/user/userDeleteComplete";
//	}
	
}
