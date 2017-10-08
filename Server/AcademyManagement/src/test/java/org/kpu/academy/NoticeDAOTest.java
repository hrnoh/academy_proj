package org.kpu.academy;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.academy.domain.BoardVO;
import org.kpu.academy.domain.NoticeVO;
import org.kpu.academy.persistence.BoardDAO;
import org.kpu.academy.persistence.NoticeDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class NoticeDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(NoticeDAOTest.class);
	
	@Inject
	NoticeDAO dao;
	
	//@Test
	public void createTest() {
		NoticeVO vo = new NoticeVO();
		vo.setTitle("testTitle");
		vo.setContent("testContent");
		vo.setUno(2);
		vo.setLno(2);
		
		try {
			dao.create(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void readTest() {
		NoticeVO vo;
		
		try {
			vo = dao.read(3);
			logger.info(vo.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void updateTest() {
		NoticeVO vo;
		
		try {
			vo = dao.read(3);
			vo.setTitle("modifiedTitle");
			dao.update(vo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	//@Test
	public void deleteTest() {
		try {
			dao.delete(3);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	//@Test
	public void listAllTest() {
		List<NoticeVO> list;
		
		try {
			list = dao.listAll();
			
			for(NoticeVO vo : list)
				logger.info(vo.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
