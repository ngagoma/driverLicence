package com.hervais.relationship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hervais.relationship.models.Person;
import com.hervais.relationship.repository.PersonRepository;

@Service
public class PersonService {
	
	@Autowired
	private PersonRepository personRepo;

	
	
	public PersonService(PersonRepository personRepo) {
		this.personRepo = personRepo;
	}

	public List<Person> getAllPerson() {
		return this.personRepo.findAll();
	}
	
	public Person create(Person person) {
		return this.personRepo.save(person);
	}
	
	public Person update(Person person) {
		return this.personRepo.save(person);
	}
	
	public void delete(Long id) {
		this.personRepo.deleteById(id);
	}
	
	public Person findPersonById(Long id) {
		return this.personRepo.findById(id).get();
	}
}
