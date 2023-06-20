package com.my.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.service.BoardService;

@Controller
@RequestMapping(value = "/board/*")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String ListGET(Model model) throws Exception {
		model.addAttribute("List", service.BoardList());
		System.out.println(service.BoardList());
		return "/board/boardList";
	}

}
