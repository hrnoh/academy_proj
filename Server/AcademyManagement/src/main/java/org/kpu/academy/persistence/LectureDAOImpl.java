package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.LectureVO;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAOImpl implements LectureDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.LectureMapper";
	
	@Override
	public void create(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public LectureVO read(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", lno);
	}

	@Override
	public void update(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", lno);
	}

	@Override
	public List<LectureVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

}
