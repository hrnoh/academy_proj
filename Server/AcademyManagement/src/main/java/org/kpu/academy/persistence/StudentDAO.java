package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.StudentVO;

public interface StudentDAO {
	public void create(StudentVO vo) throws Exception;
	
	public StudentVO read(Integer sno) throws Exception;
	
	public void update(StudentVO vo) throws Exception;
	
	public void delete(Integer sno) throws Exception;
	
	public List<StudentVO> listAll() throws Exception;
}
