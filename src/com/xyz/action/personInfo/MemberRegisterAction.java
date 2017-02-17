package com.xyz.action.personInfo;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Member;
import com.xyz.serviceimpl.AdministratorServiceImpl;
import com.xyz.serviceimpl.MemberServiceImpl;
import com.xyz.tools.MD5Tools;
import com.xyz.tools.MailTools;

public class MemberRegisterAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String departEmail;
	
	private String personalEmail;
	
	private String password;
	
	private String name;
	
	private String position;
	
	private String code;
	
	
	private Member member;
	
	private MemberServiceImpl memberService;
	
	private AdministratorServiceImpl administratorService;
	
	
	public String getDepartEmail() {
		return departEmail;
	}

	public void setDepartEmail(String departEmail) {
		this.departEmail = departEmail;
	}

	public String getPersonalEmail() {
		return personalEmail;
	}

	public void setPersonalEmail(String personalEmail) {
		this.personalEmail = personalEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
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
	
	public void setAdministratorService(
			AdministratorServiceImpl administratorService) {
		this.administratorService = administratorService;
	}

	
	
	@Override
	public String execute() throws Exception {
		
		String result = "success";
		
		member.setActivated(0);
		member.setOnshow(0);
		member.setActivationCode(MD5Tools.EncoderByMd5(personalEmail));
		try{
			MailTools.sendRegisterMail(personalEmail,"member");									//发送邮件验证
		}catch(Exception e){
			result = "failure";
			e.printStackTrace();
		}
		
		member.setEmail(personalEmail);
		member.setDepartment(administratorService.getTheAdministrator(departEmail).getDepartment());//要先在页面ajax判断邮箱是否已被注册
		member.setIdentity(position);
		member.setName(name);
		member.setPassword(MD5Tools.EncoderByMd5(password));
		
		memberService.saveTheMember(member);
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json;charset=utf-8");					//设置类型为json
		response.setHeader("Cache-Control","no-cache");

		PrintWriter pw = response.getWriter();
		pw.print(result);
		pw.flush();
		pw.close();
		
		return SUCCESS;
	}

}
