package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.DeptDao;
import com.example.demo.dao.EmpDao;

@Controller
public class EmpController {

	@Autowired
	private EmpDao edao;
	
	@Autowired
	private DeptDao ddao;

	public void setEdao(EmpDao edao) {
		this.edao = edao;
	}

	public void setDdao(DeptDao ddao) {
		this.ddao = ddao;
	}
	
	//리스트
	@RequestMapping("listEmp.do")
	public ModelAndView listEmp() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", edao.listAll());
		return mav;
	}
	
	
	
	
}