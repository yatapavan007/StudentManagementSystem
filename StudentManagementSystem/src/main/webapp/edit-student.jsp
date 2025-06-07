<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.student.model.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">Edit Student</h2>

    <%
        Student student = (Student) request.getAttribute("student");
        if (student == null) {
    %>
        <div class="alert alert-danger">Student not found!</div>
    <%
        } else {
    %>
    <form action="update" method="post">
        <input type="hidden" name="id" value="<%= student.getStudentId() %>">
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" class="form-control" name="name" value="<%= student.getName() %>" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" class="form-control" name="email" value="<%= student.getEmail() %>">
        </div>
        <div class="mb-3">
            <label class="form-label">Phone</label>
            <input type="text" class="form-control" name="phone" value="<%= student.getPhone() %>">
        </div>
        <div class="mb-3">
            <label class="form-label">Course</label>
            <input type="text" class="form-control" name="course" value="<%= student.getCourse() %>">
        </div>
        <div class="mb-3">
            <label class="form-label">Registration Date</label>
            <input type="date" class="form-control" name="regdate"
                   value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(student.getRegistrationDate()) %>" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="list" class="btn btn-secondary">Cancel</a>
    </form>
    <%
        }
    %>
</div>
</body>
</html>
