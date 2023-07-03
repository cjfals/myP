package com.my.controller;

import javax.inject.Inject;
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

}
