package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.DiaryVO;
import org.springframework.stereotype.Repository;

@Repository
public class DiaryDAOImpl implements DiaryDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.DiaryMapper";
	
	@Override
	public void create(DiaryVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public DiaryVO read(Integer dno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", dno);
	}

	@Override
	public void update(DiaryVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer dno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", dno);
	}

	@Override
	public List<DiaryVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

}
