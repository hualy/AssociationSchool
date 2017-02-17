package com.xyz.action.personInfo;

import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Member;
import com.xyz.serviceimpl.MemberServiceImpl;

public class MemberActivatedAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String email;
	
	private String activationCode;

	private String result;
	
	private Member member;
	
	private MemberServiceImpl memberService;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getActivationCode() {
		return activationCode;
	}

	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public void setMemberService(MemberServiceImpl memberService) {
		this.memberService = memberService;
	}
	
	
	@Override
	public String execute() throws Exception {
		
		member.setActivationCode(activationCode);
		member.setEmail(email);
		
		result = memberService.activateAccount(member);
		
		if(result.equals("success")){							//邮件发送成功和错误结果
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
}
