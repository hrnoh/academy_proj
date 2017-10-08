package org.kpu.academy.controller;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.UserVO;
import org.kpu.academy.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Inject
	private UserService userService;
	
	public static final Logger logger = LoggerFactory.getLogger(UserController.class);

	/*
	 * 학생 목록
	 * param : X
	 * return : 학생 리스트
	 * */
	@GetMapping("/student")
	public String studentList(Model model) throws Exception {
		List<UserVO> list = userService.listAll("student");
		
		model.addAttribute("list", list);
		
		return "user/student/list";
	}
	
	/*
	 * 학생 상세 정보
	 * param : uno
	 * return : 학생 정보
	 * */
	@GetMapping("/student/detail")
	public String studentDetail(@RequestParam("uno") Integer uno, Model model) throws Exception {
		UserVO vo = userService.read(uno);
		List<UserVO> parents = userService.parentsList(uno);
		
		model.addAttribute(vo);
		model.addAttribute("parents", parents);
		
		return "user/student/read";
	}
	
	/*
	 * 강사 목록
	 * param : X
	 * return : 강사 리스트
	 * */
	@GetMapping("/teacher")
	public String teacherList(Model model) throws Exception {
		List<UserVO> list = userService.listAll("teacher");
		
		model.addAttribute("list", list);
		
		return "user/teacher/list";
	}
	
	/*
	 * 강사 상세 정보
	 * param : uno
	 * return : 강사 정보
	 * */
	@GetMapping("/teacher/detail")
	public String teacherDetail(@RequestParam("uno") Integer uno, Model model) throws Exception {
		UserVO vo = userService.read(uno);
		
		model.addAttribute(vo);
		
		return "user/teacher/read";
	}
	
	/*
	 * 관리자 상세 정보
	 * param : X
	 * return : 관리자 정보
	 * */
	@GetMapping("/manager")
	public String managerDetail(Model model) throws Exception {
		UserVO vo = userService.read(1);
		
		model.addAttribute(vo);
		
		return "user/manager/read";
	}
}
