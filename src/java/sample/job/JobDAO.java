/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.job;

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
public class JobDAO {

    public static final String INSERTJOB = "INSERT INTO job(idJob, nameJob, jobDesciption, jobRequest, rights, workplace, degree, experience, applieddate, quantity, cateID) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
    public static final String UPDATEJOB = "UPDATE job SET nameJob = ?, jobDesciption = ?, jobRequest = ?, rights = ?, workplace = ?, degree = ?, experience = ?, applieddate = ?, quantity = ?, cateID = ? WHERE idJob = ?";
    private static final String DELETE = "DELETE job WHERE idJob=?";
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Job> getListJob() {
        List<Job> list = new ArrayList<>();
        String query = "SELECT * FROM job";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getTotalJob() {
        String query = "SELECT COUNT(*) FROM job";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Job> pagingJob(int index) {
        List<Job> list = new ArrayList<>();
        String query = "SELECT * FROM job\n"
                + "ORDER BY idJob\n"
                + "OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY;";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Job> getJobByIdCate(String idJobcate) {
        List<Job> list = new ArrayList<>();
        String query = "SELECT * FROM job WHERE cateID = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idJobcate);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Job getdetailsByIdJob(String idJob) {
        String query = "SELECT * FROM job WHERE idJob = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idJob);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Job> searchByName(String txtSearch) {
        List<Job> list = new ArrayList<>();
        String query = "SELECT * FROM job WHERE nameJob like ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        JobDAO dao = new JobDAO();
        List<Job> list = dao.pagingJob(1);
        for (Job o : list) {
            System.out.println(o);
        }
    }
    
    public boolean addJob(Job b) throws SQLException, ClassNotFoundException, NamingException {
        boolean check = false;

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(INSERTJOB);
            ps.setString(1, b.getIdJob());
            ps.setString(2, b.getNameJob());
            ps.setString(3, b.getJobDesciption());
            ps.setString(4, b.getJobRequest());
            ps.setString(5, b.getRights());
            ps.setString(6, b.getWorkplace());
            ps.setString(7, b.getDegree());
            ps.setString(8, b.getExperience());
            ps.setString(9, b.getApplieddate());
            ps.setString(10, b.getQuantity());
            ps.setString(11, b.getCateID());

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
    
    public boolean updateJob(Job job) throws SQLException, ClassNotFoundException, NamingException {
        boolean check = false;

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(UPDATEJOB);
            
            ps.setString(1, job.getNameJob());
            ps.setString(2, job.getJobDesciption());
            ps.setString(3, job.getJobRequest());
            ps.setString(4, job.getRights());
            ps.setString(5, job.getWorkplace());
            ps.setString(6, job.getDegree());
            ps.setString(7, job.getExperience());
            ps.setString(8, job.getApplieddate());
            ps.setString(9, job.getQuantity());
            ps.setString(10, job.getCateID());
            ps.setString(11, job.getIdJob());

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
    public Job getJobByID(String id) {
        String query = "SELECT * FROM job WHERE idJob = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public boolean delete(String idJob) throws SQLException {
        boolean check = false;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(DELETE);
                ps.setString(1, idJob);
                check = ps.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
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
