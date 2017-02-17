package com.xyz.action.department;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Administrator;
import com.xyz.model.Department;
import com.xyz.serviceimpl.DepartmentServiceImpl;
import com.xyz.tools.MD5Tools;
import com.xyz.tools.MailTools;

public class DepartmentRegisterAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String school;
	
	private String college;
	
	private String departEmail;
	
	private String password;
	
	private String code;
	
	private String departName;

	private Department department;
	
	private DepartmentServiceImpl departmentService;
	
	private Administrator administrator;
	
	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setDepartEmail(String departEmail) {
		this.departEmail = departEmail;
	}

	public String getDepartEmail() {
		return departEmail;
	}
	
	public void setDepartment(Department department) {
		this.department = department;
	}

	public void setDepartmentService(DepartmentServiceImpl departmentService) {
		this.departmentService = departmentService;
	}

	public void setAdministrator(Administrator administrator) {
		this.administrator = administrator;
	}

	@Override
	public String execute() throws Exception {
		
		String result = "success";
		
		administrator.setAdminEmail(departEmail);
		administrator.setPassword(MD5Tools.EncoderByMd5(password));				//密码要经过MD5加密后才能存储
		administrator.setActivated(0);
		administrator.setActivationCode(MD5Tools.EncoderByMd5(departEmail));	//把邮箱地址经过MD5加密后作为激活码
		
		department.setSchool(school);
		department.setAcademy(college);
		department.setName(departName);
		department.setAdministrator(administrator);
		department.setCreateTime(new Date());
		administrator.setDepartment(department);
		
		departmentService.saveTheDepartment(department);
		
		try{
			MailTools.sendRegisterMail(departEmail,"admin");								//部门邮箱发送验证
		}catch (Exception e) {
			result = "failure";
			e.printStackTrace();
		}
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=utf-8");				//设置类型为json
		response.setHeader("Cache-Control","no-cache");

		PrintWriter pw = response.getWriter();
		pw.print(result);
		pw.flush();
		pw.close();
		
		return SUCCESS;
	}
	
}
