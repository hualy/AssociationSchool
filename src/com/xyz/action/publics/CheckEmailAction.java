package com.xyz.action.publics;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xyz.serviceimpl.AdministratorServiceImpl;
import com.xyz.serviceimpl.MemberServiceImpl;

public class CheckEmailAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private String departEmail;
	
	private String personalEmail;
	
	private MemberServiceImpl memberService;
	
	private AdministratorServiceImpl administratorService;

	
	public String getPersonalEmail() {
		return personalEmail;
	}

	public void setPersonalEmail(String personalEmail) {
		this.personalEmail = personalEmail;
	}

	public void setDepartEmail(String departEmail) {
		this.departEmail = departEmail;
	}

	public String getDepartEmail() {
		return departEmail;
	}
	public void setMemberService(MemberServiceImpl memberService) {
		this.memberService = memberService;
	}

	public void setAdministratorService(
			AdministratorServiceImpl administratorService) {
		this.administratorService = administratorService;
	}

	
	
	@Override
	public String execute() throws Exception {
		
		String result = "none";
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=utf-8");				//设置类型为json
		response.setHeader("Cache-Control","no-cache");
		PrintWriter pw = response.getWriter();
		
		if(departEmail != null){
			if(administratorService.emailIsExists(departEmail)){	
				result = "exists";
			}
			pw.print(result);
			pw.flush();
			pw.close();
			
			return SUCCESS;
		}
		
		if(personalEmail != null){
			if(memberService.emailIsExists(personalEmail)){
				result = "exists";
			}
			pw.print(result);
			pw.flush();
			pw.close();
			
			return SUCCESS;
		}
		
		return null;
		
	}
}
