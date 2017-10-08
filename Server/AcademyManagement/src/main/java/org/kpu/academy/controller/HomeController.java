package org.kpu.academy.controller;

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
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "redirect:home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String Home() {
		
		return "Home/home";
	}
	
	@RequestMapping(value = "/HomeEditting", method = RequestMethod.GET)
	public String HomeEditting() {
		
		return "redirect:HomeEditting/lookup_notice_board";
	}
	
	@RequestMapping(value = "/HomeEditting/lookup_notice_board", method = RequestMethod.GET)
	public String LookupNoticeBoard() {
		
		return "HomeEditting/lookup_notice_board";
	}
	
	@RequestMapping(value = "/HomeEditting/notice_writing", method = RequestMethod.GET)
	public String NoticeWriting() {
		
		return "HomeEditting/notice_writing";
	}
	
	@RequestMapping(value = "/HomeEditting/notice_correction", method = RequestMethod.GET)
	public String NoticeCorrection() {
		
		return "HomeEditting/notice_correction";
	}
	
}
