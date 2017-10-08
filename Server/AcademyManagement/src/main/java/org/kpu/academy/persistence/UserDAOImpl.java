package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.UserMapper";
	
	@Override
	public void create(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public UserVO read(Integer uno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", uno);
	}

	@Override
	public void update(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer uno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", uno);
	}

	@Override
	public List<UserVO> listAll(String role) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll", role);
	}
}