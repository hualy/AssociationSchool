package com.xyz.action.publics;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckCodeValidateAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String code;

	public void setCode(String code) {
		this.code = code;
	}

	public String getCode() {
		return code;
	}
	
	
	@Override
	public String execute() throws Exception {

		String result = null; 
		Map<String, Object> session = ActionContext.getContext().getSession();
		String checkcode = (String) session.get("checkCode");
		
		if(checkcode.toLowerCase().equals(code.toLowerCase())){
			result = "success";
		}else{
			result = "fail";
		}
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=utf-8");				
		response.setHeader("Cache-Control","no-cache");

		PrintWriter pw = response.getWriter();
		pw.print(result);
		pw.flush();
		pw.close();
		
		return SUCCESS;
	}
}
