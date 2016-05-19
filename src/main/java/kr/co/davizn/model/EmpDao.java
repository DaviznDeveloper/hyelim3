package kr.co.davizn.model;

import java.util.HashMap;
import java.util.List;

public interface EmpDao {
	public int insertEmp(EmpDto dto);
	public int deleteEmp(int empno);
	public int updateEmp(EmpDto dto);
	public EmpDto getEmp(int empno);
	public List<EmpDto> getEmpList();
	//조건 1개 검색
	public List<EmpDto> getSearch1(HashMap map);
	public List<EmpDto> getSearch2(HashMap map,String val);	
}
