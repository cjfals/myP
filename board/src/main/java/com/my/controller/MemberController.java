package com.my.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.domain.MemberVO;
import com.my.service.MemberService;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {
	
	@Inject
	MemberService service;
	
	@RequestMapping(value = "/insertM", method = RequestMethod.GET)
	public void insertMGET(Model model) {
		
	}
	
	@RequestMapping(value = "/insertM", method = RequestMethod.POST)
	public String insertMPOST(MemberVO vo) throws Exception {
		service.insertM(vo);
		return "redirect:/member/loginM";
	}
	
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	public Integer idCheck(@RequestParam("m_id") String m_id) throws Exception {
		return service.idCheck(m_id);
	}
	
	@RequestMapping(value = "/loginM", method = RequestMethod.GET)
	public void loginMGET() {
		
	}
	
	@RequestMapping(value = "/loginM", method = RequestMethod.POST)
	public String loginMPOST(MemberVO vo, Model model, HttpSession session) throws Exception {
		
		if(service.loginM(vo) != null) {
			session.setAttribute("id", vo.getM_id());
			return "redirect:/home";
		} else {
			model.addAttribute("error", "error");
			return "/member/loginM";
		}
		
	}
	
	@RequestMapping(value = "/logoutM", method = RequestMethod.GET)
	public String logoutGET(HttpSession session) {
		session.invalidate();
		return "/home";
	}
	
	
}
