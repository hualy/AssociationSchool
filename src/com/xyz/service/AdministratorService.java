package com.xyz.service;

import com.xyz.model.Administrator;

public interface AdministratorService {

	/**根据邮箱地址查看是否被注册
	 * @author LYH
	 * @param email 邮箱地址
	 * @return <b>true:说明邮箱已被注册</b></ul> <b>false:还没被注册</b>
	 */
	public boolean emailIsExists(String email);
	
	
	/**获得管理员对象
	 * @author LYH
	 * @param email 部门邮件地址
	 * @return {@link Administrator}
	 */
	public Administrator getTheAdministrator(String email);
	
	
	/**管理员登录验证
	 * @author LYH
	 * @param administrator 管理员对象
	 * @return <b>success:登录成功</b></ul> <b>none:用户名不存在</b></ul> <b>fail:密码错误</b></ul> <b>notactivated：用户未被激活</b>
	 */
	public String adminLoginValidate(Administrator administrator);
	
	
	/**邮件点击激活帐号
	 * @author LYH
	 * @param administrator 管理员对象
	 * @return <b>success:激活成功</b></ul> <b>failure:激活失败</b>(记得去接口网站写状态码)
	 */
	public String activateAccount(Administrator administrator);
	
}
