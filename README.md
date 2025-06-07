# Student Management System

A dynamic web application built using **JSP**, **Servlets**, **JDBC**, and **Oracle Database** to manage student information efficiently.

---

## 🚀 Features

- 🔐 Login & Logout (Session-based)
- ➕ Add New Students
- 📋 View Student List
- ✏️ Update Student Information
- ❌ Delete Students
- 🔎 Search Students
- 📊 User-friendly Bootstrap UI

---

## 🛠️ Technologies Used

- **Frontend:** HTML, CSS, Bootstrap
- **Backend:** Java (Servlets, JSP)
- **Database:** Oracle
- **Server:** Apache Tomcat
- **IDE:** Eclipse (Dynamic Web Project)

---

## 🗃️ Database Schema (Oracle)

### Table: `students`

| Column Name | Data Type      | Constraints         |
|-------------|----------------|---------------------|
| student_id  | NUMBER          | PRIMARY KEY         |
| name        | VARCHAR2(100)   | NOT NULL            |
| email       | VARCHAR2(100)   | UNIQUE              |
| course      | VARCHAR2(100)   |                     |
| dob         | DATE            |                     |

---

## ⚙️ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/yatapavan007/StudentManagementSystem.git
