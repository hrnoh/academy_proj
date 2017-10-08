package org.kpu.academy;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.academy.domain.UserVO;
import org.kpu.academy.persistence.UserDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class UserDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(UserDAOTest.class);
	
	@Inject
	UserDAO dao;
	
	//@Test
	public void createTest() {
		UserVO vo = new UserVO();
		vo.setId("testID");
		vo.setPwd("testPwd");
		vo.setName("testName");
		vo.setAge(20);
		vo.setSex("남");
		vo.setEmail("test@test.com");
		vo.setAddress("testAddress");
		vo.setPhone("testPhone");
		vo.setmPhone("testMPhone");
		vo.setRole("teacher");
		
		try {
			dao.create(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void readTest() {
		UserVO vo;
		
		try {
			vo = dao.read(1);
			logger.info(vo.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void updateTest() {
		UserVO vo;
		
		try {
			vo = dao.read(5);
			vo.setName("modifiedName");
			dao.update(vo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	//@Test
	public void deleteTest() {
		try {
			dao.delete(5);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	@Test
	public void listAllTest() {
		List<UserVO> list;
		
		try {
			list = dao.listAll("student");
			
			for(UserVO vo : list)
				logger.info(vo.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
