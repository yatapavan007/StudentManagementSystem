<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.student.model.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2>Student List</h2>
    <a href="add" class="btn btn-primary mb-3">Add New Student</a>
    <table class="table table-bordered table-striped bg-white">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Course</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Student> studentList = (List<Student>) request.getAttribute("studentList");
            if (studentList == null || studentList.isEmpty()) {
        %>
            <tr>
                <td colspan="6" class="text-center">No students found.</td>
            </tr>
        <%
            } else {
                for (Student s : studentList) {
        %>
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getEmail() %></td>
                <td><%= s.getPhone() %></td>
                <td><%= s.getCourse() %></td>
                <td>
                    <a href="edit?id=<%= s.getId() %>" class="btn btn-sm btn-warning">Edit</a>
                    <a href="delete?id=<%= s.getId() %>" class="btn btn-sm btn-danger"
                       onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                </td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
