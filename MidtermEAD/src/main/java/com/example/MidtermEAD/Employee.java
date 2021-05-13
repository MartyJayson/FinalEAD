package com.example.MidtermEAD;

public class Employee {
    private int id;
    private String fname;
    private String surname;
    private String passwrd;
    private String birthday;
    private String gender;

    public Employee() {
    }

    public Employee(String fname, String surname, String passwrd, String birthday, String gender) {
        this.fname = fname;
        this.surname = surname;
        this.passwrd = passwrd;
        this.birthday = birthday;
        this.gender = gender;
    }

    public Employee(int id, String fname, String surname, String passwrd, String birthday, String gender) {
        this.id = id;
        this.fname = fname;
        this.surname = surname;
        this.passwrd = passwrd;
        this.birthday = birthday;
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPasswrd() {
        return passwrd;
    }

    public void setPasswrd(String passwrd) {
        this.passwrd = passwrd;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
