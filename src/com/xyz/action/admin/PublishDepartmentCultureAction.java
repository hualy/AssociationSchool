package com.xyz.action.admin;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Department;
import com.xyz.serviceimpl.DepartmentServiceImpl;

public class PublishDepartmentCultureAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String introduction;
	
	private Department department;
	
	private DepartmentServiceImpl departmentService;
	
	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public void setDepartmentService(DepartmentServiceImpl departmentService) {
		this.departmentService = departmentService;
	}

	
	
	@Override
	public String execute() throws Exception {

		Map<String, Object> session = ActionContext.getContext().getSession();
		department = (Department) session.get("department");
		System.out.println(introduction);
		
		department.setIntroduction(introduction);

		departmentService.updateTheDepartment(department);
		
		session.put("department", department);
		
		return SUCCESS;
	}
}
