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
@RequestMapping(value = "/consulting")
public class ConsultingController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Consulting(Model model) throws Exception {
		
		return "redirect:/consulting/list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String MViewApplicationList(Model model) throws Exception {
		
		return "consulting/list";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String ApplicationRead(Model model) throws Exception {
		
		return "consulting/read";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String ConsultingRegist(Model model) throws Exception {
		
		return "consulting/regist";
	}
	
	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public String ConsultingApply(Model model) throws Exception {
		
		return "consulting/apply";
	}
}
