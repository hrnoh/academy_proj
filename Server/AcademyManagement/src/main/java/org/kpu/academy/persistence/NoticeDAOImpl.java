package org.kpu.academy.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.Criteria;
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
	public void updateViewCnt(Integer nno) throws Exception {
		session.update(namespace + ".updateViewCnt", nno);
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
	public List<NoticeVO> listAll(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll", lno);
	}
	
	@Override
	public List<NoticeVO> listPage(Criteria cri, Integer lno) throws Exception {
		Map<String, Integer> params = new HashMap<>();
		params.put("pageStart", cri.getPageStart());
		params.put("perPageNum", cri.getPerPageNum());
		params.put("lno", lno);
		
		return session.selectList(namespace + ".listPage", params);
	}

	@Override
	public int listCount(Integer lno) throws Exception {
		return session.selectOne(namespace + ".listCount", lno);
	}

}
