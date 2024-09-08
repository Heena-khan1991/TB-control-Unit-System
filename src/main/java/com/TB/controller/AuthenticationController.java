package com.TB.controller;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.TB.service.ApiResponse;
import jakarta.servlet.http.HttpServletRequest;


@RestController
public class AuthenticationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ApiResponse.class);
	
	private final static String ADMIN = "admin";
	private final static String PRC = "PRC";
	private final static String NURSE = "nurse";
	private final static String LAB = "lab";
	private final static String CONTACT = "contactNotifDetails";
	private final static String NewNotification = "newNotification";
	private final static String INSPECTOR = "inspector";
	
	@PostMapping(value = "/pageAuthentication")
	public String authenticatePage( HttpServletRequest request, @RequestBody String authData)throws Exception {
		logger.info("Inside authenticatePage");
		JSONObject json =new JSONObject(authData); 
		String locType = json.getString("locType");
		String userTitle = json.getString("roleTiitle");
		String userPrivilege = json.getString("rolePrivilege");
		String page = json.getString("page");
		String isValidPage = "False";
		logger.info("locType:"+ locType+",userTitle:"+ userTitle+ ",userPrivilege:"+ userPrivilege+",page:"+ page);
		if(locType.equals("5") && page.equalsIgnoreCase(PRC)){
			
			isValidPage = "True";
		}else if(locType.equals("6")  && userTitle.equalsIgnoreCase("ROLE_DOCTOR") 
				&& userPrivilege.equals("3") && page.equalsIgnoreCase(NewNotification)){

			isValidPage = "True";
			
		}else if(locType.equals("6") && userTitle.equalsIgnoreCase("ROLE_DOCTOR") && !userPrivilege.equals( "3") 
				&& (page.equalsIgnoreCase(NewNotification) || page.equalsIgnoreCase(CONTACT) )){
			isValidPage = "True";
			
		} else if(userTitle.equalsIgnoreCase("ROLE_LAB") && page.equalsIgnoreCase(LAB) ){
			
			isValidPage = "True";
		}else if(userTitle.equalsIgnoreCase("ROLE_SUPERVISOR") && locType .equals( "6") && page.equalsIgnoreCase(INSPECTOR) ){
			isValidPage = "True";
		}else if(userTitle.equalsIgnoreCase("ROLE_ADMIN") && page.equalsIgnoreCase(ADMIN)){
			isValidPage = "True";
		}else if(userTitle.equalsIgnoreCase("ROLE_SUPERVISOR") && locType.equals( "6") && page.equalsIgnoreCase(INSPECTOR)){
    		
			isValidPage = "True";
      	 }
		else if(userTitle.equalsIgnoreCase("ROLE_NURSE") && page.equalsIgnoreCase(NURSE) ){
			
			isValidPage = "True";
		}else {
			isValidPage = "False";
		}
		logger.info(isValidPage);
		return isValidPage;
		
	}
	
	
	
	@PostMapping(value = "/Pagelogin")
	public String showPage( HttpServletRequest request, @RequestBody String authData)throws Exception {
		logger.info("Inside showPage");
		JSONObject json =new JSONObject(authData); 
		String locType = json.getString("locType");
		String userTitle = json.getString("roleTiitle");
		String userPrivilege = json.getString("rolePrivilege");
		String page = "";
		
		 if(userTitle.equalsIgnoreCase("ROLE_ADMIN")){
			 page = ADMIN; 
         }
		 
        if(userTitle.equalsIgnoreCase("ROLE_DOCTOR") && locType.equals( "6") && !userPrivilege.equals( "3")){
        	page = NewNotification; 
      	 }
        
         if(userTitle.equalsIgnoreCase("ROLE_DOCTOR") && locType.equals( "6") && userPrivilege .equals(  "3")){
        	 page = CONTACT;
         }
            
     	if(userTitle.equalsIgnoreCase("ROLE_SUPERVISOR") && locType.equals( "6")){
     		page = INSPECTOR;
      	 }
         	
         if(userTitle.equalsIgnoreCase("ROLE_DOCTOR") && locType.equals( "5")){
        	 page = PRC;
      	 }
             
          if(userTitle.equalsIgnoreCase("ROLE_LAB")){
        	  page = LAB ;
         }
          
       if(userTitle.equalsIgnoreCase("ROLE_NURSE")){  
    	    page = NURSE;
       }
       logger.info(page);
		return page;
	}
	
	
	@PostMapping(value = "/showHeader")
	public String showHeader( HttpServletRequest request, @RequestBody String authData)throws Exception {
		logger.info("Inside showHeader");
		JSONObject json =new JSONObject(authData); 
		String locType = json.getString("locType");
		String userTitle = json.getString("roleTiitle");
		String userPrivilege = json.getString("rolePrivilege");
		JSONObject outputJson = new JSONObject();
		
		outputJson.put("prcSideBar", "N");
		outputJson.put("contSideBar", "N");
		outputJson.put("notifSideBar", "N");
		outputJson.put("labSideBar", "N");
		outputJson.put("nurseSideBar", "N");
		
		if(locType.equals("5")){
			
			outputJson.put("prcSideBar", "Y");
			
		}else if( locType.equals("6") && userTitle.equalsIgnoreCase("ROLE_DOCTOR") && userPrivilege.equals("3")){
			
			outputJson.put("contSideBar", "Y");
			
		}else if(locType.equals("6") && userTitle.equalsIgnoreCase("ROLE_DOCTOR") && !userPrivilege.equals("3")){
			
			outputJson.put("contSideBar", "Y");
			outputJson.put("notifSideBar", "Y");
			
		} else if(userTitle.equalsIgnoreCase("ROLE_LAB") ){
			
			outputJson.put("labSideBar", "Y");
			
		}else if(userTitle.equalsIgnoreCase("ROLE_NURSE") ){
			
			outputJson.put("nurseSideBar", "Y");
					
		}else {
			
		}
		return outputJson.toString();
	}

}
