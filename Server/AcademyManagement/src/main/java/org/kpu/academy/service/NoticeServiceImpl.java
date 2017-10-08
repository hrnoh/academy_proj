package org.kpu.academy.service;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.NoticeVO;
import org.kpu.academy.persistence.NoticeDAO;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Inject
	NoticeDAO noticeDAO;
	
	@Override
	public void regist(NoticeVO vo) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.create(vo);
	}

	@Override
	public NoticeVO read(Integer nno) throws Exception {
		// TODO Auto-generated method stub
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
	public List<NoticeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.listAll();
	}

}
