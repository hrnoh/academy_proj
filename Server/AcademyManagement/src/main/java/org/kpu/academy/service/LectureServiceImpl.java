package org.kpu.academy.service;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.persistence.LectureDAO;
import org.springframework.stereotype.Service;

@Service
public class LectureServiceImpl implements LectureService {

	@Inject
	LectureDAO lectureDAO;
	
	@Override
	public void regist(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		lectureDAO.create(vo);
	}

	@Override
	public LectureVO read(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		return lectureDAO.read(lno);
	}

	@Override
	public void modify(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		lectureDAO.update(vo);
	}

	@Override
	public void remove(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		lectureDAO.delete(lno);
	}

	@Override
	public List<LectureVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return lectureDAO.listAll();
	}

}
