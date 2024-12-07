package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.repository.CitizenRepository;

@Service
public class CitizenServiceImpl implements CitizenService
{
	    @Autowired 
	    private CitizenRepository citizenRepository;
	 
	 	public String CitizenRegistration(Citizen c) 
	  	{  
		 citizenRepository.save(c);
		 return "Citizen Registered Successfully"; 
	    }
	 	public Citizen checkcitlogin(String email, String password)  
	    {
		  return citizenRepository.checkcitlogin(email,password); 
	   	}
	    public Citizen displayCitizenByID(int cid) 
	    {
	    	return citizenRepository.findById(cid).get();
		
	    }
	    
	    public String updateCitizenProfile(Citizen cit)
	    {
	    	Citizen c = citizenRepository.findById(cit.getId()).get();
	        
	       
	        c.setName(cit.getName());
	        c.setPassword(cit.getPassword());
	        c.setContactno(cit.getContactno());
	      
	        citizenRepository.save(c);
	        
	        return "Citizen Updated Successfully";
	    	
	    }
}
	    
	    