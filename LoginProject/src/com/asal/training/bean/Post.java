package com.asal.training.bean;

public class Post {
	private String post;
	private int id;
	private String userName;

	public Post(String post, int id,String userName) {
		this.id = id;
		this.post = post;
		this.userName = userName;

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



}
