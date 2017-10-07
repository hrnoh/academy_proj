package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.SponsorVO;
import org.springframework.stereotype.Repository;

@Repository
public class SponsorDAOImpl implements SponsorDAO {

	@Inject
	SqlSession session;
	
	private String namespace = "org.kpu.academy.mapper.SponsorMapper";
	
	@Override
	public void create(SponsorVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public SponsorVO read(Integer sponsorNum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", sponsorNum);
	}

	@Override
	public void update(SponsorVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer sponsorNum) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", sponsorNum);
	}

	@Override
	public List<SponsorVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

}
