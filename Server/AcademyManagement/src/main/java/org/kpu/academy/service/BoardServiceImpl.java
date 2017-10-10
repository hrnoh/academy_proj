package org.kpu.academy.service;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.BoardVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.persistence.BoardDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDAO;
	
	@Override
	public void regist(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.create(vo);
	}

	@Transactional
	@Override
	public BoardVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.updateViewCnt(bno);
		return boardDAO.read(bno);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.update(vo);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.delete(bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listAll();
	}

	@Override
	public List<BoardVO> listPage(Criteria cri) throws Exception {
		return boardDAO.listPage(cri);
	}
	
	@Override
	public Integer listCount() throws Exception {
		return boardDAO.listCount();
	}
}
