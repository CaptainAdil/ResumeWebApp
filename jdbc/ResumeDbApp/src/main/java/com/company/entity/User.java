package com.company.entity;

import java.sql.Date;
import java.util.List;

public class User {
    private int id;
    private String name;
    private String surname;
    private String phone;
    private String email;
    private String password;
    private String profileDesc;
    private String address;
    private Date birthDate;
    private Country nationality;
    private Country birthplace;
    private List<UserSkill> skills;
    
    
    public User(){}

    public User(int id) {
        this.id = id;
    }
    
    public User(int id, String name, String surname, String email,String profileDesc, String phone,String address, Date birthDate, Country nationality, Country birthplace) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.phone = phone;
        this.email = email;
        this.birthDate = birthDate;
        this.nationality = nationality;
        this.birthplace = birthplace;
        this.profileDesc = profileDesc;
        this.address = address;
    }
    
    
    
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

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public Country getNationality() {
        return nationality;
    }

    public Country getBirthplace() {
        return birthplace;
    }

    public List<UserSkill> getSkills() {
        return skills;
    }

    public void setSkills(List<UserSkill> skills) {
        this.skills = skills;
    }

    public String getProfileDesc() {
        return profileDesc;
    }

    public void setProfileDesc(String profileDescription) {
        this.profileDesc = profileDescription;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public void setNationality(Country nationality) {
        this.nationality = nationality;
    }

    public void setBirthplace(Country birthplace) {
        this.birthplace = birthplace;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", surname=" + surname + ", phone=" + phone + ", email=" + email + ", profileDesc=" + profileDesc + ", address=" + address + ", birthDate=" + birthDate + ", nationality=" + nationality + ", birthplace=" + birthplace + ", skills=" + skills + '}';
    }

    
    


    
}
