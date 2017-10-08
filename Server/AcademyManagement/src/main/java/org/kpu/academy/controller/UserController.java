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

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Inject
	private UserService service;
	
	public static final Logger logger = LoggerFactory.getLogger(UserController.class);

	/*
	 * 학생 목록
	 * param : X
	 * return : 학생 리스트
	 * */
	@GetMapping("/student")
	public String studentList(Model model) throws Exception {
		List<UserVO> list = service.listAll("student");
		
		model.addAttribute("list", list);
		
		return "user/student/list";
	}
	
	/*
	 * 강사 목록
	 * param : X
	 * return : 강사 리스트
	 * */
	@GetMapping("/teacher")
	public String teacherList(Model model) throws Exception {
		List<UserVO> list = service.listAll("teacher");
		
		model.addAttribute("list", list);
		
		return "user/teacher/list";
	}
}
