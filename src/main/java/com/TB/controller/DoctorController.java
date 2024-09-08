package com.TB.controller;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.util.Base64;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.TB.service.ApiResponse;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class DoctorController {

	@Value("${backendlocal.url}")
	private String backendlocal;

	private static final Logger logger = LoggerFactory.getLogger(ApiResponse.class);
	
	@RequestMapping(value = { "/examinationDetails" }, method = RequestMethod.GET)
	public String examinationDetailsTab(ModelMap model) {
		return "examinationDetails";
	}
	
	@RequestMapping(value = { "/PRC" }, method = RequestMethod.GET)
	public String referredToPRC(ModelMap model) {
		return "PRC";
	}

	@RequestMapping(value = { "/newNotification" }, method = RequestMethod.GET)
	public String newNotification(ModelMap model) {
		return "newNotification";
	}
	
	
	@RequestMapping(value = { "/contactNotifDetails" }, method = RequestMethod.GET)
	public String contNotifDtlsPage(ModelMap model) {
		return "contactNotifDetails";
	}

	@RequestMapping(value = { "/icd11" }, method = RequestMethod.GET)
	public String icd11(ModelMap model) {
		return "icd11";
	}

	@RequestMapping(value = "/getFileUploaded", method = RequestMethod.POST)
	public void getFileUploaded(HttpServletResponse response, HttpServletRequest request, @RequestBody String civilData,
			HttpSession session) throws Exception {
		session.setAttribute("dataFileUploaded", civilData);

	}
	
	@RequestMapping(value = { "/lab" }, method = RequestMethod.GET)
	public String labUserPage(ModelMap model) {
		return "lab";
	}
	
	@RequestMapping(value = { "/nurse" }, method = RequestMethod.GET)
	public String nurseUserPage(ModelMap model) {
		return "nurse";
	}
	
	@RequestMapping(value = "/getFile", method = RequestMethod.GET)
	public void getFileUploaded(HttpServletResponse response, HttpServletRequest request, HttpSession session)
			throws Exception {

		String dataFile = (String) session.getAttribute("dataFileUploaded");

		JSONObject jsonObject = new JSONObject(dataFile);
		String data = jsonObject.get("civilData").toString();
		logger.info("data-->" + data);
		String name = "CivilId";
		String type = "pdf";
		String extension = "";
		if (data.contains("image/jpeg")) {
			extension = "image/jpeg";
			data = data.substring(20);
		}
		if (data.contains("image/jpg")) {
			extension = "image/jpg";
			data = data.substring(19);
		}
		if (data.contains("image/png")) {
			extension = "image/png";
			data = data.substring(19);
		}
		if (data.contains("application/pdf")) {
			extension = "application/pdf";
			data = data.substring(25);
		}

		logger.info("data1-->" + data);
		logger.info("extension-->" + extension);
		byte[] b = Base64.getDecoder().decode(data);
		// byte[] b = Base64.getDecoder().decode(carg.getBytes());
		response.setContentType(extension);
		response.setHeader("Content-disposition", "inline; filename=" + name);
		ByteArrayOutputStream baos = new ByteArrayOutputStream(b.length);
		baos.write(b);
		OutputStream out = response.getOutputStream();
		baos.writeTo(out);
		out.flush();
		out.close();
		session.removeAttribute("dataFileUploaded");

	}

}
