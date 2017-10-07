package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.TeacherVO;
import org.springframework.stereotype.Repository;

@Repository
public class TeacherDAOImpl implements TeacherDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.TeacherMapper";
	
	@Override
	public void create(TeacherVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public TeacherVO read(Integer tno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", tno);
	}

	@Override
	public void update(TeacherVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer tno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", tno);
	}

	@Override
	public List<TeacherVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

}
