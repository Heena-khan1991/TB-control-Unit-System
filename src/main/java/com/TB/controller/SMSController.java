package com.TB.controller;

import org.apache.commons.lang.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.TB.util.SMSUtil;

import jakarta.servlet.http.HttpServletRequest;

@RestController
public class SMSController {

	@Value("${smsuser}")
	private String usr;
	@Value("${smspassword}")
	private String password;
	@Value("${custid}")
	private String custid;
	@Value("${sendertxt}")
	private String sendertxt;
	@Value("${smsurl}")
	private String smsurl;
	private static final Logger logger = LoggerFactory.getLogger(SMSController.class);

	
	@RequestMapping(value = "/sendmsg", method = RequestMethod.POST)
	public @ResponseBody String sendotpsms(HttpServletRequest request,@RequestBody String bodyValue) {
		logger.info("inside sendSMS");
		final String SUCCESS = "SMS sent successfully";
		final String FAIL = "Error occurred while sending sms!";
		try {
			logger.info("bodyValue="+bodyValue);
			JSONObject json =new JSONObject(bodyValue); 
		String mobile=json.getString("mobile");	
		String message=json.getString("message");
		SMSUtil smsutil = new SMSUtil();
		if (StringUtils.isNotEmpty(mobile)) {
			try {
				smsutil.sendSMS(mobile, message,usr,password,custid,sendertxt,smsurl);
				return SUCCESS;
			} catch (Exception e1) {
				logger.info("Error in sending sms to " + mobile + " " + e1);
				return FAIL;
			}
		}
		}catch(Exception e) {
			logger.info("Error sms " +e.getMessage());
			return FAIL;
		}
		return "";
	}

}