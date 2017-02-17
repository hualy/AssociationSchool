package com.xyz.serviceimpl;

import com.xyz.daoimpl.DepartmentDaoImpl;
import com.xyz.model.Department;
import com.xyz.service.DepartmentService;

public class DepartmentServiceImpl implements DepartmentService {

	
	private DepartmentDaoImpl departmentDao;
	
	public DepartmentDaoImpl getDepartmentDao() {
		return departmentDao;
	}

	public void setDepartmentDao(DepartmentDaoImpl departmentDao) {
		this.departmentDao = departmentDao;
	}

	
	/*
	 * 保存部门注册信息
	 * @see com.xyz.service.DepartmentService#saveTheDepartment(com.xyz.model.Department)
	 */
	public void saveTheDepartment(Department department) {
		departmentDao.save(department);
	}

	
	/*
	 * 更新部门对象
	 * @see com.xyz.service.DepartmentService#updateTheDepartment(com.xyz.model.Department)
	 */
	public void updateTheDepartment(Department department) {
		departmentDao.update(department);
	}

}
