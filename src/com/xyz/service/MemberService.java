package com.xyz.service;

import java.util.List;
import java.util.Set;

import com.xyz.model.Department;
import com.xyz.model.Member;

public interface MemberService {

	
	/**保存个人注册信息
	 * @author LYH
	 * @param member 成员对象
	 */
	public void saveTheMember(Member member);
	
	
	/**根据邮箱地址查看是否被注册
	 * @author LYH
	 * @param  member 成员对象
	 * @return true:说明邮箱已被注册	false:还没被注册
	 */
	public boolean emailIsExists(String email);
	
	
	/**个人登录验证
	 * @author LYH
	 * @param member 成员对象
	 * @return <b>success:登录成功</b></ul> <b>none:用户名不存在</b></ul> <b>fail:密码错误</b></ul> <b>notactivated：用户未被激活</b>
	 */
	public String memberLoginValidate(Member member);
	
	
	/**邮件点击激活帐号
	 * @author LYH
	 * @param member 成员对象
	 * @return <b>success:激活成功</b></ul> <b>failure:激活失败</b>
	 */
	public String activateAccount(Member member);
	
	
	/**获得成员对象
	 * @author LYH
	 * @param email 邮件地址
	 * @return member 成员对象
	 */
	public Member getTheMember(String email);
	
	
	/**获得本部门所有成员对象
	 * @author LYH
	 * @Description (应该用分页实现，有待改正)
	 * @param department 所属部门
	 * @return {@link List}
	 */
	public Set<Member> getMemberSet(Department department);
	
	
	/**选择展示的成员，更新该部分成员信息
	 * @author LYH
	 * @param memberSet 成员集合
	 * @return
	 */
	public void updateMembers(Set<Member> memberSet);
}
