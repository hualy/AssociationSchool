package com.xyz.model;

import java.util.Date;

public class Entertainment {

	private int id;
	
	private String content;								//娱乐内容
	
	private Date date;									//日期
	
	private String place;								//地点
	
	private float cost;									//经费
	
	private String photoPath;							//相册地址
	
	private Department department;						//对应的部门（多对一）

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public void setCost(float cost) {
		this.cost = cost;
	}

	public float getCost() {
		return cost;
	}
	
}
