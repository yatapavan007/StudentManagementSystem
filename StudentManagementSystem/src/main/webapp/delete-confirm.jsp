<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.student.model.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Delete Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <%
        Student student = (Student) request.getAttribute("student");
        if (student == null) {
    %>
        <div class="alert alert-danger">Student not found!</div>
    <%
        } else {
    %>
    <h3>Are you sure you want to delete this student?</h3>
    <table class="table table-bordered mt-3">
        <tr><th>ID</th><td><%= student.getStudentId() %></td></tr>
        <tr><th>Name</th><td><%= student.getName() %></td></tr>
        <tr><th>Email</th><td><%= student.getEmail() %></td></tr>
        <tr><th>Phone</th><td><%= student.getPhone() %></td></tr>
        <tr><th>Course</th><td><%= student.getCourse() %></td></tr>
    </table>
    <form action="delete" method="post">
        <input type="hidden" name="id" value="<%= student.getStudentId() %>">
        <button type="submit" class="btn btn-danger">Yes, Delete</button>
        <a href="list" class="btn btn-secondary">Cancel</a>
    </form>
    <%
        }
    %>
</div>
</body>
</html>
