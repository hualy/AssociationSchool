package com.xyz.model;

import java.util.Date;
import java.util.Set;

public class Activity {

	private int id;
	
	private String name;								//活动名称
	
	private Date beginTime;								//开始时间
	
	private Date endTime;								//结束
	
	private String photoPath;							//活动图片存放地址
	
	private int isTheNewest;							//是否为最新的活动(1为最新,默认都是0)
	
	
	private Set<ActivitySummary> activitySummarySet;    //活动总结（一对多）
	
	private Set<ActivityExpenses> activityExpensesSet;	//活动报销（一对多）
	
	private Set<Arrangements> arrangementsSet;			//活动安排（一对一）
	
	private Department department;						//部门（多对一）
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public void setActivitySummarySet(Set<ActivitySummary> activitySummarySet) {
		this.activitySummarySet = activitySummarySet;
	}

	public Set<ActivitySummary> getActivitySummarySet() {
		return activitySummarySet;
	}

	public void setActivityExpensesSet(Set<ActivityExpenses> activityExpensesSet) {
		this.activityExpensesSet = activityExpensesSet;
	}

	public Set<ActivityExpenses> getActivityExpensesSet() {
		return activityExpensesSet;
	}

	public void setArrangementsSet(Set<Arrangements> arrangementsSet) {
		this.arrangementsSet = arrangementsSet;
	}

	public Set<Arrangements> getArrangementsSet() {
		return arrangementsSet;
	}

	public void setIsTheNewest(int isTheNewest) {
		this.isTheNewest = isTheNewest;
	}

	public int getIsTheNewest() {
		return isTheNewest;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Department getDepartment() {
		return department;
	}
	
}
