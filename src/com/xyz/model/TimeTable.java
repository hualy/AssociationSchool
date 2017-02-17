package com.xyz.model;

public class TimeTable {

	private int id;
	
	private int classNumber;					//第几节课
	
	private int freeLabel;						//空闲标志(为1就是空闲，为0就是没空)

	private Member member;						//部门成员（一对一）

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getClassNumber() {
		return classNumber;
	}

	public void setClassNumber(int classNumber) {
		this.classNumber = classNumber;
	}

	public int getFreeLabel() {
		return freeLabel;
	}

	public void setFreeLabel(int freeLabel) {
		this.freeLabel = freeLabel;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
}
