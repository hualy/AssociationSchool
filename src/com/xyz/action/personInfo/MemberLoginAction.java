package com.xyz.action.personInfo;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Member;
import com.xyz.serviceimpl.MemberServiceImpl;

public class MemberLoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String email;
	
	private String password;
	
	private String code;
	
	private String rem_password;
	
	private Member member;
	
	private MemberServiceImpl memberService;

	public String getRem_password() {
		return rem_password;
	}

	public void setRem_password(String remPassword) {
		rem_password = remPassword;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public void setMemberService(MemberServiceImpl memberService) {
		this.memberService = memberService;
	}
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	@Override
	public String execute() throws Exception {

		String result = null;
		HttpServletResponse response = ServletActionContext.getResponse();
		
		member.setEmail(email);
		member.setPassword(password);
		result =  memberService.memberLoginValidate(member);
			
		if(result.equals("success")){
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("member", memberService.getTheMember(email));	
			
			if(rem_password != null && rem_password.equals("yes")){									//记住密码
				//创建两个Cookie对象
				Cookie nameCookie = new Cookie("username", email);
				//设置Cookie的有效期为3天
				nameCookie.setMaxAge(60 * 60 * 24 * 3);
				Cookie pwdCookie = new Cookie("password", password);
				pwdCookie.setMaxAge(60 * 60 * 24 * 3);
				response.addCookie(nameCookie);
				response.addCookie(pwdCookie);
			}
		}
		
		
		response.setContentType("application/json;charset=utf-8");				//设置类型为json
		response.setHeader("Cache-Control","no-cache");

		PrintWriter pw = response.getWriter();
		pw.print(result);
		pw.flush();
		pw.close();
		
		return SUCCESS;
	}
}
