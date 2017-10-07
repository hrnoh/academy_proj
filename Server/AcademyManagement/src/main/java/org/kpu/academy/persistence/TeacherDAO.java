package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.TeacherVO;

public interface TeacherDAO {
	public void create(TeacherVO vo) throws Exception;
	
	public TeacherVO read(Integer tno) throws Exception;
	
	public void update(TeacherVO vo) throws Exception;
	
	public void delete(Integer tno) throws Exception;
	
	public List<TeacherVO> listAll() throws Exception;
}
