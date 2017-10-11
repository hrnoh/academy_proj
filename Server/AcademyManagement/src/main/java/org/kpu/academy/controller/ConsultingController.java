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
		
		return "redirect:/consulting/manager/view_application_list";
	}
	
	@RequestMapping(value = "/manager/list", method = RequestMethod.GET)
	public String MViewApplicationList(Model model) throws Exception {
		
		return "consulting/manager/view_application_list";
	}
	
	@RequestMapping(value = "/teacher/list", method = RequestMethod.GET)
	public String TViewApplicationList(Model model) throws Exception {
		
		return "consulting/teacher/view_application_list";
	}
	
	@RequestMapping(value = "/student/list", method = RequestMethod.GET)
	public String SViewApplicationList(Model model) throws Exception {
		
		return "consulting/student/view_application_list";
	}
	
	@RequestMapping(value = "/manager/read", method = RequestMethod.GET)
	public String ApplicationRead(Model model) throws Exception {
		
		return "consulting/manager/application_read";
	}
	
	@RequestMapping(value = "/manager/regist", method = RequestMethod.GET)
	public String ConsultingRegist(Model model) throws Exception {
		
		return "consulting/manager/consulting_regist";
	}
	
	@RequestMapping(value = "/student/apply", method = RequestMethod.GET)
	public String ConsultingApply(Model model) throws Exception {
		
		return "consulting/student/consulting_apply";
	}
}
