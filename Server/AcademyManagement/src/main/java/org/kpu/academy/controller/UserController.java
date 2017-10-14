package org.kpu.academy.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kpu.academy.domain.UserVO;
import org.kpu.academy.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String studentDetail(@ModelAttribute("uno") Integer uno, Model model) throws Exception {
		UserVO vo = userService.read(uno);
		List<UserVO> parents = userService.parentsList(uno);
		
		model.addAttribute(vo);
		model.addAttribute("parents", parents);
		
		return "user/student/read";
	}
	
	/*
	 * 유저 등록(GET)
	 * */
	@GetMapping("/student/regist")
	public String studentRegistGET() throws Exception {
		return "user/student/regist";
	}
	
	/*
	 * 유저 등록(POST)
	 * param : UserVO
	 * return : msg
	 * */
	@PostMapping("/student/regist")
	public String studentRegistPOST(UserVO userVO, RedirectAttributes rttr) throws Exception {
		logger.info(userVO.toString());
		userService.regist(userVO);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/user/student";
	}
	
	/*
	 * 유저 수정(POST)
	 * param : UserVO
	 * return : msg
	 * */
	@PostMapping("/student/modify")
	public String studentModifyPOST(UserVO userVO, String loginRole, RedirectAttributes rttr) throws Exception {
		logger.info(userVO.toString());
		String returnVal;
		
		if(loginRole != null && loginRole.equals("학생"))
			returnVal = "redirect:/user/student/detail?uno=" + userVO.getUno();
		else
			returnVal = "redirect:/user/student";
		
		userService.modify(userVO);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return returnVal;
	}
	
	/*
	 * 유저 삭제(POST)
	 * param : uno
	 * return : msg
	 * */
	@PostMapping("/student/remove")
	public String studentRemovePOST(@RequestParam("uno") Integer uno, RedirectAttributes rttr) throws Exception {
		logger.info("유저 삭제 - " + uno);
		userService.remove(uno);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/user/student";
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
	public String teacherDetail(@ModelAttribute("uno") Integer uno, Model model) throws Exception {
		UserVO vo = userService.read(uno);
		
		model.addAttribute(vo);
		
		return "user/teacher/read";
	}
	
	/*
	 * 강사 등록(GET)
	 * */
	@GetMapping("/teacher/regist")
	public String teacherRegistGET() throws Exception {
		return "user/teacher/regist";
	}
	
	/*
	 * 강사 등록(POST)
	 * param : UserVO
	 * return : msg
	 * */
	@PostMapping("/teacher/regist")
	public String teacherRegistPOST(UserVO userVO, RedirectAttributes rttr) throws Exception {
		logger.info(userVO.toString());
		userService.regist(userVO);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/user/teacher";
	}
	
	/*
	 * 강사 수정(POST)
	 * param : UserVO
	 * return : msg
	 * */
	@PostMapping("/teacher/modify")
	public String teacherModifyPOST(UserVO userVO, RedirectAttributes rttr) throws Exception {
		logger.info(userVO.toString());
		userService.modify(userVO);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/user/teacher";
	}
	
	/*
	 * 유저 삭제(POST)
	 * param : uno
	 * return : msg
	 * */
	@PostMapping("/teacher/remove")
	public String teacherRemovePOST(@RequestParam("uno") Integer uno, RedirectAttributes rttr) throws Exception {
		logger.info("유저 삭제 - " + uno);
		userService.remove(uno);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/user/teacher";
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
	
	/*
	 * 관리자 수정(POST)
	 * param : UserVO
	 * return : msg
	 * */
	@PostMapping("/manager/modify")
	public String managerModifyPOST(UserVO userVO, RedirectAttributes rttr) throws Exception {
		logger.info(userVO.toString());
		userService.modify(userVO);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/user/manager";
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request,
			@RequestParam("id") String id,
			@RequestParam("pwd") String pwd,
			RedirectAttributes rttr) throws Exception {
		UserVO vo = userService.login(id, pwd);
		
		if(vo != null) {
			request.getSession().setAttribute("login", vo);
			rttr.addFlashAttribute("loginMsg", "SUCCESS");
		}
		else {
			rttr.addFlashAttribute("loginMsg", "FAIL");
		}
		
		return "redirect:/home";
	}
	
	@PostMapping("/logout")
	public String logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		
		logger.info("logout!");
		
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		
		return "redirect:/home";
	}
}
