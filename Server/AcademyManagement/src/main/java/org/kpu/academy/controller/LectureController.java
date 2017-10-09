package org.kpu.academy.controller;

import javax.inject.Inject;

import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.domain.PageMaker;
import org.kpu.academy.service.LectureService;
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
@RequestMapping("/lecture")
public class LectureController {
	
	@Inject
	private LectureService lectureService;
	
	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@GetMapping("/")
	public String lectureHome() throws Exception {
		return "redirect:/lecture/list";
	}
	
	@GetMapping("/regist")
	public String registerGET(LectureVO lectureVO, Model model) throws Exception {
		logger.info("register get ..............");
		
		return "/lecture/regist";
	}
	
	@PostMapping("/regist")
	public String registerPOST(LectureVO lectureVO, RedirectAttributes rttr) throws Exception {
		logger.info("regist post ...............");
		logger.info(lectureVO.toString());
		
		lectureService.regist(lectureVO);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/list";
	}
	
	@GetMapping("/read")
	public void read(@RequestParam("lno") int lno, 
			@ModelAttribute("cri") Criteria cri, 
			Model model) throws Exception {
		
		model.addAttribute(lectureService.read(lno));
	}
	
	@GetMapping("/modify")
	public void modifyPagingGET(@RequestParam("lno") int lno,
			@ModelAttribute("cri") Criteria cri,
			Model model) throws Exception {
		
		model.addAttribute(lectureService.read(lno));
	}
	
	@PostMapping("/modify")
	public String modifyPagingPOST(LectureVO lectureVO,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		lectureService.modify(lectureVO);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/list";
	}
	
	
	@PostMapping("/remove")
	public String remove(@RequestParam("lno") int lno,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		lectureService.remove(lno);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/list";
	}
	
	
	@GetMapping("/list")
	public void listPage(Criteria cri, Model model) throws Exception {
		logger.info(cri.toString());
		
		model.addAttribute("list", lectureService.listPage(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(lectureService.listCount());
		
		model.addAttribute("pageMaker", pageMaker);
	}
}
