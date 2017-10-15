package org.kpu.academy.controller;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.ConsultingSearchCriteria;
import org.kpu.academy.domain.ConsultingVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.PageMaker;
import org.kpu.academy.domain.SearchCriteria;
import org.kpu.academy.service.ConsultingService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/consulting")
public class ConsultingController {

	@Inject
	private ConsultingService consultingService;
	
	private static final Logger logger = LoggerFactory.getLogger(ConsultingController.class);
	
	@GetMapping("/list")
	public String listPage(@ModelAttribute("cri") ConsultingSearchCriteria cri,
			Model model) throws Exception {
		logger.info(cri.toString());
		
		List<ConsultingVO> list = consultingService.list(cri);
		
		model.addAttribute("list", list);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(consultingService.listCount(cri));
		
		return "consulting/list";
	}
	
	@GetMapping("/read")
	public String read(@RequestParam("cno") int cno,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute(consultingService.read(cno));
		
		return "consulting/read";
	}
	
	@GetMapping("/regist")
	public String regist() throws Exception {
		return "consulting/regist";
	}
	
	@PostMapping("/regist")
	public String registPOST(ConsultingVO consultingVO, 
			@RequestParam("loginRole") String loginRole,
			RedirectAttributes rttr) throws Exception {
		
		logger.info(consultingVO.toString());
		logger.info(loginRole);
		consultingService.regist(consultingVO);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		rttr.addAttribute("searchType", "counselor");
		rttr.addAttribute("keyword", consultingVO.getCounselor());
		rttr.addAttribute("loginRole", loginRole);
		
		return "redirect:/consulting/list";
	}
	
	@GetMapping("/modify")
	public String moidfy(@RequestParam("cno") int cno,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		model.addAttribute(consultingService.read(cno));
		
		return "consulting/modify";
	}
	
	@PostMapping("/modify")
	public String modify(ConsultingVO consultingVO,
			@RequestParam("loginRole") String loginRole,
			SearchCriteria cri,
			RedirectAttributes rttr) throws Exception {
		logger.info(consultingVO.toString());
		consultingService.modify(consultingVO);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("loginRole", loginRole);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/consulting/list";
	}
	
	@PostMapping("/remove")
	public String delete(@RequestParam("cno") int cno,
			@RequestParam("loginRole") String loginRole,
			SearchCriteria cri,
			RedirectAttributes rttr) throws Exception {
		logger.info("delete - " + cno);
		consultingService.remove(cno);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("loginRole", loginRole);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/consulting/list";
	}
}
