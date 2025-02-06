package com.example.dao;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User implements Serializable{
	
	@Id
	String name;   
	String pass ;
	

	
	public String getName() {
		return name;
	}

	
	public String getPass() {
		return pass;
	}

	
	public void setName(String name) {
		this.name = name;
	}

	
	public void setPass(String pass) {
		this.pass = pass;
	}

	
	@Override
	public String toString() {
		return "name=" + name + " + \"   \"+  password=" + pass;
	}
	
}
