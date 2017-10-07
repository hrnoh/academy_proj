package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.SponsorVO;


public interface SponsorDAO {
	public void create(SponsorVO vo) throws Exception;
	
	public SponsorVO read(Integer sponsorNum) throws Exception;
	
	public void update(SponsorVO vo) throws Exception;
	
	public void delete(Integer sponsorNum) throws Exception;
	
	public List<SponsorVO> listAll() throws Exception;
}
