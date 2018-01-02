package com.shadab.tests;

public class UserDetails {
	public UserDetails() {
    }
    private String username;
    private int age;
    private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	public int getDoubleAge(){
		
		return age*2;
	}
}
