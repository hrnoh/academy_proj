package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.NoticeVO;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.NoticeMapper";

	
	@Override
	public void create(NoticeVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public NoticeVO read(Integer nno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", nno);
	}

	@Override
	public void update(NoticeVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer nno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", nno);
	}

	@Override
	public List<NoticeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

}
