package com.TB.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.TB.service.ApiResponse;
import com.TB.util.MultipartUtility;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.net.MalformedURLException;
import java.net.URL;
import java.security.Principal;
import java.util.List;
import java.util.stream.Collectors;

@RestController
//@RequestMapping(value={"/"})
public class CORSController {

	@Value("${backendlocal.url}")
	private String backendlocal;

	@Autowired
	ApiResponse apiservice;
	
	Logger log = LoggerFactory.getLogger(CORSController.class);

	// Common service without Authorization
	@PostMapping("/postgetResponse")
	public ResponseEntity<String> getResponse(HttpServletRequest request, @RequestParam(required = true) String method,
			@RequestBody String bodyValue) throws MalformedURLException {
		return apiservice.loginapiservice(request, method, bodyValue, backendlocal);
	}

	// Common service with Authorization
	@PostMapping("apiResponse")
	public ResponseEntity<String> apiResponse(HttpServletRequest request, @RequestParam(required = true) String method,
			@RequestBody String bodyValue) throws MalformedURLException {
		return apiservice.apiservicewttkn(request, method, bodyValue, backendlocal);
	}

	// Common service with out Body Parameter
	@GetMapping("getlistresponse")
	public ResponseEntity<String> getlistresponse(HttpServletRequest request,
			@RequestParam(required = true) String method) throws MalformedURLException {
		return apiservice.getlistresponse(request, method, backendlocal);
	}

	// Common service with out Body Parameter
	@PostMapping("postlistresponse")
	public ResponseEntity<String> postlistresponse(HttpServletRequest request,
			@RequestParam(required = true) String method) throws MalformedURLException {
		return apiservice.postlistresponse(request, method, backendlocal);
	}
	
	
	@PostMapping("viewDocuments")
	public ResponseEntity<String> viewDocuments(HttpServletRequest request,
			@RequestParam(required = true) String method,@RequestParam String reqid, @RequestParam String regid,
			@RequestParam String procid, @RequestParam String proctype) throws MalformedURLException {
		return apiservice.postlistresponse1(request,reqid,regid,procid,proctype,method, backendlocal);
	}


