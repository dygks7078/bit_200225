package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.EmpManager;
import com.example.demo.vo.EmpVo;

@Repository
public class EmpDao {

	//리스트
	public List<EmpVo> listAll(){
		return EmpManager.listAll();
	}
	
	
	//삽입
	public int insertEmp(EmpVo e) {
		return EmpManager.insert(e);
	}
	
	
	//관리자 리스트
	public List<EmpVo> managerList(){
		return EmpManager.managerList();
	}
	
}