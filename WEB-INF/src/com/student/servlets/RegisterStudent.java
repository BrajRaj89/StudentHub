package com.student.servlets;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import java.util.*;
import com.student.dl.*;
import java.io.*;
public class RegisterStudent extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
String studentId = request.getParameter("studentId");
String password = request.getParameter("password");
Connection connection = DAOConnection.getConnection();
PreparedStatement statement = connection.prepareStatement("insert into validStudent values(?,?)");
statement.setString(1,studentId);
statement.setString(2,password);
RequestDispatcher rd =null;
String message =""; 
try
{
statement.executeUpdate();
message = "Registered Successfully";
}catch(SQLException exception)
{
int code = exception.getErrorCode();
if(code==1062)
{
message = "Student already registerd";
}
else if(code==1452)
{
message = "Id not found in record";
}
}
statement.close();
connection.close();
request.setAttribute("hasMessage",true);
request.setAttribute("message",message);
rd = request.getRequestDispatcher("varify.jsp");
try
{
rd.forward(request,response);
}catch(Exception e)
{
e.printStackTrace();
}
}catch(Exception e)
{
System.out.println(e);
}
}
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
System.out.println("do get called");
}
}