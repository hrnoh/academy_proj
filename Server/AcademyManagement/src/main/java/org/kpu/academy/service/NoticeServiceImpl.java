package org.kpu.academy.service;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.NoticeVO;
import org.kpu.academy.persistence.NoticeDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Inject
	NoticeDAO noticeDAO;
	
	@Override
	public void regist(NoticeVO vo) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.create(vo);
	}

	@Transactional
	@Override
	public NoticeVO read(Integer nno) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.updateViewCnt(nno);
		return noticeDAO.read(nno);
	}

	@Override
	public void modify(NoticeVO vo) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.update(vo);
	}

	@Override
	public void remove(Integer nno) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.delete(nno);
	}

	@Override
	public List<NoticeVO> listAll(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.listAll(lno);
	}

	public List<NoticeVO> listPage(Criteria cri, Integer lno) throws Exception {
		return noticeDAO.listPage(cri, lno);
	}
	
	public int listCount(Integer lno) throws Exception {
		return noticeDAO.listCount(lno);
	}
}
