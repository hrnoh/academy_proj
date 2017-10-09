package org.kpu.academy.controller;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.BoardVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.PageMaker;
import org.kpu.academy.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Inject
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@GetMapping("/")
	public String boardHome(Model model) {
		return "redirect:/board/list";
	}
	
	@GetMapping("/list")
	public String boardList(Criteria cri, Model model) throws Exception {
		logger.info("list");

		model.addAttribute("list", boardService.listPage(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(boardService.listCount());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "HomeEditting/lookup_notice_board";
	}
	
	@GetMapping("/regist")
	public String boardRegist(Criteria cri, Model model) throws Exception {
		logger.info("list");

		model.addAttribute("list", boardService.listPage(cri));
		
		return "HomeEditting/notice_writing";
	}
	
	@PostMapping("/regist")
	public String boardRegistPOST(BoardVO boardVO, RedirectAttributes rttr) throws Exception {
		logger.info("regist POST");
		
		boardService.regist(boardVO);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/read")
	public String boardRead(@RequestParam("bno") int bno,
	@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		model.addAttribute(boardService.read(bno));
		model.addAttribute("list", boardService.listPage(cri));
		
		return "HomeEditting/notice_read";
	}
	
	@GetMapping("/modify")
	public String modifyPagingGET(int bno,
			@ModelAttribute("cri") Criteria cri,
			Model model) throws Exception {
		
		model.addAttribute(boardService.read(bno));
		model.addAttribute("list", boardService.listPage(cri));
		
		return "HomeEditting/notice_correction";
	}
	
	@PostMapping("modify")
	public String modifyPagingPOST(BoardVO board,
			@ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		logger.info(cri.toString());
		boardService.modify(board);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		logger.info(rttr.toString());
		
		return "redirect:/board/list";
	}
	
	@PostMapping("/remove")
	public String boardRemovePOST(Integer bno, RedirectAttributes rttr) throws Exception {
		logger.info("remove POST");
		
		boardService.remove(bno);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/board/list";
	}
}
