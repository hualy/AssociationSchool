package com.xyz.model;

import java.util.Set;

public class Member {

	private int id;
	
	private String email;									//邮箱登录
	
	private String password;								//密码
	
	private String name;									//姓名
	
	private String grade;									//年级
	
	private String major;									//专业
	
	private String classes;									//班别
	
	private String dormitory;								//宿舍号
	
	private String qq;										//QQ号
	
	private String phoneNumber;								//手机号码
	
	private String identity;								//身份（部长  OR 干事）
	
	private String headPicture;								//头像图片地址
	
	
	private int onshow;										//是否在主页展示（1就是在展示）
	
	private int activated;									//是否激活的标志（激活就为1）
	
	private String activationCode;							//激活码
	
	
	private Department department;							//所属的部门（多对一）
	
	private TimeTable timeTable;							//时间安排表（一对一）
	
	private Set<MeetingRecord> meetingRecordSet;			//会议记录表(一对多)
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getDormitory() {
		return dormitory;
	}

	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getHeadPicture() {
		return headPicture;
	}

	public void setHeadPicture(String headPicture) {
		this.headPicture = headPicture;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public void setTimeTable(TimeTable timeTable) {
		this.timeTable = timeTable;
	}

	public TimeTable getTimeTable() {
		return timeTable;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setMeetingRecordSet(Set<MeetingRecord> meetingRecordSet) {
		this.meetingRecordSet = meetingRecordSet;
	}

	public Set<MeetingRecord> getMeetingRecordSet() {
		return meetingRecordSet;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getIdentity() {
		return identity;
	}

	public void setActivated(int activated) {
		this.activated = activated;
	}

	public int getActivated() {
		return activated;
	}

	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}

	public String getActivationCode() {
		return activationCode;
	}

	public void setOnshow(int onshow) {
		this.onshow = onshow;
	}

	public int getOnshow() {
		return onshow;
	}

}
