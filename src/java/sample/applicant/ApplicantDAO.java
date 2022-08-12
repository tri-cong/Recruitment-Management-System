/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.applicant;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import sample.utils.DBUtils;

/**
 *
 * @author HI
 */
public class ApplicantDAO {

    public static final String INSERT = "INSERT INTO applicant(nameApplicant, gender, maritalStatus, dob, address, cmnd, email, phone, introduceMyseft, education, university, major, nameJob, img) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public boolean addApplicant(Applicant a) throws SQLException, ClassNotFoundException, NamingException {
        boolean check = false;

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(INSERT);
            ps.setString(1, a.getNameApplicant());
            ps.setString(2, a.getGender());
            ps.setString(3, a.getMaritalStatus());
            ps.setString(4, a.getDob());
            ps.setString(5, a.getAddress());
            ps.setString(6, a.getCmnd());
            ps.setString(7, a.getEmail());
            ps.setString(8, a.getPhone());
            ps.setString(9, a.getIntroduceMyseft());
            ps.setString(10, a.getEducation());
            ps.setString(11, a.getUniversity());
            ps.setString(12, a.getMajor());
            ps.setString(13, a.getNameJob());
            ps.setString(14, a.getImg());

            check = ps.executeUpdate() > 0 ? true : false;
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public List<Applicant> getListApplicant() {
        List<Applicant> list = new ArrayList<>();
        String query = "SELECT * FROM applicant";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Applicant(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Applicant getdetailsByIdApplicant(String idApplicant) {
        String query = "SELECT * FROM applicant WHERE idApplicant = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idApplicant);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Applicant(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
}
