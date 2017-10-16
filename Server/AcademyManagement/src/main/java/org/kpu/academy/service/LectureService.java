package org.kpu.academy.service;

import java.util.List;

import org.kpu.academy.domain.AttendanceVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.domain.TakeCourseVO;

public interface LectureService {
	public void regist(LectureVO vo) throws Exception;
	
	public LectureVO read(Integer lno) throws Exception;
	
	public void modify(LectureVO vo) throws Exception;
	
	public void remove(Integer lno) throws Exception;
	
	public List<LectureVO> listAll() throws Exception;
	
	public List<LectureVO> listPage(Criteria cri, int uno, String role) throws Exception;
	
	public int listCount(int uno, String role) throws Exception;
	
	// 수강생
	public void sRegist(TakeCourseVO vo) throws Exception;
		
	public TakeCourseVO sRead(Integer lno, Integer uno) throws Exception;
		
	public void sModify(TakeCourseVO vo) throws Exception;
		
	public void sRemove(Integer lno, Integer uno) throws Exception;
		
	public List<TakeCourseVO> sList(Criteria cri, Integer lno) throws Exception;
		
	public int sListCount(Integer lno) throws Exception;
	
	//출석
	public void aRegist(AttendanceVO vo) throws Exception;
	
	public AttendanceVO aRead(Integer ano) throws Exception;
	
	public void aModify(AttendanceVO vo) throws Exception;
	
	public void aRemove(Integer ano) throws Exception;
	
	public List<AttendanceVO> aList(Integer lno, Integer uno) throws Exception;
}
