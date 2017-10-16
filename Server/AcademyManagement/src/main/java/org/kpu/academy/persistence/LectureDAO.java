package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.AttendanceVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.domain.TakeCourseVO;

public interface LectureDAO {
	public void create(LectureVO vo) throws Exception;
	
	public LectureVO read(Integer lno) throws Exception;
	
	public void update(LectureVO vo) throws Exception;
	
	public void delete(Integer lno) throws Exception;
	
	public List<LectureVO> listAll() throws Exception;
	
	public List<LectureVO> listPage(Criteria cri) throws Exception;
	
	public List<LectureVO> listPageByUno(Criteria cri, int uno) throws Exception;
	
	public List<LectureVO> listPageByUnoForStudent(Criteria cri, int uno) throws Exception;
	
	public int listCount() throws Exception;
	
	public int listCountByUno(int uno) throws Exception;
	
	public int listCountByUnoForStudent(int uno) throws Exception;
	
	// 수강생
	public void sCreate(TakeCourseVO vo) throws Exception;
	
	public TakeCourseVO sRead(Integer lno, Integer uno) throws Exception;
	
	public void sUpdate(TakeCourseVO vo) throws Exception;
	
	public void sDelete(Integer lno, Integer uno) throws Exception;
	
	public List<TakeCourseVO> sList(Criteria cri, Integer lno) throws Exception;
	
	public int sListCount(Integer lno) throws Exception;
	
	// 출석
	public void aCreate(AttendanceVO vo) throws Exception;
	
	public AttendanceVO aRead(Integer ano) throws Exception;
	
	public void aUpdate(AttendanceVO vo) throws Exception;
	
	public void aDelete(Integer ano) throws Exception;
	
	public List<AttendanceVO> aList(Integer lno, Integer uno) throws Exception;
}
