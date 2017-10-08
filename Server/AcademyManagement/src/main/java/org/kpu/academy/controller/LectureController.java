package org.kpu.academy.controller;

import javax.inject.Inject;

import org.kpu.academy.service.LectureService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lecture/*")
public class LectureController {
	
	@Inject
	private LectureService lectureService;
	
	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@GetMapping("/")
	public String lectureList() throws Exception {
		return "Class/lookup_class";
	}
}
