package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.StudentVO;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.StudentMapper";
	
	@Override
	public void create(StudentVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public StudentVO read(Integer sno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", sno);
	}

	@Override
	public void update(StudentVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer sno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", sno);
	}

	@Override
	public List<StudentVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

}
