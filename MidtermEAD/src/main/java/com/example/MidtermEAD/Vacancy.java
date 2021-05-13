package com.example.MidtermEAD;

public class Vacancy {
    private int vId;
    private String vName;
    private String vDecription;
    private String vData;
    private String vCompany;

    public Vacancy() {
    }

    public Vacancy(int vId, String vName, String vDecription, String vData, String vCompany) {
        this.vId = vId;
        this.vName = vName;
        this.vDecription = vDecription;
        this.vData = vData;
        this.vCompany = vCompany;
    }

    public int getvId() {
        return vId;
    }

    public void setvId(int vId) {
        this.vId = vId;
    }

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName;
    }

    public String getvDecription() {
        return vDecription;
    }

    public void setvDecription(String vDecription) {
        this.vDecription = vDecription;
    }

    public String getvData() {
        return vData;
    }

    public void setvData(String vData) {
        this.vData = vData;
    }

    public String getvCompany() {
        return vCompany;
    }

    public void setvCompany(String vCompany) {
        this.vCompany = vCompany;
    }
}
