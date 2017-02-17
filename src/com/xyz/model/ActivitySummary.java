package com.xyz.model;

import java.util.Date;

public class ActivitySummary {

	private int id;
	
	private String committer;							//总结人
	
	private String committerID;							//总结人ID号
	
	private String content;								//活动总结内容
	
	private Date summitTime;							//提交时间
	
	
	private Activity activity;							//活动（多对一）
	

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

	public Date getSummitTime() {
		return summitTime;
	}

	public void setSummitTime(Date summitTime) {
		this.summitTime = summitTime;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setCommitter(String committer) {
		this.committer = committer;
	}

	public String getCommitter() {
		return committer;
	}

	public void setCommitterID(String committerID) {
		this.committerID = committerID;
	}

	public String getCommitterID() {
		return committerID;
	}
	
}
