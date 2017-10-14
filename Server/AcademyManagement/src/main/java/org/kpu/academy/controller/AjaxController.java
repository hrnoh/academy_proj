package org.kpu.academy.controller;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.UserVO;
import org.kpu.academy.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ajax")
public class AjaxController {
	
	private static final Logger logger = LoggerFactory.getLogger(AjaxController.class);
	
	@Inject
	private UserService userService;
	
	@GetMapping("/studentsByName/{name}")
	public ResponseEntity<List<UserVO>> studentsByName(@PathVariable("name") String name) {
		List<UserVO> list;
		ResponseEntity<List<UserVO>> entity = null;
		
		try {
			list = userService.studentsByName(name);
			entity = new ResponseEntity<List<UserVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@GetMapping("/teachersByName/{name}")
	public ResponseEntity<List<UserVO>> teachersByName(@PathVariable("name") String name) {
		List<UserVO> list;
		ResponseEntity<List<UserVO>> entity = null;
		
		try {
			list = userService.teachersByName(name);
			entity = new ResponseEntity<List<UserVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
