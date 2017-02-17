package com.xyz.model;

import java.util.Date;

public class ActivityExpenses {

	private int id;
	
	private String content;							//报销内容
	
	private float cost;								//报销经费
	
	private String committer;						//报销人
	
	private Date commitTime;						//报销时间
	
	
	private Activity activity;						//活动（多对一）


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


	public float getCost() {
		return cost;
	}


	public void setCost(float cost) {
		this.cost = cost;
	}

	public Date getCommitTime() {
		return commitTime;
	}


	public void setCommitTime(Date commitTime) {
		this.commitTime = commitTime;
	}


	public Activity getActivity() {
		return activity;
	}


	public void setActivity(Activity activity) {
		this.activity = activity;
	}


	public void setCommitter(String committer) {
		this.committer = committer;
	}


	public String getCommitter() {
		return committer;
	}
	
}
