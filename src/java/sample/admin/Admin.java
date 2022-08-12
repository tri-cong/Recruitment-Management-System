/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.admin;

/**
 *
 * @author HI
 */
public class Admin {
    private int idAdmin;
    private String nameAdmin;
    private String userId;
    private String password;
    private int status;
    private String email;

    public Admin() {
    }

    public Admin(int idAdmin, String nameAdmin, String userId, String password, int status, String email) {
        this.idAdmin = idAdmin;
        this.nameAdmin = nameAdmin;
        this.userId = userId;
        this.password = password;
        this.status = status;
        this.email = email;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getNameAdmin() {
        return nameAdmin;
    }

    public void setNameAdmin(String nameAdmin) {
        this.nameAdmin = nameAdmin;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Admin{" + "idAdmin=" + idAdmin + ", nameAdmin=" + nameAdmin + ", userId=" + userId + ", password=" + password + ", status=" + status + ", email=" + email + '}';
    }
    
}
