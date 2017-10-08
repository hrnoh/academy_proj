package org.kpu.academy.service;

import java.util.List;

import org.kpu.academy.domain.UserVO;

public interface UserService {
	public void regist(UserVO vo) throws Exception;
	
	public UserVO read(Integer uno) throws Exception;
	
	public void modify(UserVO vo) throws Exception;
	
	public void remove(Integer uno) throws Exception;
	
	public List<UserVO> listAll(String role) throws Exception;
	
	public List<UserVO> parentsList(Integer uno) throws Exception;
}
