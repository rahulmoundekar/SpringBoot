package com.spring.boot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TestController {

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView firstPage() {
		return new ModelAndView("welcome");
	}

}
