package com.TB.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;


@Component
@Service
public class SMSUtil {
	private static final Logger logger=LoggerFactory.getLogger(SMSUtil.class);
	
	
	
	public void sendSMS(String mobile, String msg,
			String username,
			String password,
			String custid,
			String sendertxt,
			String smsurl) {
		logger.info("sendSMS start");
    
        String recipientnos = "965"+mobile;
        try {            		
        	String requestUrl  = smsurl+
        			"?username="+URLEncoder.encode(username, "UTF-8")
    	            +"&password="+URLEncoder.encode(password, "UTF-8")
    	            +"&customerId="+URLEncoder.encode(custid, "UTF-8")
    	            +"&senderText="+URLEncoder.encode(sendertxt, "UTF-8")
    	            +"&messageBody="+URLEncoder.encode(msg, "UTF-8")
    	            +"&recipientNumbers="+URLEncoder.encode(recipientnos, "UTF-8")
    	            +"&defdate=&isBlink=false&isFlash=false";
        	logger.info("sms requestUrl  ---- " + requestUrl);
    	            URL url = new URL(requestUrl);
    	    		HttpURLConnection uc = (HttpURLConnection) url.openConnection();
    	    		logger.info("mobile msg  ---- " + uc.getResponseMessage() + " recipientnos " + recipientnos);
    	    		uc.disconnect();
            } catch(Exception ex) {
            	logger.error("error in sendSMS: "+ex);
            }  
	    	logger.info("sendSMS end");
	    }
	
	}
