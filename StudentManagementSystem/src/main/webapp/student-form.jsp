<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Get student object if editing, else null
    com.student.model.Student student = (com.student.model.Student) request.getAttribute("student");
    boolean isEdit = (student != null);
%>
<!DOCTYPE html>
<html>
<head>
    <title><%= isEdit ? "Edit Student" : "Add Student" %></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2><%= isEdit ? "Edit Student" : "Add Student" %></h2>

    <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) { 
    %>
        <div class="alert alert-danger"><%= errorMessage %></div>
    <% } %>

    <form action="<%= isEdit ? "update" : "add" %>" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Student ID</label>
            <input type="number" class="form-control" id="id" name="id" required
                   value="<%= isEdit ? student.getId() : "" %>" <%= isEdit ? "readonly" : "" %> />
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" required
                   value="<%= isEdit ? student.getName() : "" %>" />
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required
                   value="<%= isEdit ? student.getEmail() : "" %>" />
        </div>

        <div class="mb-3">
            <label for="phone" class="form-label">Phone</label>
            <input type="text" class="form-control" id="phone" name="phone" required
                   value="<%= isEdit ? student.getPhone() : "" %>" />
        </div>

        <div class="mb-3">
            <label for="course" class="form-label">Course</label>
            <input type="text" class="form-control" id="course" name="course" required
                   value="<%= isEdit ? student.getCourse() : "" %>" />
        </div>

        <button type="submit" class="btn btn-primary"><%= isEdit ? "Update Student" : "Add Student" %></button>
        <a href="list" class="btn btn-secondary ms-2">Cancel</a>
    </form>
</div>
</body>
</html>
