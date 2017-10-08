package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.UserVO;

public interface UserDAO {
	public void create(UserVO vo) throws Exception;
	
	public UserVO read(Integer uno) throws Exception;
	
	public void update(UserVO vo) throws Exception;
	
	public void delete(Integer uno) throws Exception;
	
	public List<UserVO> listAll(String role) throws Exception;
	
	public List<UserVO> parentsList(Integer uno) throws Exception;
}
