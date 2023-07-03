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

import com.my.domain.SportsVO;
import com.my.service.BoardService;

@Controller
@RequestMapping(value = "/board/*")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	
	@RequestMapping(value = "/sportsList", method = RequestMethod.GET)
	public String ListGET(Model model) throws Exception {
		model.addAttribute("list", service.sportsList());
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

}

























