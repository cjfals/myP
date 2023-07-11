package com.my.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.domain.Criteria;
import com.my.domain.PageDTO;
import com.my.domain.SportsVO;
import com.my.service.BoardService;

@Controller
@RequestMapping(value = "/board/*")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	
	@RequestMapping(value = "/sportsList", method = RequestMethod.GET)
	public String ListGET(Model model, Criteria cri, @RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "division", required = false) String division) throws Exception {
		model.addAttribute("list", service.sportsList(cri, category, division));
		PageDTO dto = new PageDTO();
		dto.setCri(cri);
		dto.setTotalCount(service.countSportsList());
		model.addAttribute("pageDTO", dto);
		
		return "/board/sportsList";
	}
	
	@RequestMapping(value = "/sportsWrite", method = RequestMethod.GET)
	public void sportsWriteGET() {
		
	}
	
	@RequestMapping(value = "/sportsWrite", method = RequestMethod.POST)
	public String sportsWritePOST(SportsVO vo, HttpSession session) throws Exception {
		vo.setWriter((String)session.getAttribute("id"));
		service.writeS(vo);
		return "redirect:/board/sportsList";
	}
	
	@RequestMapping(value = "/sportsDetail", method = RequestMethod.GET)
	public String sprotsDetailGET(Integer s_num, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
		Cookie oldCookie = null;
	    Cookie[] cookies = request.getCookies();
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("postView")) {
	                oldCookie = cookie;
	            }
	        }
	    }

	    if (oldCookie != null) {
	        if (!oldCookie.getValue().contains("[" + s_num.toString() + "]")) {
	            service.viewCountUp(s_num);
	            oldCookie.setValue(oldCookie.getValue() + "_[" + s_num + "]");
	            oldCookie.setPath("/");
	            oldCookie.setMaxAge(60 * 60 * 24);
	            response.addCookie(oldCookie);
	        }
	    } else {
	        service.viewCountUp(s_num);
	        Cookie newCookie = new Cookie("postView","[" + s_num + "]");
	        newCookie.setPath("/");
	        newCookie.setMaxAge(60 * 60 * 24);
	        response.addCookie(newCookie);
	    }
		
	    model.addAttribute("detail", service.sportsDetail(s_num));
	    
	    return "/board/sportsDetail";
	    
	}
	
	@RequestMapping(value = "/sportsUpdate", method = RequestMethod.GET)
	public void sportsUpdateGET(Integer s_num, Model model) throws Exception{
		model.addAttribute("detail", service.sportsDetail(s_num));
	}
	
	@RequestMapping(value = "/sportsUpdate", method = RequestMethod.POST)
	public String sportsUpdatePOST(SportsVO vo, Model model) throws Exception {
		System.out.println(vo);
		service.sportsUpdate(vo);
		model.addAttribute("s_num", vo.getS_num());
		return "redirect:/board/sportsDetail";
	}
	
	@RequestMapping(value = "/sportsDelete", method = RequestMethod.POST)
	public String sportsDeletePOST(Integer s_num) throws Exception {
		service.sportsDelete(s_num);
		return "redirect:/board/sportsList";
	}

}

























