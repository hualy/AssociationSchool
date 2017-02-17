package com.xyz.action.publics;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AccountLogoutAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String identity;

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}
	
	
	
	@Override
	public String execute() throws Exception {
		
		Map<String,Object> session = ActionContext.getContext().getSession();
		session.clear();									//清空session集合
		
		if(identity.equals("admin")){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
}
