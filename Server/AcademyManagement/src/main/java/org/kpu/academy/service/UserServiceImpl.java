package org.kpu.academy.service;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.UserVO;
import org.kpu.academy.persistence.UserDAO;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO userDAO;
	
	@Override
	public void regist(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		userDAO.create(vo);
	}

	@Override
	public UserVO read(Integer uno) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.read(uno);
	}

	@Override
	public void modify(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		userDAO.update(vo);
	}

	@Override
	public void remove(Integer uno) throws Exception {
		// TODO Auto-generated method stub
		userDAO.delete(uno);
	}

	@Override
	public List<UserVO> listAll(String role) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.listAll(role);
	}

	@Override
	public List<UserVO> parentsList(Integer uno) throws Exception {
		return userDAO.parentsList(uno);
	}
	
	@Override
	public List<UserVO> studentsByName(String name) throws Exception {
		return userDAO.studentsByName(name);
	}
	
	@Override
	public List<UserVO> teachersByName(String name) throws Exception {
		return userDAO.teachersByName(name);
	}
}
