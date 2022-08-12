/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.job;

/**
 *
 * @author HI
 */
public class Job {
    private String idJob;
    private String nameJob;
    private String jobDesciption;
    private String jobRequest;
    private String rights;
    private String workplace;
    private String degree;
    private String experience;
    private String applieddate;
    private String quantity;
    private String cateID;

    public Job() {
    }

    public Job(String idJob, String nameJob, String jobDesciption, String jobRequest, String rights, String workplace, String degree, String experience, String applieddate, String quantity, String cateID) {
        this.idJob = idJob;
        this.nameJob = nameJob;
        this.jobDesciption = jobDesciption;
        this.jobRequest = jobRequest;
        this.rights = rights;
        this.workplace = workplace;
        this.degree = degree;
        this.experience = experience;
        this.applieddate = applieddate;
        this.quantity = quantity;
        this.cateID = cateID;
    }

    public String getIdJob() {
        return idJob;
    }

    public void setIdJob(String idJob) {
        this.idJob = idJob;
    }

    public String getNameJob() {
        return nameJob;
    }

    public void setNameJob(String nameJob) {
        this.nameJob = nameJob;
    }

    public String getJobDesciption() {
        return jobDesciption;
    }

    public void setJobDesciption(String jobDesciption) {
        this.jobDesciption = jobDesciption;
    }

    public String getJobRequest() {
        return jobRequest;
    }

    public void setJobRequest(String jobRequest) {
        this.jobRequest = jobRequest;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }

    public String getWorkplace() {
        return workplace;
    }

    public void setWorkplace(String workplace) {
        this.workplace = workplace;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getApplieddate() {
        return applieddate;
    }

    public void setApplieddate(String applieddate) {
        this.applieddate = applieddate;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getCateID() {
        return cateID;
    }

    public void setCateID(String cateID) {
        this.cateID = cateID;
    }

    @Override
    public String toString() {
        return "Job{" + "idJob=" + idJob + ", nameJob=" + nameJob + ", jobDesciption=" + jobDesciption + ", jobRequest=" + jobRequest + ", rights=" + rights + ", workplace=" + workplace + ", degree=" + degree + ", experience=" + experience + ", applieddate=" + applieddate + ", quantity=" + quantity + ", cateID=" + cateID + '}';
    }

    
}
