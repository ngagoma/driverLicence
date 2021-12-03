package com.hervais.relationship.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hervais.relationship.models.Person;
import com.hervais.relationship.service.PersonService;

@Controller
public class PersonController {
	
	@Autowired
	private final PersonService service;
	
	public PersonController(PersonService service) {
		this.service = service;
	}
	
//	root
	@GetMapping("/")
	public String home(Person person, Model model) {
		model.addAttribute("listOfPerson", model);
		
		return "redirect:/persons/view";
	}

//	View people
	@GetMapping("/persons/view")
	public String displayPeople(Model model) {
		model.addAttribute("listOfPerson", this.service.getAllPerson());
		return "/Person/viewPeople.jsp";
	}
	
//	View a person
	@GetMapping("/persons/{id}")
	public String findAPerson(@PathVariable Long id, Model viewModel) {
		viewModel.addAttribute("aPerson", this.service.findPersonById(id));
		System.out.println(this.service.findPersonById(id).getLicenses().getExpiration_date());
		
		return "/Person/viewPerson.jsp";
	}
	
	
//	get form
	@GetMapping("/persons/new")
	public String getForm(Person person, Model model) {
		model.addAttribute("listOfPerson", person);
		
		return "/Person/newPerson.jsp";
	}
	
	@PostMapping("/persons/new")
	public String createAPerson(@Valid @ModelAttribute("person") Person person, RedirectAttributes redirectAttrib, BindingResult result) {
		
		if (result.hasErrors()) {
			return "/Person/newPerson.jsp";
		}
		
		this.service.create(person);
		
		redirectAttrib.addFlashAttribute("message", "A Person was successfully created");
		
//		return "viewPeople.jsp";
		return "redirect:/persons/view";
	}
	
	
//	Update language
	
	@GetMapping("/persons/edit/{id}")
	public String editPerson(@PathVariable Long id, Model model) {
		model.addAttribute("personId", this.service.findPersonById(id));
		return "/Person/editPeople.jsp";
	}
	
	@PostMapping("/persons/edit")
	public String update(
			@Valid @ModelAttribute("person") Person person,
						BindingResult result,
						RedirectAttributes redirectAttrib
						) {
			
		
		if ( result.hasErrors() ) {
			
			return "/Person/newPerson.jsp";
		}
		
		this.service.update(person);
		
		redirectAttrib.addFlashAttribute("message", "Language was Successfully Updated");
		
		return "redirect:/persons/view";
	}
	
//	Delete A person
	
	@GetMapping("/persons/delete/{id}")
	public String deletePerson(@PathVariable Long id, RedirectAttributes redirectAttribute) {
		this.service.delete(id);
		redirectAttribute.addFlashAttribute("message", "A Person was successfully deleted!");
		return "redirect:/persons/view";
	}
	
}
