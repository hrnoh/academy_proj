package org.kpu.academy.controller;

import javax.inject.Inject;

import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.NoticeVO;
import org.kpu.academy.domain.PageMaker;
import org.kpu.academy.service.LectureService;
import org.kpu.academy.service.NoticeService;
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
@RequestMapping("/lecture/notice")
public class NoticeController {
	@Inject
	private NoticeService noticeService;
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@GetMapping("/")
	public String noticeHome(@RequestParam("lno") int lno, RedirectAttributes rttr) throws Exception {
		rttr.addAttribute("lno", lno);
		
		return "redirect:/lecture/notice/list";
	}
	
	@GetMapping("/regist")
	public String registGET(@ModelAttribute("noticeVO") NoticeVO noticeVO, Model model) throws Exception {
		logger.info("register get ..............");
		
		return "/lecture/notice/regist";
	}
	
	@PostMapping("/regist")
	public String registPOST(NoticeVO noticeVO, RedirectAttributes rttr) throws Exception {
		logger.info("regist post ...............");
		logger.info(noticeVO.toString());
		
		noticeService.regist(noticeVO);
		
		rttr.addAttribute("lno", noticeVO.getLno());
		rttr.addAttribute("lname", noticeVO.getLname());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/notice/list";
	}
	
	@GetMapping("/read")
	public void read(@RequestParam("nno") int nno,
			@ModelAttribute("cri") Criteria cri, 
			Model model) throws Exception {
		
		model.addAttribute(noticeService.read(nno));
	}
	
	@GetMapping("/modify")
	public void modifyPagingGET(@RequestParam("nno") int nno,
			@ModelAttribute("cri") Criteria cri,
			Model model) throws Exception {
		
		model.addAttribute(noticeService.read(nno));
	}
	
	@PostMapping("/modify")
	public String modifyPagingPOST(NoticeVO noticeVO,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		noticeService.modify(noticeVO);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("lno", noticeVO.getLno());
		rttr.addAttribute("lname", noticeVO.getLname());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/notice/list";
	}
	
	
	@PostMapping("/remove")
	public String remove(NoticeVO noticeVO,
			@RequestParam("nno") int nno,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		noticeService.remove(nno);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("lno", noticeVO.getLno());
		rttr.addAttribute("lname", noticeVO.getLname());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/notice/list";
	}
	
	
	@GetMapping("/list")
	public void list(@ModelAttribute("noticeVO") NoticeVO noticeVO,
			Criteria cri, Model model) throws Exception {
		logger.info("lno:"+noticeVO.toString());
		logger.info(cri.toString());
		
		
		model.addAttribute("noticeVO", noticeVO);
		model.addAttribute("list", noticeService.listPage(cri, noticeVO.getLno()));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(noticeService.listCount(noticeVO.getLno()));
		
		model.addAttribute("pageMaker", pageMaker);
	}
}
