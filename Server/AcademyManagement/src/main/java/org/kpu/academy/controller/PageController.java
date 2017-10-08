package org.kpu.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
	
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
