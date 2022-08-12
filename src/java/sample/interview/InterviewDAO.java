/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.interview;

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
public class InterviewDAO {
    public static final String INSERT1 = "INSERT INTO interview(nameApplicant, gender, maritalStatus, dob, address, cmnd, email, phone, introduceMyseft, education, university, major, nameJob, img, interviewDate, interviewTime, interviewer, CV, statuss) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    public static final String UPDATEINTERVIEW = "UPDATE interview SET nameApplicant = ?, gender = ?, maritalStatus = ?, dob = ?, address = ?, cmnd = ?, email = ?, phone = ?, introduceMyseft = ?, education = ?, university = ?, major = ?, nameJob = ?, img = ?, interviewDate = ?, interviewTime = ?, interviewer = ?, CV = ?, statuss = ? WHERE idApplicant = ?";
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public boolean addInterview(Interview a) throws SQLException, ClassNotFoundException, NamingException {
        boolean check = false;

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(INSERT1);
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
            ps.setString(15, a.getInterviewDate());
            ps.setString(16, a.getInterviewTime());
            ps.setString(17, a.getInterviewer());
            ps.setString(18, a.getCV());
            ps.setString(19, a.getStatuss());

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
    
    public List<Interview> getListInterview() {
        List<Interview> list = new ArrayList<>();
        String query = "SELECT * FROM interview";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Interview(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19), rs.getString(20)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Interview searchByEmail(String email) {
        String query = "SELECT * FROM interview WHERE email like ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Interview(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19), rs.getString(20));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Interview searchByPhone(String phone) {
        String query = "SELECT * FROM interview WHERE email phone ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Interview(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19), rs.getString(20));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Interview getdetailsByIdInterview(String idInterview) {
        String query = "SELECT * FROM interview WHERE idApplicant = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idInterview);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Interview(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19), rs.getString(20));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public boolean updateInterview(Interview interview) throws SQLException, ClassNotFoundException, NamingException {
        boolean check = false;

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(UPDATEINTERVIEW);
            
            ps.setString(1, interview.getNameApplicant());
            ps.setString(2, interview.getGender());
            ps.setString(3, interview.getMaritalStatus());
            ps.setString(4, interview.getDob());
            ps.setString(5, interview.getAddress());
            ps.setString(6, interview.getCmnd());
            ps.setString(7, interview.getEmail());
            ps.setString(8, interview.getPhone());
            ps.setString(9, interview.getIntroduceMyseft());
            ps.setString(10, interview.getEducation());
            ps.setString(11, interview.getUniversity());
            ps.setString(12, interview.getMajor());
            ps.setString(13, interview.getNameJob());
            ps.setString(14, interview.getImg());
            ps.setString(15, interview.getInterviewDate());
            ps.setString(16, interview.getInterviewTime());
            ps.setString(17, interview.getInterviewer());
            ps.setString(18, interview.getCV());
            ps.setString(19, interview.getStatuss());
            ps.setString(20, interview.getIdApplicant());

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
}
