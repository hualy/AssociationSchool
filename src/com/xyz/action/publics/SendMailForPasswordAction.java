package com.xyz.action.publics;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xyz.tools.MailTools;

public class SendMailForPasswordAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String email;
	
	private String identity;

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	@Override
	public String execute() throws Exception {

		String result = "success";
		try{
			MailTools.sendMailForPassword(email, identity);
		}catch(Exception e){
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
