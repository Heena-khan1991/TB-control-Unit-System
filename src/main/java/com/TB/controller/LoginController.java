package com.TB.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Value("${backendlocal.url}")
	private String backendlocal;

	@RequestMapping("/")
	public void handleRequest() {
		throw new RuntimeException("test exception");
	}

	@GetMapping("/login")
	public String loginpage(ModelMap model) {
		return "login";
	}

	@GetMapping("/loginActDir")
	public String loginActDir(ModelMap model, HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "loginActDir";
	}

	@RequestMapping(value = { "/registerUser" }, method = RequestMethod.GET)
	public String registerUser(ModelMap model) {
		return "registerUser";
	}

	@RequestMapping(value = { "/forgotpass" }, method = RequestMethod.GET)
	public String location(ModelMap model) {
		return "forgotpass";
	}

}
