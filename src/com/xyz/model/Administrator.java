package com.xyz.model;

public class Administrator {

	private int id;
	
	private String adminEmail;							//邮箱地址
	
	private String password;							//密码

	private int activated;								//是否激活的标志（激活就为1）
	
	private String activationCode;						//激活码
	
	
	private Department department;						//部门（一对一）


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getAdminEmail() {
		return adminEmail;
	}


	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Department getDepartment() {
		return department;
	}


	public void setDepartment(Department department) {
		this.department = department;
	}


	public void setActivated(int activated) {
		this.activated = activated;
	}


	public int getActivated() {
		return activated;
	}


	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}


	public String getActivationCode() {
		return activationCode;
	}
	
}
