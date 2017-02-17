package com.xyz.model;

public class Arrangements {

	private int id;
	
	private int beginCourse;								//开始时间
	
	private int endCourse;									//结束时间
	
	private String arr_person;								//安排人员
	
	private String workContent;								//安排工作内容
	
	private Activity activity;								//活动（多对一）

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBeginCourse() {
		return beginCourse;
	}

	public void setBeginCourse(int beginCourse) {
		this.beginCourse = beginCourse;
	}

	public String getArr_person() {
		return arr_person;
	}

	public void setArr_person(String arrPerson) {
		arr_person = arrPerson;
	}

	public String getWorkContent() {
		return workContent;
	}

	public void setWorkContent(String workContent) {
		this.workContent = workContent;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public void setEndCourse(int endCourse) {
		this.endCourse = endCourse;
	}

	public int getEndCourse() {
		return endCourse;
	}
	
}
