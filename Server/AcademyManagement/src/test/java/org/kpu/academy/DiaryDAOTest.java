package org.kpu.academy;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.academy.domain.BoardVO;
import org.kpu.academy.domain.DiaryVO;
import org.kpu.academy.persistence.BoardDAO;
import org.kpu.academy.persistence.DiaryDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class DiaryDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(DiaryDAOTest.class);
	
	@Inject
	DiaryDAO dao;
	
	//@Test
	public void createTest() {
		DiaryVO vo = new DiaryVO();
		vo.setContent("testContent");
		vo.setYear("2017");
		vo.setMonth("10");
		vo.setDay("10");
		vo.setUno(2);
		
		try {
			dao.create(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void readTest() {
		DiaryVO vo;
		
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
		DiaryVO vo;
		
		try {
			vo = dao.read(2);
			vo.setContent("modifiedContent");
			dao.update(vo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	@Test
	public void deleteTest() {
		try {
			dao.delete(2);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	//@Test
	public void listAllTest() {
		List<DiaryVO> list;
		
		try {
			list = dao.listAll();
			
			for(DiaryVO vo : list)
				logger.info(vo.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
