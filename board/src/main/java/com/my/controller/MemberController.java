package com.my.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value = "insertM", method = RequestMethod.GET)
	public void insertMGET() {
		
	}
	
	@RequestMapping(value = "insertM", method = RequestMethod.POST)
	public String insertMPOST(MemberVO vo) throws Exception {
		service.insertM(vo);
		return "/member/loginM";
	}
	
	@ResponseBody
	@RequestMapping(value = "idCheck", method = RequestMethod.GET)
	public Integer idCheck(@RequestParam("m_id") String m_id) throws Exception {
		return service.idCheck(m_id);
	}
	
}
