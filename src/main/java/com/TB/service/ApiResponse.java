package com.TB.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class ApiResponse {

	/********************************************************************
	 * Method : API Service With Out Token Date : 09-April-2023 Author : Roshni
	 ********************************************************************/

	private static final Logger logger = LoggerFactory.getLogger(ApiResponse.class);

	public ResponseEntity<String> loginapiservice(HttpServletRequest request,
			@RequestParam(required = true) String method, @RequestBody String bodyValue, String backendlocal)
			throws MalformedURLException {
		try {
			StringBuilder response = new StringBuilder();
			logger.info("method-->" + method);
			URL url = null;
			url = new URL(backendlocal + "/" + method);
			logger.info("url-->" + url);
			logger.info("bodyValue-->" + bodyValue);
			JSONObject json = new JSONObject(bodyValue);
			String username = json.getString("username");
			String ip = getClientIPAddress(request);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Access-Control-Allow-Origin", "*");
			con.setRequestProperty("Content-Type", "application/json; utf-8");
			con.setRequestProperty("Accept", "application/json");
			con.setRequestProperty("ClientIPAddress", ip);
			con.setDoOutput(true);
			try (OutputStream os = con.getOutputStream()) {
				byte[] input = bodyValue.getBytes("utf-8");
				// os.write(input, 0, input.length);
				os.write(input);
			}

			try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
				logger.info("respose in buffer reader" + br);
				String responseLine = null;
				while ((responseLine = br.readLine()) != null) {

					response.append(responseLine.trim());

				}
				logger.info("response: " + response.toString());

				return new ResponseEntity<>(response.toString(), HttpStatus.OK);

			}

		} catch (Exception e) {
			logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}
	}

	/********************************************************************
	 * Method : API Service With Token Date : 04-April-2023 Author : Roshni
	 ********************************************************************/
	public ResponseEntity<String> apiservicewttkn(HttpServletRequest request,
			@RequestParam(required = true) String method, @RequestBody String bodyValue, String backendlocal)
			throws MalformedURLException {
		try {
			logger.info("----api service with token ----------" + bodyValue);
			System.out.println("bodyValue" + bodyValue);
			URL url = new URL(backendlocal + "/" + method);
			String token = "";
			// token = session.getAttribute("token").toString();
			// String authTokenHeader = "Bearer " + token;
			String authTokenHeader = request.getHeader("Authorization");
			logger.debug("authTokenHeader" + authTokenHeader);
			logger.info("url--" + url + "authTokenHeader-->" + authTokenHeader);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			String ip = getClientIPAddress(request);
			StringBuilder response = new StringBuilder();
			con.setRequestMethod("GET");
			con.setRequestProperty("Access-Control-Allow-Origin", "*");
			con.setRequestProperty("Content-Type", "application/json; utf-8");
			con.setRequestProperty("Accept", "application/json");
			con.setRequestProperty("ClientIPAddress", ip);
			if (authTokenHeader != null) {
				con.setRequestProperty("Authorization", authTokenHeader);
			}
			con.setDoOutput(true);
			try (OutputStream os = con.getOutputStream()) {
				byte[] input = bodyValue.getBytes("utf-8");
				// os.write(input, 0, input.length);
				os.write(input);
			}

			try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
				// logger.info("respose in buffer reader" + br);
				String responseLine = null;
				while ((responseLine = br.readLine()) != null) {
					response.append(responseLine.trim());
				}
				// logger.info("response: " + response.toString());
			}
			logger.info("status: " + new ResponseEntity<>(response.toString(), HttpStatus.OK));

			return new ResponseEntity<>(response.toString(), HttpStatus.OK);

		} catch (Exception e) {
			logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else if (e.getMessage().toLowerCase().contains("http response code: 400")) {
				logger.error("400 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
			} else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}

	}

	public ResponseEntity<String> getlistresponse(HttpServletRequest request,
			@RequestParam(required = true) String method, String backendlocal) throws MalformedURLException {
		try {
			logger.info("----All user List----------");

			URL url = new URL(backendlocal + "/" + method);
//String authTokenHeader = "Bearer " +  session.getAttribute("token");
			String authTokenHeader = request.getHeader("Authorization");
			logger.info("url--" + url + "authTokenHeader-->" + authTokenHeader);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			String ip = getClientIPAddress(request);
			con.setRequestMethod("GET");
			con.setRequestProperty("Access-Control-Allow-Origin", "*");
			con.setRequestProperty("Content-Type", "application/json; utf-8");
			con.setRequestProperty("Accept", "application/json");
			con.setRequestProperty("ClientIPAddress", ip);
			if (authTokenHeader != null) {
				con.setRequestProperty("Authorization", authTokenHeader);
			}
			con.setDoOutput(true);
			StringBuilder response = new StringBuilder();
			logger.debug("response: " + response.toString());
			try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
				String responseLine = null;
				while ((responseLine = br.readLine()) != null) {
					response.append(responseLine.trim());
				}
				logger.debug("response: " + response.toString());
			}			
			return new ResponseEntity<>(response.toString(), HttpStatus.OK);
		} catch (Exception e) {
			logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else if (e.getMessage().toLowerCase().contains("http response code: 400")) {
				logger.error("400 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
			}
			else {
				return new ResponseEntity<>(null);
			}
		}

	}

	public ResponseEntity<String> postlistresponse(HttpServletRequest request,
			@RequestParam(required = true) String method, String backendlocal) throws MalformedURLException {
		try {
			logger.info("----All user List----------");

			URL url = new URL(backendlocal + "/" + method);
//String authTokenHeader = "Bearer " +  session.getAttribute("token");
			String authTokenHeader = request.getHeader("Authorization");
			logger.info("url--" + url + "authTokenHeader-->" + authTokenHeader);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			String ip = getClientIPAddress(request);
			con.setRequestMethod("POST");
			con.setRequestProperty("Access-Control-Allow-Origin", "*");
			con.setRequestProperty("Content-Type", "application/json; utf-8");
			con.setRequestProperty("Accept", "application/json");
			con.setRequestProperty("ClientIPAddress", ip);
			if (authTokenHeader != null) {
				con.setRequestProperty("Authorization", authTokenHeader);
			}
			con.setDoOutput(true);
			StringBuilder response = new StringBuilder();
			try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
				String responseLine = null;
				while ((responseLine = br.readLine()) != null) {
					response.append(responseLine.trim());
				}
				logger.info("response: " + response.toString());
			}
			return new ResponseEntity<>(response.toString(), HttpStatus.OK);
		} catch (Exception e) {
			logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else if (e.getMessage().toLowerCase().contains("http response code: 400")) {
				logger.error("400 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
			}else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}

	}
	
	
	
	public ResponseEntity<String> postlistresponse1(HttpServletRequest request,@RequestParam String reqid, @RequestParam String regid,
			@RequestParam String procid, @RequestParam String proctype,
			@RequestParam(required = true) String method, String backendlocal) throws MalformedURLException {
		try {
			logger.info("----All user List----------");
			URL url = new URL(backendlocal + "/" + method+"?reqid="+reqid+"&regid="+regid+"&procid="+procid+"&proctype="+proctype);
			String authTokenHeader = request.getHeader("Authorization");
			logger.info("url--" + url + "authTokenHeader-->" + authTokenHeader);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			String ip = getClientIPAddress(request);
			con.setRequestMethod("POST");
			con.setRequestProperty("Access-Control-Allow-Origin", "*");
			con.setRequestProperty("Content-Type", "application/json; utf-8");
			con.setRequestProperty("Accept", "application/json");
			con.setRequestProperty("ClientIPAddress", ip);
			if (authTokenHeader != null) {
				con.setRequestProperty("Authorization", authTokenHeader);
			}
			con.setDoOutput(true);
			StringBuilder response = new StringBuilder();
			try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
				String responseLine = null;
				while ((responseLine = br.readLine()) != null) {
					response.append(responseLine.trim());
				}
				logger.info("response: " + response.toString());
			}
			return new ResponseEntity<>(response.toString(), HttpStatus.OK);
		} catch (Exception e) {
			logger.error("getResponse error: " + e.getMessage(), e);
			if (e.getMessage().toLowerCase().contains("http response code: 401")) {
				logger.error("401 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.UNAUTHORIZED);
			} else if (e.getMessage().toLowerCase().contains("http response code: 400")) {
				logger.error("400 captured and redirected to ui");
				return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
			}else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}

	}

	public static String getClientIPAddress(HttpServletRequest request) {

		String ipAddress = request.getHeader("X-FORWARDED-FOR");

		if (ipAddress == null) {

			ipAddress = request.getRemoteAddr();

		} else if (ipAddress.contains(",")) {

			ipAddress = ipAddress.split(",")[0];

		}

		return ipAddress;

	}

}
