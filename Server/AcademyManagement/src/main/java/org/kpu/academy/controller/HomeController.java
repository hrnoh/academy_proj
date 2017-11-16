package org.kpu.academy.controller;


import javax.inject.Inject;

import org.kpu.academy.domain.Criteria;
import org.kpu.academy.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")
public class HomeController {
	
	@Inject
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "redirect:home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String Home(Model model) throws Exception {
		
		Criteria cri = new Criteria();
		model.addAttribute("list", boardService.listPage(cri));
		
		return "home/home";
	}
	
	@RequestMapping(value = "/lecture", method = RequestMethod.GET)
	public String Lecture(Model model) throws Exception {
		
		return "lecture/student";
	}
	
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String Manager(Model model) throws Exception {
		
		return "manager/info";
	}
	
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String Notice(Model model) throws Exception {
		
		return "notice/list";
	}
	
	@RequestMapping(value = "/operator", method = RequestMethod.GET)
	public String Operator(Model model) throws Exception {
		
		return "operator/list";
	}
	
	@RequestMapping(value = "/parents", method = RequestMethod.GET)
	public String Parents(Model model) throws Exception {
		
		return "parents/children_score";
	}
	
	@RequestMapping(value = "/streaming", method = RequestMethod.GET)
	public String Streaming(Model model) throws Exception {
		
		return "streaming/streaming";
	}
	
	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public String Student(Model model) throws Exception {
		
		return "student/info";
	}
}
