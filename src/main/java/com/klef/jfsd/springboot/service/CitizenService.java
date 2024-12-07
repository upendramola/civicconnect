package com.klef.jfsd.springboot.service;

import org.springframework.stereotype.Service;


import com.klef.jfsd.springboot.model.Citizen;

public interface CitizenService 
{
	  public String CitizenRegistration(Citizen c);  
	  public Citizen checkcitlogin(String email, String password);
	  public Citizen displayCitizenByID(int cid);
	  public String updateCitizenProfile(Citizen cit);
	  

}
