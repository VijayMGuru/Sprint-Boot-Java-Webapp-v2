package com.levo.dockerexample.controller;

import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("docker-java-app")
public class HelloController {
	
	@RequestMapping(value = "/prod", method = RequestMethod.GET)
	public String prod() {
		return "docker-java-app-prod is up and running: " + new Date();
	}

}
