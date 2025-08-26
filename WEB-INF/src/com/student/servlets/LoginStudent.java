package com.student.servlets;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import java.util.*;
import com.student.dl.*;
import java.io.*;
public class LoginStudent extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
String studentId = request.getParameter("studentId");
String password = request.getParameter("password");
Connection connection = DAOConnection.getConnection();
PreparedStatement statement = connection.prepareStatement("select * from validStudent where studentId=?");
statement.setString(1,studentId);
ResultSet resultSet = statement.executeQuery();
String dbid=null;
String dbpassword=null;
RequestDispatcher rd =null;
if(!resultSet.next())
{
statement.close();
resultSet.close();
connection.close();
request.setAttribute("hasMessage",true);
request.setAttribute("message","Not registered register first");
rd = request.getRequestDispatcher("varify.jsp");
try
{
rd.forward(request,response);
}catch(Exception e)
{
e.printStackTrace();
}
}
else
{
dbid = resultSet.getString("studentId");
dbpassword = resultSet.getString("password");

if(dbid.equals(studentId)&& dbpassword.equals(password))
{
statement.close();
resultSet.close();
connection.close();
request.setAttribute("id",dbid);
rd= request.getRequestDispatcher("quiz.jsp");
try
{
rd.forward(request,response);
}catch(Exception e)
{
e.printStackTrace();
}
}else if(!dbpassword.equals(password))
{
statement.close();
resultSet.close();
connection.close();
request.setAttribute("hasMessage",true);
request.setAttribute("message","Incorrect Password");
rd = request.getRequestDispatcher("varify.jsp");
try
{
rd.forward(request,response);
}catch(Exception e)
{
e.printStackTrace();
}
}
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