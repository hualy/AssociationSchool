package com.xyz.action.admin;

import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Department;
import com.xyz.model.Member;
import com.xyz.serviceimpl.MemberServiceImpl;

public class GetMemberIntroductionAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private Department department;
	
	private MemberServiceImpl memberService;
	

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public void setMemberService(MemberServiceImpl memberService) {
		this.memberService = memberService;
	}
	
	
	
	@Override
	public String execute() throws Exception {
		
		Map<String, Object> session = ActionContext.getContext().getSession();
		department = (Department) session.get("department");
		
		Set<Member> memberSet = memberService.getMemberSet(department);
		session.put("members", memberSet);
		
		return SUCCESS;
	}
}
