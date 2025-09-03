# Student Web Application
A  Java-based web application built with **Servlets, JSP, JSTL Tomcat, and MySQL**.  
This project manages student records, quizzes, and results in a web-based UI.

---
## Features
- Add and register students
- Search students and view results
- Quiz module with score tracking
- JSP pages with CSS/JS styling
- Servlet-based backend
- Deployed on **Apache Tomcat**
- Uses **MySQL** for data storage

---
##  Project Structure
- STUDENT-HUB/ 
- css/#stylesheets   
- images/# Images  
- js/ # JavaScript files
- WEB-INF/ 
- classes/ # Compiled .class files (ignored in Git)<br>
- lib/ # Required JAR dependencies  
- web.xml # Deployment descriptor    
- src/ # Java source code (Servlets, etc.)   
- *.jsp
---
##  Requirements
- **Java JDK 8+**
- **Apache Tomcat 9+**
- **MySQL 5.7+**

---
##  Database Setup

This application uses **MySQL** as the backend database.  
Before running the project, you must create the required tables.

### 1. Create Database
```sql
CREATE DATABASE studentdb;

###2.Create Tables
  CREATE TABLE options (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT,
    option_text VARCHAR(255),
    is_correct TINYINT(1),
    FOREIGN KEY (question_id) REFERENCES questions(id)
  );
  CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text VARCHAR(255) NOT NULL
  );
  CREATE TABLE student (
    name VARCHAR(30) NOT NULL,
    studentId VARCHAR(30) NOT NULL UNIQUE,
    dob DATE NOT NULL,
    email VARCHAR(50) NOT NULL,
    college VARCHAR(50) NOT NULL,
    contact BIGINT NOT NULL,
    address VARCHAR(50) NOT NULL,
    PRIMARY KEY (name)
  );
  CREATE TABLE validstudent (
    studentId VARCHAR(30) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (studentId),
    FOREIGN KEY (studentId) REFERENCES student(studentId)
);

### 3. Update Connection
String url = "jdbc:mysql://localhost:3306/studentdb";
String user = "root";
String password = "yourpassword";

```
---


## Run Application
 1. Clone the Repository
git clone  https://github.com/BrajRaj89/StudentHub.git
 2. set the Database
 3. Place the project folder in tomcat webapps/ folder
 4. Start Tomcat Server
 5. Open browser type http://localhost:8080/StudentHub
    
## Screenshots

https://github.com/BrajRaj89/StudentHub/blob/main/assets/screenshots/Homepage.png
https://github.com/BrajRaj89/StudentHub/blob/main/assets/screenshots/HomepageBottom.png
https://github.com/BrajRaj89/StudentHub/blob/main/assets/screenshots/AddStudent.png
https://github.com/BrajRaj89/StudentHub/blob/mai/assets/screenshots/Quiz.png
https://github.com/BrajRaj89/StudentHub/blob/main/assets/screenshots/Available.png
https://github.com/BrajRaj89/StudentHub/blob/main/assets/screenshots/Register.png

