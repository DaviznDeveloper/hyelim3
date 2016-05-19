package kr.co.davizn.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.davizn.model.EmpDto;
import kr.co.davizn.service.EmpService;

@Controller
@RequestMapping("/emp/")
public class EmpController {

	@Autowired
	private EmpService empservice;

	// 사원 등록 view
	@RequestMapping("empCreate.dvn")
	public String goCreate() {
		return "emp.empCreate";
	}
	
	// 사원 등록 action
	@RequestMapping("empCreateAction.dvn")
	public String goCreateAction(EmpDto dto) {
		String result = empservice.insert(dto);
		return result;
	}

	// 사원 삭제
	@RequestMapping("empDelete.dvn")
	public String goDelete(@RequestParam int empno) {
		String result = empservice.delete(empno);
		return result;
	}

		// 사원 정보 수정 view
	@RequestMapping("empModifiedView.dvn")
	public String goModifiedView(@RequestParam int empno,Model model) {
		EmpDto emp = empservice.getEmp(empno);
		model.addAttribute("emp",emp);
		return "emp.empModified";
	}
	
	// 사원 정보 수정 action
	@RequestMapping("empModified.dvn")
	public String goModified(EmpDto dto, Model model) {
		String result= empservice.edit(dto);
		return result;
	}

	// 전체 리스트
	@RequestMapping("empList.dvn")
	public String goList(Model model) {
		List<EmpDto> list = empservice.getEmpList();
		model.addAttribute("list", list);
		return "emp.empList";
	}

	// 검색 view
	@RequestMapping("empSearch.dvn")
	public String goSearch() {
		return "emp.empSearch2";
	}

	//검색1
	@RequestMapping("empSearchAction.dvn")
	public String goSearchAction(@RequestParam String column, @RequestParam String keyvalue, Model model) {
		List<EmpDto> list = empservice.getSearch1(column,keyvalue);
		model.addAttribute("list", list);
		return "emp.empSearch2";
	}

	//검색2
	@RequestMapping("empSearchAction2.dvn")
	public String goSearchAction2(HttpServletRequest request, String keyvalue, Model model) {
		List<EmpDto> list = empservice.getSearch2(request,keyvalue);
		model.addAttribute("list", list);
		return "emp.empSearch2";
	}
	
	

	@RequestMapping("empModifiedView.json")
	public String goModifiedView2(Model model) {
		EmpDto emp = empservice.getEmp(7788);
		model.addAttribute("emp",emp);
		return "";
	}
	
	@RequestMapping("empModifiedView.xml")
	public String goModifiedView3(Model model) {
		EmpDto emp = empservice.getEmp(7788);
		model.addAttribute("emp",emp);
		return "";
	}
}
