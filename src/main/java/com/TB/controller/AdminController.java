package com.TB.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	/*
	 * @Value("${backendlocal.url}") private String backendlocal;
	 */

	@RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
	public String admin(ModelMap model) {
		return "admin";
	}

	@RequestMapping(value = { "/location" }, method = RequestMethod.GET)
	public String location(ModelMap model) {
		return "location";
	}

}
