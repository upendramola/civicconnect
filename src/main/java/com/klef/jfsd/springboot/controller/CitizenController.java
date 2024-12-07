package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.service.CitizenService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CitizenController 
{
  @Autowired
  private CitizenService citizenService;
  
//  @GetMapping("/")
//  public ModelAndView home()
//  {
//    ModelAndView mv= new ModelAndView();
//    mv.setViewName("home");
//    return mv;
//  }
  
  @GetMapping("citreg")
  public ModelAndView citreg()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("citreg");
    return mv;
  }
  
  @GetMapping("citlogin")
  public ModelAndView citlogin()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("citlogin");
    return mv;
  }
  
  @PostMapping("insertcit")
  public ModelAndView insertcit(HttpServletRequest request)
  {
    String name = request.getParameter("cname");
    String gender = request.getParameter("cgender");
    String dob = request.getParameter("cdob");
    String email = request.getParameter("cemail");
    String password = request.getParameter("cpwd");
    String contactno = request.getParameter("ccontactno");
    String aadharnumber = request.getParameter("caadharnumber");
    
    Citizen cit = new Citizen();
    cit.setName(name);
    cit.setGender(gender);
    cit.setDob(dob);
    cit.setEmail(email);
    cit.setPassword(password);
    cit.setContactno(contactno);
    cit.setAadharnumber(aadharnumber);
    
    String msg = citizenService.CitizenRegistration(cit);
    
    ModelAndView mv = new ModelAndView("citregsuccess");
    mv.addObject("message", msg);
    
    return mv;
  }
  
  @PostMapping("checkcitlogin")
  public ModelAndView checkcitlogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    Citizen cit = citizenService.checkcitlogin(email, password);
    
    if(cit != null)
    {
      HttpSession session = request.getSession();
      session.setAttribute("Citizen", cit);
      
      mv.setViewName("cithome");
    }
    else
    {
      mv.setViewName("citlogin");
      mv.addObject("message", "Login Failed");
    }
    return mv;
  }
    
  @GetMapping("cithome")
  public ModelAndView cithome()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("cithome");
    return mv; 
  }
  
  @GetMapping("citprofile")
  public ModelAndView citprofile()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("citprofile");
    return mv; 
  }
  

  @GetMapping("citcontactus")
  public ModelAndView citcontactus()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("citcontactus");
    return mv; 
  }
  
  @GetMapping("citlogout")
  public ModelAndView citlogout(HttpServletRequest request)
  {
    HttpSession session = request.getSession();
    session.removeAttribute("Citizen"); 
    
    ModelAndView mv = new ModelAndView();
    mv.setViewName("citlogin");
    return mv; 
  }
  
  @GetMapping("updatecit")
  public ModelAndView updatecit()
  {
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("updatecit");
	  return mv;
	  
  }
  
  @PostMapping("updatecitprofile")
  public ModelAndView updatecitprofile(HttpServletRequest request) {
      ModelAndView mv = new ModelAndView();

      try {
          int id = Integer.parseInt(request.getParameter("cid"));
          String name = request.getParameter("cname");
          String password = request.getParameter("cpwd");
          String contact = request.getParameter("ccontact");

          Citizen cit = new Citizen();
          cit.setId(id);
          cit.setName(name);
          cit.setPassword(password);
          cit.setContactno(contact);

          String msg = citizenService.updateCitizenProfile(cit);

          Citizen Citizen = citizenService.displayCitizenByID(id);

          HttpSession session = request.getSession();
          session.setAttribute("Citizen", Citizen);  // Ensure "Citizen" is used consistently

          mv.setViewName("updatesuccess");
          mv.addObject("message", msg);

      } catch (Exception e) {
          mv.setViewName("cupdateerror");
          mv.addObject("message", e);
      }

      return mv;
  }

  @GetMapping("citsessionexpiry")
  public ModelAndView citsessionexpiry()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("citsessionexpiry");
    return mv;
  }
 
  
}
