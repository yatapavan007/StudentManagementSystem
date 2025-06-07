<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">Add Student</h2>
    <form action="add" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Student ID</label>
            <input type="number" class="form-control" name="id" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" class="form-control" name="name" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" class="form-control" name="email">
        </div>
        <div class="mb-3">
            <label class="form-label">Phone</label>
            <input type="text" class="form-control" name="phone">
        </div>
        <div class="mb-3">
            <label class="form-label">Course</label>
            <input type="text" class="form-control" name="course">
        </div>
        <div class="mb-3">
            <label class="form-label">Registration Date</label>
            <input type="date" class="form-control" name="regdate" required>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
        <a href="list" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
