package com.student.servlets;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import java.math.BigInteger;
import com.student.dl.*;
import com.google.gson.*;
import java.io.*;
public class GetStudent extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
java.util.List<Student> students = new ArrayList<>();
try
{
Connection connection = DAOConnection.getConnection();
PreparedStatement statement = connection.prepareStatement("select * from student");
ResultSet resultSet = statement.executeQuery();
while(resultSet.next())
{
String name = resultSet.getString("name");
String id = resultSet.getString("studentId");
String dob  = resultSet.getDate("dob").toString();
String email = resultSet.getString("email");
String college = resultSet.getString("college");
String contact = String.valueOf(resultSet.getLong("contact"));
String address = resultSet.getString("address");
Student student = new Student(name,id,dob,email,college,contact,address);
students.add(student);
}
statement.close();
resultSet.close();
connection.close();
HttpSession session = request.getSession();
if(students.size()==0)
{
session.setAttribute("studentExists",false);
}else
{
session.setAttribute("studentExists",true);
session.setAttribute("studentsList",students);
}
}catch(Exception e)
{
System.out.println(e);
}
}
public void doPost(HttpServletRequest request,HttpServletResponse response)
{

}
}