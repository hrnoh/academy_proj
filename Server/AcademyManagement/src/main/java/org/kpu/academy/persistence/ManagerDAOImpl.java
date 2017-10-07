package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.ManagerVO;
import org.springframework.stereotype.Repository;

@Repository
public class ManagerDAOImpl implements ManagerDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.ManagerMapper";
	
	@Override
	public void create(ManagerVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public ManagerVO read(Integer mno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", mno);
	}

	@Override
	public void update(ManagerVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer mno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", mno);
	}

	@Override
	public List<ManagerVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

}
