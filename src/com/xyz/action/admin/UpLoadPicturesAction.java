package com.xyz.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xyz.model.Department;
import com.xyz.serviceimpl.DepartmentServiceImpl;

public class UpLoadPicturesAction extends ActionSupport {

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<File> file;
	
	private List<String> fileFileName;
	
	private List<String> fileContentType;

	private Department department;
	
	private DepartmentServiceImpl departmentService;

	
	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}
	
	public void setDepartmentService(DepartmentServiceImpl departmentService) {
		this.departmentService = departmentService;
	}

	
	
	private String makeFileName(String filename){  
	        //为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
	        return UUID.randomUUID().toString() + "_" + filename;
	  }

	
	
	@SuppressWarnings("deprecation")
	@Override
	public String execute() throws Exception {
		
		String result = "Success";
		Map<String,Object> session = ActionContext.getContext().getSession();
		department = (Department) session.get("department");
		
		String savepath = "/photos/departmentIntroduction";
		String root = ServletActionContext.getRequest().getRealPath(savepath);
		department.setIntroductionPhotoPath(root);
		
//		System.out.println("文件数量： "+file.size());
//		System.out.println("root："+root);
		
		File saveFile = new File(root);
        if (!saveFile.exists()) {
            //创建相关主题目录
            saveFile.mkdirs();
            
        }
        
        department.setIntroductionPhotoPath(saveFile.getAbsolutePath());
        departmentService.updateTheDepartment(department);									//更新部门信息
        
		try{
			for(int i = 0; i < file.size(); i++){
	        	
	            InputStream is = new FileInputStream(file.get(i));
	            
	            OutputStream os = new FileOutputStream(new File(root, makeFileName(fileFileName.get(i))));
	            
	            byte[] buffer = new byte[1024];
	            
	            @SuppressWarnings("unused")
				int length = 0;
	            
	            while(-1 != (length = is.read(buffer, 0, buffer.length))){
	                os.write(buffer);
	            }
	            
	            os.close();
	            is.close();
	        }
		}catch (Exception e) {
			result = "Error";
			e.printStackTrace();
		}
		
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
