package com.TB.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InspectorController {

	@Value("${backendlocal.url}")
	private String backendlocal;

	@RequestMapping(value = { "/inspector" }, method = RequestMethod.GET)
	public String inspector(ModelMap model) {
		return "inspector";
	}
	
	@RequestMapping(value = { "/appointment" }, method = RequestMethod.GET)
	public String appointment(ModelMap model) {
		return "appointment";
	}

}
