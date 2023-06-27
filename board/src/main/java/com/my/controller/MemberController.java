package com.my.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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
	public void loginMGET(HttpServletRequest request) {
		String uri = request.getHeader("Referer");
	    if (uri != null && !uri.contains("/login")) {
	        request.getSession().setAttribute("prevPage", uri);
	    }
	}
	
	@RequestMapping(value = "/loginM", method = RequestMethod.POST)
	public String loginMPOST(MemberVO vo, Model model, HttpSession session, HttpServletRequest request) throws Exception {
		String prev = (String) request.getSession().getAttribute("prevPage");
		if(service.loginM(vo) != null) {
			session.setAttribute("id", vo.getM_id());
			return "redirect:"+prev;
		} else {
			model.addAttribute("error", "error");
			return "/member/loginM";
		}
		
	}
	
	@RequestMapping(value = "/logoutM", method = RequestMethod.GET)
	public String logoutGET(HttpSession session, HttpServletRequest request) {
		session.invalidate();
		String uri = request.getHeader("Referer");
		return "redirect:"+uri;
	}
	
	
}
