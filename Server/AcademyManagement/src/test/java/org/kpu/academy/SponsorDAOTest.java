package org.kpu.academy;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.academy.domain.SponsorVO;
import org.kpu.academy.domain.StudentVO;
import org.kpu.academy.persistence.SponsorDAO;
import org.kpu.academy.persistence.StudentDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class SponsorDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(SponsorDAOTest.class);
	
	@Inject
	SponsorDAO dao;
	
	//@Test
	public void createTest() {
		SponsorVO vo = new SponsorVO();
		vo.setSno(2);
		vo.setRelation("부");
		vo.setName("testName");
		vo.setSex("남");
		vo.setAge(5);
		vo.setmPhone("testPhone");
		
		try {
			dao.create(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//@Test
	public void readTest() {
		SponsorVO vo;
		
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
		SponsorVO vo;
		
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
		List<SponsorVO> list;
		
		try {
			list = dao.listAll();
			
			for(SponsorVO vo : list)
				logger.info(vo.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
