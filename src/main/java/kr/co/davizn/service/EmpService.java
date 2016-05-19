package kr.co.davizn.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.davizn.model.EmpDao;
import kr.co.davizn.model.EmpDto;

public class EmpService {
	
	@Autowired
	private SqlSession sqlsession;
	
	public String insert(EmpDto dto){
		EmpDao empdao= sqlsession.getMapper(EmpDao.class);
		empdao.insertEmp(dto);
		return "redirect:empList.dvn";
	}
	
	public String delete(int empno){	
		EmpDao empdao= sqlsession.getMapper(EmpDao.class);
		empdao.deleteEmp(empno);
		return "redirect:empList.dvn";
	}
	
	public String edit(EmpDto dto){
		EmpDao empdao= sqlsession.getMapper(EmpDao.class);
		empdao.updateEmp(dto);
		return "redirect:empModifiedView.dvn";
	}
	
	@ResponseBody
	public EmpDto getEmp(int empno) {
		EmpDao empdao= sqlsession.getMapper(EmpDao.class);
		EmpDto dto = empdao.getEmp(empno);
		return dto;
	}
	

	public List<EmpDto> getEmpList(){
		EmpDao empdao= sqlsession.getMapper(EmpDao.class);	
		List<EmpDto> list = empdao.getEmpList();
		return list;
	}
	
	
	public List<EmpDto> getSearch1(String column, String value){
		EmpDao empdao= sqlsession.getMapper(EmpDao.class);
		HashMap map = new HashMap();
		map.put("column",column);
		map.put("value",value);
		List<EmpDto> list = empdao.getSearch1(map);
		return list;
	}
	
	
	public List<EmpDto> getSearch2(HttpServletRequest request,String keyvalue){
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String job = request.getParameter("job");
		String mgr = request.getParameter("mgr");
		String sal = request.getParameter("sal");
		String comm = request.getParameter("comm");
		String dept = request.getParameter("dept");
		
		HashMap<String, String> map = new HashMap<String,String>();
		map.put("empno", empno);
		map.put("ename", ename);
		map.put("job", job);
		map.put("sal", sal);
		map.put("comm", comm);
		map.put("dept", dept);

		EmpDao empdao= sqlsession.getMapper(EmpDao.class);
		
		List<EmpDto> list = empdao.getSearch2(map,keyvalue);
		return list;
	}
	
	
}
