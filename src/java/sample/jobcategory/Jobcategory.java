/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.jobcategory;

/**
 *
 * @author HI
 */
public class Jobcategory {
    private int idJobcate;
    private String nameJobcate;
    private int idKhoi;

    public Jobcategory() {
    }

    public Jobcategory(int idJobcate, String nameJobcate, int idKhoi) {
        this.idJobcate = idJobcate;
        this.nameJobcate = nameJobcate;
        this.idKhoi = idKhoi;
    }

    public int getIdJobcate() {
        return idJobcate;
    }

    public void setIdJobcate(int idJobcate) {
        this.idJobcate = idJobcate;
    }

    public String getNameJobcate() {
        return nameJobcate;
    }

    public void setNameJobcate(String nameJobcate) {
        this.nameJobcate = nameJobcate;
    }

    public int getIdKhoi() {
        return idKhoi;
    }

    public void setIdKhoi(int idKhoi) {
        this.idKhoi = idKhoi;
    }

    @Override
    public String toString() {
        return "Jobcategory{" + "idJobcate=" + idJobcate + ", nameJobcate=" + nameJobcate + ", idKhoi=" + idKhoi + '}';
    }

    
    
}
