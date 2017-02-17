package com.xyz.model;

import java.util.Date;
import java.util.Set;

public class Department {

	private int id;
	
	private String school;									//学校
	
	private String academy;									//学院
	
	private String name;									//部门名称
	
	private Date createTime;								//部门创建时间

	private String introduction;							//部门介绍
	
	private String introductionPhotoPath;					//部门风貌图片地址
	
	
	private Set<Member> memberSet;							//部门成员集合（一对多）
	
	private Set<Entertainment> entertainmentSet;			//部门内建（一对多）
	
	private Administrator administrator;					//管理员（一对一）
	
	private Set<Activity> activitySet;						//活动集合（一对多）
	

	public String getIntroductionPhotoPath() {
		return introductionPhotoPath;
	}

	public void setIntroductionPhotoPath(String introductionPhotoPath) {
		this.introductionPhotoPath = introductionPhotoPath;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAcademy() {
		return academy;
	}

	public void setAcademy(String academy) {
		this.academy = academy;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setMemberSet(Set<Member> memberSet) {
		this.memberSet = memberSet;
	}

	public Set<Member> getMemberSet() {
		return memberSet;
	}

	public void setEntertainmentSet(Set<Entertainment> entertainmentSet) {
		this.entertainmentSet = entertainmentSet;
	}

	public Set<Entertainment> getEntertainmentSet() {
		return entertainmentSet;
	}

	public void setAdministrator(Administrator administrator) {
		this.administrator = administrator;
	}

	public Administrator getAdministrator() {
		return administrator;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setActivitySet(Set<Activity> activitySet) {
		this.activitySet = activitySet;
	}

	public Set<Activity> getActivitySet() {
		return activitySet;
	}

}
