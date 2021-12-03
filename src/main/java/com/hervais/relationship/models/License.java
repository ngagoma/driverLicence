package com.hervais.relationship.models;

import java.text.DecimalFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="licenses")
public class License {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
    private String IDNumber;

    @Column(name = "expiration_date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date expiration_date;
    private String state;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
    
    private Date createdAt;
    @Column
    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
    private Date updatedAt;
    
    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="person_id")
    private Person persons;
//    private List<Person> persons; for one to many
    
    
    int number = 0;
    
    
    public License() {}
    

	public int getNumber() {
		return number;
	}


	public void setNumber(int number) {
		this.number = number ++;
	}


	public Long getId() {
		return id;
	}

	public Person getPersons() {
		return persons;
	}


	public void setPersons(Person persons) {
		this.persons = persons;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getIDNumber() {
//		DecimalFormat df = new DecimalFormat("0000"); 
		
//		this.getNumber();
		
//		IDNumber = Integer.toString((Integer.parseInt(df.format(this.getNumber())) + 1));
		return IDNumber;
	}


	public void setIDNumber(String iDNumber) {
		
		IDNumber = iDNumber;
	}


	public Date getExpiration_date() {
		return expiration_date;
	}

	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
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

