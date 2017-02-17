package com.xyz.serviceimpl;

import java.util.Set;

import com.xyz.daoimpl.MemberDaoImpl;
import com.xyz.model.Department;
import com.xyz.model.Member;
import com.xyz.service.MemberService;
import com.xyz.tools.MD5Tools;

public class MemberServiceImpl implements MemberService {

	
	private MemberDaoImpl memberDao;
	
	public void setMemberDao(MemberDaoImpl memberDao) {
		this.memberDao = memberDao;
	}



	/*
	 * 保存个人注册信息
	 * @see com.xyz.service.MemberService#saveTheMember(com.xyz.model.Member)
	 */
	public void saveTheMember(Member member) {
		memberDao.save(member);
	}


	/*
	 * 查看该邮箱是否被人注册
	 * @see com.xyz.service.MemberService#emailIsExists(com.xyz.model.Member)
	 */
	public boolean emailIsExists(String email) {
		
		boolean result = false;
		String hql = "From Member m where m.email = ?";
		
		if(memberDao.findByHQL(hql,email) != null) result = true;
		
		return result;
	}


	/*
	 * 个人登录验证
	 * @see com.xyz.service.MemberService#memberLoginValidate(com.xyz.model.Member)
	 */
	public String memberLoginValidate(Member member) {

		String NONE = "none";
		String FAIL = "fail";
		String SUCCESS = "success";
		String NOTACTIVATED = "notactivated";
		
		Member m = memberDao.findByHQL("From Member m where m.email = ?",member.getEmail());
		
		if(m == null){
			return NONE;
		}else{
			if(MD5Tools.checkpassword(member.getPassword(), m.getPassword())){
				if(m.getActivated() != 0) return SUCCESS;
				else return NOTACTIVATED;
			}else{
				return FAIL;
			}
		}
	}



	/*
	 *邮件激活账号
	 * @see com.xyz.service.MemberService#activateAccount(com.xyz.model.Member)
	 */
	public String activateAccount(Member member) {
		
		String result = "failure";
		
		Member m = memberDao.findByHQL("From Member m where m.email = ?", member.getEmail());
		
		if(m != null && m.getActivationCode().equals(member.getActivationCode())){
			m.setActivated(1);
			memberDao.update(m);
			result = "success";
		}
		
		return result;
	}


	/*
	 * 用邮件地址获得成员对象
	 * @see com.xyz.service.MemberService#getTheMember(java.lang.String)
	 */
	public Member getTheMember(String email) {

		return memberDao.findByHQL("FROM Member m where m.email = ?", email);
	}


	/*
	 * 获取部门全部成员
	 * @see com.xyz.service.MemberService#getMemberList(com.xyz.model.Department)
	 */
	public Set<Member> getMemberSet(Department department) {
		return department.getMemberSet();
	}


	/*
	 * 更新部分成员信息
	 * @see com.xyz.service.MemberService#updateMembers(java.util.Set)
	 */
	public void updateMembers(Set<Member> memberSet) {
		for(Member m : memberSet){
			memberDao.update(m);
		}
	}

}
