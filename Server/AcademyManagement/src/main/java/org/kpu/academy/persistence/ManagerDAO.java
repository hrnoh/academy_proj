package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.ManagerVO;

public interface ManagerDAO {
	public void create(ManagerVO vo) throws Exception;
	
	public ManagerVO read(Integer mno) throws Exception;
	
	public void update(ManagerVO vo) throws Exception;
	
	public void delete(Integer mno) throws Exception;
	
	public List<ManagerVO> listAll() throws Exception;
}
