package com.kombefarms.springbootbackend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kombefarms.springbootbackend.model.Feeding;
import com.kombefarms.springbootbackend.repository.PersonRepository;

@Service
public class PersonService {

	
	@Autowired
	private PersonRepository personRepository;
	
	
	public List<Feeding> findAll(){
		return personRepository.findAll();
	}
	
	
}
