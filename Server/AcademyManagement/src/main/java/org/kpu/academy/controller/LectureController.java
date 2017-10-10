package org.kpu.academy.controller;

import javax.inject.Inject;

import org.kpu.academy.domain.AttendanceVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.domain.NoticeVO;
import org.kpu.academy.domain.PageMaker;
import org.kpu.academy.domain.TakeCourseVO;
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
	
/*==================================== 수강생 =========================================*/
	@GetMapping("/students")
	public String lectureStudentsHome(@RequestParam("lno") int lno,
			@RequestParam("uno") int uno,
			RedirectAttributes rttr) throws Exception {
		rttr.addAttribute("lno", lno);
		
		return "redirect:/lecture/students/list";
	}
	
	@GetMapping("/students/regist")
	public String studentsRegistGET(@ModelAttribute("takeCourseVO") TakeCourseVO takeCourseVO, Model model) throws Exception {
		logger.info("register get ..............");
		
		return "/lecture/students/regist";
	}
	
	@PostMapping("/students/regist")
	public String studentsRegistPOST(TakeCourseVO takeCourseVO, RedirectAttributes rttr) throws Exception {
		logger.info("regist post ...............");
		logger.info(takeCourseVO.toString());
		
		lectureService.sRegist(takeCourseVO);
		
		rttr.addAttribute("lno", takeCourseVO.getLno());
		rttr.addAttribute("lname", takeCourseVO.getLname());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/students/list";
	}
	
	@GetMapping("/students/read")
	public void studentsRead(@RequestParam("uno") int uno,
			@RequestParam("lno") int lno,
			@ModelAttribute("cri") Criteria cri, 
			Model model) throws Exception {
		
		model.addAttribute("aList", lectureService.aList(lno, uno));
		model.addAttribute(lectureService.sRead(lno, uno));
	}
	
	@GetMapping("/students/modify")
	public void studentsModifyGET(@RequestParam("uno") int uno,
			@RequestParam("lno") int lno,
			@ModelAttribute("cri") Criteria cri,
			Model model) throws Exception {
		
		model.addAttribute(lectureService.sRead(lno, uno));
	}
	
	@PostMapping("/students/modify")
	public String studentsModifyPOST(TakeCourseVO takeCourseVO,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		lectureService.sModify(takeCourseVO);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("lno", takeCourseVO.getLno());
		rttr.addAttribute("lname", takeCourseVO.getLname());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/students/list";
	}
	
	
	@PostMapping("/students/remove")
	public String studentsRemove(TakeCourseVO takeCourseVO,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		lectureService.sRemove(takeCourseVO.getLno(), takeCourseVO.getUno());
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("lno", takeCourseVO.getLno());
		rttr.addAttribute("lname", takeCourseVO.getLname());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/students/list";
	}
	
	
	@GetMapping("/students/list")
	public void studnetsList(@ModelAttribute("takeCourseVO") TakeCourseVO takeCourseVO,
			Criteria cri, Model model) throws Exception {
		logger.info(takeCourseVO.toString());
		logger.info(cri.toString());
		
		
		model.addAttribute("takeCousreVO", takeCourseVO);
		model.addAttribute("list", lectureService.sList(cri, takeCourseVO.getLno()));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(lectureService.sListCount(takeCourseVO.getLno()));
		
		model.addAttribute("pageMaker", pageMaker);
	}
	
	/*==================================== 출석 =========================================*/
	@PostMapping("/attendance/regist")
	public String attendanceRegistPOST(AttendanceVO attendanceVO, 
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		logger.info("regist post ...............");
		logger.info(attendanceVO.toString());
		
		lectureService.aRegist(attendanceVO);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("lno", attendanceVO.getLno());
		rttr.addAttribute("uno", attendanceVO.getUno());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/students/read";
	}
	
	@PostMapping("/attendance/modify")
	public String attendanceModifyPOST(AttendanceVO attendanceVO,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		lectureService.aModify(attendanceVO);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("lno", attendanceVO.getLno());
		rttr.addAttribute("uno", attendanceVO.getUno());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/students/read";
	}
	
	@PostMapping("/attendance/remove")
	public String attendanceRemove(AttendanceVO attendanceVO,
			Criteria cri,
			RedirectAttributes rttr) throws Exception {
		
		lectureService.aRemove(attendanceVO.getAno());
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("lno", attendanceVO.getLno());
		rttr.addAttribute("uno", attendanceVO.getUno());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/lecture/students/read";
	}
}
