package com.hervais.relationship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hervais.relationship.models.License;
import com.hervais.relationship.repository.LicenseRepository;

@Service
public class LicenseService {
	
	@Autowired
	private LicenseRepository licenseRepo;

	public LicenseService(LicenseRepository license) {
		this.licenseRepo = license;
	}
	
	public List<License> getAllLicenses() {
		return this.licenseRepo.findAll();
	}
	
	public License create(License license) {
		return this.licenseRepo.save(license);
	}
	
	public License update(License license) {
		return this.licenseRepo.save(license);
	}
	
	public void delete(Long id) {
		this.licenseRepo.deleteById(id);
	}
	
	public License findLicenceById(Long id) {
		return this.licenseRepo.findById(id).get();
	}
	
	
	
}
