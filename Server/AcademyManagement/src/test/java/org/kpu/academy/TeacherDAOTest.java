package org.kpu.academy;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.academy.domain.StudentVO;
import org.kpu.academy.domain.TeacherVO;
import org.kpu.academy.persistence.StudentDAO;
import org.kpu.academy.persistence.TeacherDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TeacherDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(TeacherDAOTest.class);
	
	@Inject
	TeacherDAO dao;
	
	//@Test
	public void createTest() {
		TeacherVO vo = new TeacherVO();
		vo.setId("testID");
		vo.setPwd("testPwd");
		vo.setName("testName");
		vo.setAge(20);
		vo.setSex("남");
		vo.setEmail("test@test.com");
		vo.setAddress("testAddress");
		vo.setPhone("testPhone");
		vo.setmPhone("testMPhone");
		
		try {
			dao.create(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void readTest() {
		TeacherVO vo;
		
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
		TeacherVO vo;
		
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
	
	//@Test
	public void listAllTest() {
		List<TeacherVO> list;
		
		try {
			list = dao.listAll();
			
			for(TeacherVO vo : list)
				logger.info(vo.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
