package com.xyz.test;

public class TestMail {

	public static void main(String[] args) {
		
		String email = "1@qq.com";
		String accode = "wwww";
		
		String s = "<font color='red'><a href='http://127.0.0.1:8080/association/administrator/adminActivated?email="+email+"&activationCode="+accode;
		System.err.println(s);
	}
}
