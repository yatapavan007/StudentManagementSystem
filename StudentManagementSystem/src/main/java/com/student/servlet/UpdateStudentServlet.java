package com.student.servlet;

import com.student.dao.StudentDAO;
import com.student.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/update")
public class UpdateStudentServlet extends HttpServlet {
    private StudentDAO studentDAO;

    @Override
    public void init() {
        studentDAO = new StudentDAO();
    }

    // Show student data in form for editing (GET request)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Student existingStudent = studentDAO.selectStudent(id);
            request.setAttribute("student", existingStudent);
            request.getRequestDispatcher("student-form.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            response.sendRedirect("list");
        }
    }

    // Handle update form submission (POST request)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String course = request.getParameter("course");

            Student updatedStudent = new Student(id, name, email, phone, course);

            boolean success = studentDAO.updateStudent(updatedStudent);
            if (success) {
                response.sendRedirect("list");
            } else {
                request.setAttribute("errorMessage", "Error updating student.");
                request.setAttribute("student", updatedStudent);
                request.getRequestDispatcher("student-form.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Invalid data, please check your input.");
            request.getRequestDispatcher("student-form.jsp").forward(request, response);
        }
    }
}
