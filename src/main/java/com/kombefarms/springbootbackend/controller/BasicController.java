package com.kombefarms.springbootbackend.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kombefarms.springbootbackend.model.Feeding;
import com.kombefarms.springbootbackend.service.PersonService;

@RestController
public class BasicController {

	@Autowired
	private PersonService personService;
	
	
	@GetMapping("/all")
	public List<Feeding> getAll() {
		
		return personService.findAll();
	}
	
	
	
}
