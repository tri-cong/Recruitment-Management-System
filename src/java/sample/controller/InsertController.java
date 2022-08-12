/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import sample.applicant.Applicant;
import sample.applicant.ApplicantDAO;
import sample.interview.Interview;
import sample.interview.InterviewDAO;

/**
 *
 * @author HI
 */
@WebServlet(name = "InsertController", urlPatterns = {"/insert"})
public class InsertController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String SUCCESS = "index.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException, NamingException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String url = SUCCESS;
        boolean checkValidation = true;
        try {
            String idApplicant = request.getParameter("idApplicant");
            String nameApplicant = request.getParameter("nameApplicant");
            String gender = request.getParameter("gender");
            String maritalStatus = request.getParameter("maritalStatus");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");
            String cmnd = request.getParameter("cmnd");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String introduceMyseft = request.getParameter("introduceMyseft");
            String education = request.getParameter("education");
            String university = request.getParameter("university");
            String major = request.getParameter("major");
            String nameJob = request.getParameter("nameJob");
            String interviewDate = request.getParameter("interviewDate");
            String interviewTime = request.getParameter("interviewTime");
            String interviewer = request.getParameter("interviewer");
            String CV = request.getParameter("CV");
            String status = request.getParameter("status");
            String img = request.getParameter("img");
            ApplicantDAO dao = new ApplicantDAO();
            InterviewDAO dao1 = new InterviewDAO();
            
//            try (PrintWriter out = response.getWriter()) {
//                Part part = request.getPart("file");
//                String fileName = part.getSubmittedFileName();
//
//                String path = getServletContext().getRealPath("/" + "files" + File.separator + fileName);
//
//                InputStream is = part.getInputStream();
//                boolean succs = uploadFile(is, path);
//                if (succs == true) {
//                    out.println("file uploaded to this directory: " + path);
//                } else {
//                    out.println("something wrong");
//                }
//            }
            if (checkValidation) {
                Applicant app = new Applicant(idApplicant, nameApplicant, gender, maritalStatus, dob, address, cmnd, email, phone, introduceMyseft, education, university, major, nameJob, img);
                Interview add = new Interview(idApplicant, nameApplicant, gender, maritalStatus, dob, address, cmnd, email, phone, introduceMyseft, education, university, major, nameJob, img, interviewDate, interviewTime, interviewer, CV, status);
                boolean checkInsert = dao.addApplicant(app);
                boolean checkInsert1 = dao1.addInterview(add);
                if (checkInsert && checkInsert1) {
                    url = SUCCESS;
                }
            }
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

//    public boolean uploadFile(InputStream is, String path) {
//        boolean test = false;
//        try {
//            byte[] byt = new byte[is.available()];
//            is.read();
//            FileOutputStream fops = new FileOutputStream(path);
//            fops.write(byt);
//            fops.flush();
//            fops.close();
//
//            test = true;
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return test;
//    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(InsertController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(InsertController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(InsertController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(InsertController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(InsertController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(InsertController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
