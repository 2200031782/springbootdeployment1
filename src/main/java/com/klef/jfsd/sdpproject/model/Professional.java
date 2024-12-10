package com.klef.jfsd.sdpproject.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="professional_table")
public class Professional
{
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name="professional_id")
	   private int id;
	   @Column(name="professional_name",nullable=false,length = 50)
	   private String name;
	   @Column(name="professional_gender",nullable=false,length = 20)
	   private String gender;
	   @Column(name="professional_dob",nullable=false,length = 20)
	   private String dateofbirth;
	   @Column(name="professional_salary",nullable=false)
	   private double salary;
	   @Column(name="professional_skills",nullable=false,unique = true,length = 50)
	   private String skills;
	   @Column(name="professional_email",nullable=false,unique = true,length = 50)
	   private String email;
	   @Column(name="professional_password",nullable=false,length = 50)
	   private String password;
	   @Column(name="professional_location",nullable=false,length=50)
	   private String location;
	   @Column(name="professional_contact",nullable=false,unique = true,length = 20)
	   private String contact;
	   @Column(name="product_image",nullable = false)
	   private Blob image;
	  
	   @Column(name="professional_status",nullable=false,length = 50)
	   private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	
	
	   
}