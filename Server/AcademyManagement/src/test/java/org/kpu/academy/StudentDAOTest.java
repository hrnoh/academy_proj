package org.kpu.academy;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.academy.domain.StudentVO;
import org.kpu.academy.persistence.StudentDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class StudentDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(StudentDAOTest.class);
	
	@Inject
	StudentDAO dao;
	
	@Test
	public void createTest() {
		StudentVO vo = new StudentVO();
		vo.setId("testID");
		vo.setPwd("testPwd");
		vo.setName("testName");
		vo.setGrade(3);
		vo.setAge(20);
		vo.setSex("남");
		vo.setEmail("test@test.com");
		vo.setAddress("testAddress");
		vo.setPhone("testPhone");
		vo.setmPhone("testMPhone");
		vo.setStatus("수강");
		
		try {
			dao.create(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void readTest() {
		StudentVO vo;
		
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
		StudentVO vo;
		
		try {
			vo = dao.read(1);
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
			dao.delete(1);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	@Test
	public void listAllTest() {
		List<StudentVO> list;
		
		try {
			list = dao.listAll();
			
			for(StudentVO vo : list)
				logger.info(vo.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
