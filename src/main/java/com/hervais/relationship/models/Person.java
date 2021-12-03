package com.hervais.relationship.models;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="persons")
public class Person {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	
    private Long id;
	
	@Size(min=2, max=50, message="Firstname should be min 2 and max 50 Characters")
    private String firstName;
	
	@Size(min=2, max=50, message="Lastname should be min 2 and max 50 Characters")
    private String lastName;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
    private Date createdAt;
    @Column
    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
    private Date updatedAt;
    
    @OneToOne(mappedBy="persons", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private License licenses;
    
    public License getLicenses() {
		return licenses;
	}


	public void setLicenses(License licenses) {
		this.licenses = licenses;
	}


	public Person() {}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

// Callback Methods
	
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
   
	@PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
    
    

}
