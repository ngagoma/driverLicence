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

import com.hervais.relationship.models.License;
//import com.hervais.relationship.models.Person;
import com.hervais.relationship.service.LicenseService;
import com.hervais.relationship.service.PersonService;

@Controller
public class LicenseController {
	
	@Autowired
	private LicenseService service;
	
	@Autowired
	private PersonService pService;

//	Display all records
	@GetMapping("licenses/view")
	public String getAllRecords(Model viewModel) {
//		System.out.println("allRecords" + this.service.getAllLicenses());
		viewModel.addAttribute("allRecords", this.service.getAllLicenses());
		
		return "License/viewRecords.jsp";
	}
	
//	view a record
	@GetMapping("/licenses/{id}")
	public String getARecord(@PathVariable Long id, Model model) {
		
		model.addAttribute("recordId", this.service.findLicenceById(id));
		
//		System.out.println("recordId" +  this.service.findLicenceById(id));
		return "License/viewRecord.jsp";
	}
	
//	Update record
	@PostMapping("/licenses/edit")
	public String update(@Valid @ModelAttribute("license") License license, 
						 RedirectAttributes redirectAttribute, BindingResult result,
						 Model model) {
		
		if (result.hasErrors()){
			return "viewRecord.jsp";
		}else {
			
			this.service.update(license);
			redirectAttribute.addFlashAttribute("message", "License Updated Successfully");
			return "/redirect:/licenses/view";
			
		}
		
	}
	
	
//	Add record
	
	@GetMapping("licenses/new")
	public String getLicenseForm(Model model, License license) {
		model.addAttribute("personObj", this.pService.getAllPerson());
		model.addAttribute("idNumber", license.getIDNumber());
		
		System.out.println("my ID" + license.getIDNumber());
		
		return "License/newLicense.jsp";
		
	}
	
	@PostMapping("licenses/new")
	public String addNewRecord(@Valid @ModelAttribute("license") License license, RedirectAttributes redirectAttrib, BindingResult result, Model viewModel) {
		
		System.out.println("viewModel" + viewModel);
		
		if (result.hasErrors()) {
			return "License/newLicense.jsp";
		} else {
		
			this.service.create(license);
			redirectAttrib.addFlashAttribute("message", "New License Created!");
			return "redirect:/licenses/view";
		}
	}
	
	
	
}
