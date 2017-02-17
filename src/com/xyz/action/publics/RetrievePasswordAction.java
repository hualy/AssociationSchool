package com.xyz.action.publics;

import com.opensymphony.xwork2.ActionSupport;

public class RetrievePasswordAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String email;
	
	private String newPassword;
	
	private String identity;

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}
	
	
	@Override
	public String execute() throws Exception {
		
		//密码修改
		
		return SUCCESS;
	}
}
