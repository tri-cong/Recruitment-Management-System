/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.applicant;

import java.awt.Image;

/**
 *
 * @author HI
 */
public class Applicant {
    private String idApplicant;
    private String nameApplicant;
    private String gender;
    private String maritalStatus;
    private String dob;
    private String address;
    private String cmnd;
    private String email;
    private String phone;
    private String introduceMyseft;
    private String education;
    private String university;
    private String major;
    private String nameJob;
    private String img;

    public Applicant() {
    }

    public Applicant(String idApplicant, String nameApplicant, String gender, String maritalStatus, String dob, String address, String cmnd, String email, String phone, String introduceMyseft, String education, String university, String major, String nameJob, String img) {
        this.idApplicant = idApplicant;
        this.nameApplicant = nameApplicant;
        this.gender = gender;
        this.maritalStatus = maritalStatus;
        this.dob = dob;
        this.address = address;
        this.cmnd = cmnd;
        this.email = email;
        this.phone = phone;
        this.introduceMyseft = introduceMyseft;
        this.education = education;
        this.university = university;
        this.major = major;
        this.nameJob = nameJob;
        this.img = img;
    }

    public String getIdApplicant() {
        return idApplicant;
    }

    public void setIdApplicant(String idApplicant) {
        this.idApplicant = idApplicant;
    }

    public String getNameApplicant() {
        return nameApplicant;
    }

    public void setNameApplicant(String nameApplicant) {
        this.nameApplicant = nameApplicant;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIntroduceMyseft() {
        return introduceMyseft;
    }

    public void setIntroduceMyseft(String introduceMyseft) {
        this.introduceMyseft = introduceMyseft;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getNameJob() {
        return nameJob;
    }

    public void setNameJob(String nameJob) {
        this.nameJob = nameJob;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Applicant{" + "idApplicant=" + idApplicant + ", nameApplicant=" + nameApplicant + ", gender=" + gender + ", maritalStatus=" + maritalStatus + ", dob=" + dob + ", address=" + address + ", cmnd=" + cmnd + ", email=" + email + ", phone=" + phone + ", introduceMyseft=" + introduceMyseft + ", education=" + education + ", university=" + university + ", major=" + major + ", nameJob=" + nameJob + ", img=" + img + '}';
    }
    
    
}
