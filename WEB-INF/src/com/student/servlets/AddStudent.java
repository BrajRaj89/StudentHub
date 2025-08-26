package com.student.servlets;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import java.math.BigInteger;
import com.student.dl.*;
public class AddStudent extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
RequestDispatcher requestDispatcher= request.getRequestDispatcher("addStudent.jsp");
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String studentId= request.getParameter("studentId");
String dob = request.getParameter("date");
String email = request.getParameter("email");
String college = request.getParameter("college");
String address = request.getParameter("address");
String contact = request.getParameter("contact");
String name = firstName+" "+lastName;
try
{
Connection connection = DAOConnection.getConnection();
PreparedStatement preparedStatement = connection.prepareStatement("insert into student values(?,?,?,?,?,?,?)");
preparedStatement.setString(1,name);
preparedStatement.setString(2,studentId);
SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
java.util.Date dateOfBirth= simpleDateFormat.parse(dob);
java.sql.Date  sqlDate = new java.sql.Date(dateOfBirth.getYear(),dateOfBirth.getMonth(),dateOfBirth.getDay());
preparedStatement.setDate(3,sqlDate);
preparedStatement.setString(4,email);
preparedStatement.setString(5,college);
preparedStatement.setLong(6,Long.parseLong(contact));
preparedStatement.setString(7,address);
preparedStatement.executeUpdate();
preparedStatement.close();
connection.close();
request.setAttribute("hasMessage",true);
request.setAttribute("message","Student saved successfully");
}catch(SQLException sqlException)
{
if(sqlException.getErrorCode()==1062)
{
request.setAttribute("hasMessage",true);
request.setAttribute("message","Duplicate studentId or name");
}else
{
request.setAttribute("hasMessage",true);
request.setAttribute("message","Some Problem");
}
}
try
{
requestDispatcher.forward(request,response);
}catch(Exception e)
{
e.printStackTrace();
}
}catch(Exception e)
{
e.printStackTrace();
}
}
public void doGet(HttpServletRequest request, HttpServletResponse response)
{
try
{
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "GET method is not supported.");
}catch(Exception e)
{
e.printStackTrace();
}
}

}