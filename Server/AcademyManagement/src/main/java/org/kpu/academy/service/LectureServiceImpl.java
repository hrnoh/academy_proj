package org.kpu.academy.service;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.AttendanceVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.domain.TakeCourseVO;
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

	@Override
	public List<LectureVO> listPage(Criteria cri) throws Exception {
		return lectureDAO.listPage(cri);
	}
	
	@Override
	public int listCount() throws Exception {
		return lectureDAO.listCount();
	}
	
	// 수강생
	@Override
	public void sRegist(TakeCourseVO vo) throws Exception {
		lectureDAO.sCreate(vo);
	}
	
	@Override
	public TakeCourseVO sRead(Integer lno, Integer uno) throws Exception {
		return lectureDAO.sRead(lno, uno);
	}
	
	@Override
	public void sModify(TakeCourseVO vo) throws Exception {
		lectureDAO.sUpdate(vo);
	}
	
	@Override
	public void sRemove(Integer lno, Integer uno) throws Exception {
		lectureDAO.sDelete(lno, uno);
	}
	
	@Override
	public List<TakeCourseVO> sList(Criteria cri, Integer lno) throws Exception {
		return lectureDAO.sList(cri, lno);
	}
	
	@Override		
	public int sListCount(Integer lno) throws Exception {
		return lectureDAO.sListCount(lno);
	}	
	
	@Override
	public void aRegist(AttendanceVO vo) throws Exception {
		lectureDAO.aCreate(vo);
	}
	
	@Override
	public AttendanceVO aRead(Integer ano) throws Exception {
		return lectureDAO.aRead(ano);
	}
	
	@Override
	public void aModify(AttendanceVO vo) throws Exception {
		lectureDAO.aUpdate(vo);
	}
	
	@Override
	public void aRemove(Integer ano) throws Exception {
		lectureDAO.aDelete(ano);
	}
	
	@Override
	public List<AttendanceVO> aList(Integer lno, Integer uno) throws Exception {
		return lectureDAO.aList(lno, uno);
	}
}
