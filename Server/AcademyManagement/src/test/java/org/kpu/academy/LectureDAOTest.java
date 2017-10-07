package org.kpu.academy;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.domain.StudentVO;
import org.kpu.academy.domain.TeacherVO;
import org.kpu.academy.persistence.LectureDAO;
import org.kpu.academy.persistence.StudentDAO;
import org.kpu.academy.persistence.TeacherDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class LectureDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(LectureDAOTest.class);
	
	@Inject
	LectureDAO dao;
	
	//@Test
	public void createTest() {
		LectureVO vo = new LectureVO();
		vo.setLname("testLName");
		vo.setTno(1);
		vo.setDay("testDay");
		vo.setStartTime("14:00");
		vo.setEndTime("15:00");
		vo.setPersonnel(5);
		vo.setRoom("G105");
		vo.setTarget(4);
		
		try {
			dao.create(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void readTest() {
		LectureVO vo;
		
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
		LectureVO vo;
		
		try {
			vo = dao.read(1);
			vo.setLname("modifiedName");
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
		List<LectureVO> list;
		
		try {
			list = dao.listAll();
			
			for(LectureVO vo : list)
				logger.info(vo.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
