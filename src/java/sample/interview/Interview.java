/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.interview;

/**
 *
 * @author HI
 */
public class Interview {
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
    private String interviewDate;
    private String interviewTime;
    private String interviewer;
    private String CV;
    private String statuss;

    public Interview() {
    }

    public Interview(String idApplicant, String nameApplicant, String gender, String maritalStatus, String dob, String address, String cmnd, String email, String phone, String introduceMyseft, String education, String university, String major, String nameJob, String img, String interviewDate, String interviewTime, String interviewer, String CV, String statuss) {
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
        this.interviewDate = interviewDate;
        this.interviewTime = interviewTime;
        this.interviewer = interviewer;
        this.CV = CV;
        this.statuss = statuss;
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

    public String getInterviewDate() {
        return interviewDate;
    }

    public void setInterviewDate(String interviewDate) {
        this.interviewDate = interviewDate;
    }

    public String getInterviewTime() {
        return interviewTime;
    }

    public void setInterviewTime(String interviewTime) {
        this.interviewTime = interviewTime;
    }

    public String getInterviewer() {
        return interviewer;
    }

    public void setInterviewer(String interviewer) {
        this.interviewer = interviewer;
    }

    public String getCV() {
        return CV;
    }

    public void setCV(String CV) {
        this.CV = CV;
    }

    public String getStatuss() {
        return statuss;
    }

    public void setStatuss(String statuss) {
        this.statuss = statuss;
    }

    @Override
    public String toString() {
        return "Interview{" + "idApplicant=" + idApplicant + ", nameApplicant=" + nameApplicant + ", gender=" + gender + ", maritalStatus=" + maritalStatus + ", dob=" + dob + ", address=" + address + ", cmnd=" + cmnd + ", email=" + email + ", phone=" + phone + ", introduceMyseft=" + introduceMyseft + ", education=" + education + ", university=" + university + ", major=" + major + ", nameJob=" + nameJob + ", img=" + img + ", interviewDate=" + interviewDate + ", interviewTime=" + interviewTime + ", interviewer=" + interviewer + ", CV=" + CV + ", statuss=" + statuss + '}';
    }


}
