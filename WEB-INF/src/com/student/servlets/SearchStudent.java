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
public class SearchStudent extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
{
try
{
String requestName = request.getParameter("name").trim();
Connection connection = DAOConnection.getConnection();
PreparedStatement statement = connection.prepareStatement("select * from student where name=?");
statement.setString(1,requestName);
ResultSet resultSet = statement.executeQuery();
Student student =null;
while(resultSet.next())
{
System.out.println("got called");
String name = resultSet.getString("name");
String id = resultSet.getString("studentId");
String dob  = resultSet.getDate("dob").toString();
String email = resultSet.getString("email");
String college = resultSet.getString("college");
String contact = String.valueOf(resultSet.getLong("contact"));
String address = resultSet.getString("address");
student = new Student(name,id,dob,email,college,contact,address);
}

if(student!=null)
{
request.setAttribute("recordFound",true);
request.setAttribute("student",student);
}else
{
request.setAttribute("recordFound",false);
}
statement.close();
resultSet.close();
connection.close();
try
{
RequestDispatcher rd = request.getRequestDispatcher("searchResult.jsp");
rd.forward(request,response);
}catch(Exception e)
{
e.printStackTrace();
}
System.out.println("request forwarded");
}catch(Exception e)
{
System.out.println("Error in extracting records "+e.getMessage());
}
}
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
response.sendRedirect("index.jsp");
}catch(Exception e)
{
System.out.println(e.getMessage());
}
}
}