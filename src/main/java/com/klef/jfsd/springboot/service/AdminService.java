package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Politician;

public interface AdminService 
{
	public Admin checkadminlogin(String username,String password);
	
	public List<Politician> viewallpoliticians();
	
	public long pcount();
	
	public String deletepolitician(int pid);
	
}
