package com.xyz.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Administrator;
import com.xyz.serviceimpl.AdministratorServiceImpl;

public class AdminActivatedAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private String email;
	
	private String activationCode;

	private String result;
	
	private Administrator administrator;
	
	private AdministratorServiceImpl administratorService;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}

	public String getActivationCode() {
		return activationCode;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setAdministrator(Administrator administrator) {
		this.administrator = administrator;
	}

	public void setAdministratorService(
			AdministratorServiceImpl administratorService) {
		this.administratorService = administratorService;
	}
	
	
	
	@Override
	public String execute() throws Exception {

		administrator.setActivationCode(activationCode);
		administrator.setAdminEmail(email);
		
		result = administratorService.activateAccount(administrator);
		
		if(result.equals("success")){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
}
