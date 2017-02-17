package com.xyz.serviceimpl;

import com.xyz.daoimpl.AdministratorDaoImpl;
import com.xyz.model.Administrator;
import com.xyz.service.AdministratorService;
import com.xyz.tools.MD5Tools;

public class AdministratorServiceImpl implements AdministratorService {
	
	private AdministratorDaoImpl administratorDao;

	public void setAdministratorDao(AdministratorDaoImpl administratorDao) {
		this.administratorDao = administratorDao;
	}


	public AdministratorDaoImpl getAdministratorDao() {
		return administratorDao;
	}
	
	
	/*
	 * 根据邮箱地址查看是否被注册
	 * @see com.xyz.service.AdministratorService#emailIsExists(com.xyz.model.Administrator)
	 */
	public boolean emailIsExists(String email) {
		
		boolean result = false;
		
		String hql = "From Administrator a where a.adminEmail = ?";
		if(administratorDao.findByHQL(hql, email) != null) result = true;
		
		return result;
	}


	/*
	 * 获得管理员对象
	 * @see com.xyz.service.AdministratorService#getTheAdministrator(java.lang.String)
	 */
	public Administrator getTheAdministrator(String email) {
		
		return administratorDao.findByHQL("From Administrator a where a.adminEmail = ?", email);
	}


	/*
	 * 管理员登录验证
	 * @see com.xyz.service.AdministratorService#adminLoginValidate(com.xyz.model.Administrator)
	 */
	public String adminLoginValidate(Administrator administrator) {
		
		String NONE = "none";
		String FAIL = "fail";
		String SUCCESS = "success";
		String NOTACTIVATED = "notactivated";
		
		Administrator admin = administratorDao.findByHQL("From Administrator a where a.adminEmail = ?",administrator.getAdminEmail());
		
		if(admin == null){
			return NONE;
		}else{
			if(MD5Tools.checkpassword(administrator.getPassword(), admin.getPassword())){
				if(admin.getActivated() != 0) return SUCCESS;
				else return NOTACTIVATED;
			}else{
				return FAIL;
			}
		}
	}


	/*
	 * 邮件激活账号
	 * @see com.xyz.service.AdministratorService#activateAccount(com.xyz.model.Administrator)
	 */
	public String activateAccount(Administrator administrator) {
		
		Administrator admin = administratorDao.findByHQL("From Administrator a where a.adminEmail = ?", administrator.getAdminEmail());
		
		if(admin != null && admin.getActivationCode().equals(administrator.getActivationCode())){
			admin.setActivated(1);
			administratorDao.update(admin);
			return "success";
		}
		
		return "failure";
	}
	
}
