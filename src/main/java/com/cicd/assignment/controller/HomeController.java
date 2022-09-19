package com.cicd.assignment.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	@GetMapping("/")
	public ResponseEntity<?> home(){
		Map<String, Object> response = new HashMap<>();
		response.put("data", "hello! im cicd!! why?");
		
		return ResponseEntity.ok(response);
	}
}
