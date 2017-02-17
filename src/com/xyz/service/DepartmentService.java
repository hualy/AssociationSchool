package com.xyz.service;

import com.xyz.model.Department;

public interface DepartmentService {

	/**保存部门注册信息
	 * @author LYH
	 * @param department 部门对象
	 * @return
	 */
	public void saveTheDepartment(Department department);
	
	/**更新管理员所属部门信息
	 * @author LYH
	 * @param department 部门对象
	 * @return
	 */
	public void updateTheDepartment(Department department);
}