	@PostMapping("getBackendResposeInspFile")
	public ResponseEntity<String> getBackendResposeInspFile(HttpServletRequest request,
			@RequestParam("files") MultipartFile[] files, @RequestParam String reqId, @RequestParam String regId,
			@RequestParam(required = true) String method) {
		try {
			String authTokenHeader = request.getHeader("Authorization");
			// logger.info("authTokenHeader" + authTokenHeader);
			URL url = null;
			url = new URL(backendlocal + "/" + method);
			// String method = "uploadFile";
			// log.info("getBackendResposeInspComm method name--");
			// System.out.println("--appRegId--" + appRegId);
			String response = new String();
			MultipartUtility multipart = null;
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				System.out.println(file.getSize() + ", " + file.getOriginalFilename());
				try {
//									URL url = new URL (backendlocal+"/"+method+"?"+request.getQueryString());
//									System.out.println(url);
					multipart = new MultipartUtility(url.toString(), "UTF-8", authTokenHeader);
					// multipart.addHeaderField("User-Agent", "MOHIT"); //
					multipart.addHeaderField("Test-Header", "Header-Value");
					multipart.addFormField("reqId", reqId);
					multipart.addFormField("regId", regId);
					multipart.addFilePart("files", file);
					List<String> res = multipart.finish();
					for (String line : res) { // get your server response
						response = line;
					}

				} catch (Exception e) {

					if (multipart != null)
						multipart.finish();
					throw e;
				} finally {
					if (multipart != null)
						multipart.finish();
				}
			}
			return new ResponseEntity<>(response.toString(), HttpStatus.OK);
		} catch (Exception e) {
			// logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				// logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else if (e.getMessage().toLowerCase().contains("http response code: 400")) {
				log.error("400 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
			} else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}
	}

	
	@PostMapping("getBackendResposeInspFile1")
	public ResponseEntity<String> getBackendResposeInspFile1(HttpServletRequest request,
			@RequestParam("files") MultipartFile[] files, @RequestParam String reqid, @RequestParam String regid,
			@RequestParam String procid, @RequestParam String proctype,
			@RequestParam(required = true) String method) {
		try {
			String authTokenHeader = request.getHeader("Authorization");
			// logger.info("authTokenHeader" + authTokenHeader);
			URL url = null;
			url = new URL(backendlocal + "/" + method);
			// String method = "uploadFile";
			// log.info("getBackendResposeInspComm method name--");
			// System.out.println("--appRegId--" + appRegId);
			String response = new String();
			MultipartUtility multipart = null;
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				System.out.println(file.getSize() + ", " + file.getOriginalFilename());
				try {
//									URL url = new URL (backendlocal+"/"+method+"?"+request.getQueryString());
//									System.out.println(url);
					multipart = new MultipartUtility(url.toString(), "UTF-8", authTokenHeader);
					// multipart.addHeaderField("User-Agent", "MOHIT"); //
					multipart.addHeaderField("Test-Header", "Header-Value");
					multipart.addFormField("reqid", reqid);
					multipart.addFormField("regid", regid);
					multipart.addFormField("procid", procid);
					multipart.addFormField("proctype", proctype);
					multipart.addFilePart("files", file);
					List<String> res = multipart.finish();
					for (String line : res) { // get your server response
						response = line;
					}

				} catch (Exception e) {

					if (multipart != null)
						multipart.finish();
					throw e;
				} finally {
					if (multipart != null)
						multipart.finish();
				}
			}
			return new ResponseEntity<>(response.toString(), HttpStatus.OK);
		} catch (Exception e) {
			// logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				// logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else if (e.getMessage().toLowerCase().contains("http response code: 400")) {
				log.error("400 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
			} else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}
	}
	
	@PostMapping("getBackendResposeInspFile2")
	public ResponseEntity<String> getBackendResposeInspFile2(HttpServletRequest request,
			@RequestParam String reqid, @RequestParam String regid,
			@RequestParam String procid, @RequestParam String proctype,
			@RequestParam(required = true) String method) {
		try {
			String authTokenHeader = request.getHeader("Authorization");
			URL url = null;
			url = new URL(backendlocal + "/" + method);
			String response = new String();
			MultipartUtility multipart = null;
				try {
					multipart = new MultipartUtility(url.toString(), "UTF-8", authTokenHeader);
					multipart.addHeaderField("Test-Header", "Header-Value");
					multipart.addFormField("reqid", reqid);
					multipart.addFormField("regid", regid);
					multipart.addFormField("procid", procid);
					multipart.addFormField("proctype", proctype);
					List<String> res = multipart.finish();
					for (String line : res) { // get your server response
						response = line;
					}

				} catch (Exception e) {

					if (multipart != null)
						multipart.finish();
					throw e;
				} finally {
					if (multipart != null)
						multipart.finish();
				}
			//}
			return new ResponseEntity<>(response.toString(), HttpStatus.OK);
		} catch (Exception e) {
			// logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				// logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else if (e.getMessage().toLowerCase().contains("http response code: 400")) {
				log.error("400 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
			} else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}
	}
	// service to get email id
	@PostMapping(value = "/getADuser")
	public ResponseEntity<String> getADuser(HttpServletRequest request) {
		log.info("here in login service");
		Principal principal = request.getUserPrincipal();
		String aduser = "";
		if (!(principal == null)) {
			log.info("here in principal");
			aduser = principal.getName();
		} else {
			aduser = "NA";
		}
		return new ResponseEntity<>(aduser.toString(), HttpStatus.OK);
	}

	@GetMapping("/invalidateSession")
	public String invalidateSession(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		if (session != null) {
			session.invalidate();
			return "Session invalidated successfully";
		} else {
			return "No active session found";
		}
	}

}
