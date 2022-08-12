/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import sample.utils.DBUtils;

/**
 *
 * @author HI
 */
public class AdminDAO {
    private static final String LOGIN = "SELECT * FROM admin WHERE email = ? and password = ?";
    public Admin checkLogin(String email, String password) throws SQLException {
        Admin user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, email);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String nameAdmin = rs.getString("nameAdmin");
                    String userId = rs.getString("userId");
                    int idAdmin = rs.getInt("idAdmin");
                    int status = rs.getInt("status");
                    user = new Admin( idAdmin,  nameAdmin,  userId,  password,  status,  email);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return user;
    }
}
