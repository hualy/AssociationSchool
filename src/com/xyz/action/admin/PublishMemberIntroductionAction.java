package com.xyz.action.admin;

import java.io.PrintWriter;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Department;
import com.xyz.model.Member;
import com.xyz.serviceimpl.DepartmentServiceImpl;

public class PublishMemberIntroductionAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int[] show;

	private Department department;
	
	private DepartmentServiceImpl departmentService;
	
	public int[] getShow() {
		return show;
	}

	public void setDepartmentService(DepartmentServiceImpl departmentService) {
		this.departmentService = departmentService;
	}

	
	
	@Override
	public String execute() throws Exception {

		String result = "success";
		Map<String,Object> session = ActionContext.getContext().getSession();
		department = (Department) session.get("department");
		
		Set<Member> memberSet = department.getMemberSet();
		int i = 0, j;
		for(Member m : memberSet){
			i = 0;
			while(i != show.length){
				j = show[i++];
				if(j == m.getId()){
					memberSet.remove(m);	//这里会不会有问题？
					m.setOnshow(1);										//被选上到首页展示,重新加入
					memberSet.add(m);
				}
			}
		}
		department.setMemberSet(memberSet);
		departmentService.updateTheDepartment(department);
		
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
