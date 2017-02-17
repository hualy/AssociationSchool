package com.xyz.model;

import java.util.Date;

public class MeetingRecord {

	private int id;
	
	private String theme;								//会议主题
	
	private Date meetingTime;							//会议时间
	
	private String content;								//会议内容
	
	private String place;								//会议地点
	
	private Date recordTime;							//记录时间
	
	private Member member;								//部门成员（多对一）						
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public Date getMeetingTime() {
		return meetingTime;
	}

	public void setMeetingTime(Date meetingTime) {
		this.meetingTime = meetingTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public Date getRecordTime() {
		return recordTime;
	}

	public void setRecordTime(Date recordTime) {
		this.recordTime = recordTime;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Member getMember() {
		return member;
	}
	
}
