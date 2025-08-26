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
public class GetStudentsName extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
java.util.List<String> studentsName = new ArrayList<>();
try
{
Connection connection = DAOConnection.getConnection();
PreparedStatement statement = connection.prepareStatement("select name from student");
ResultSet resultSet = statement.executeQuery();
while(resultSet.next())
{
String name = resultSet.getString("name");
studentsName.add(name);
}
Gson gson = new Gson();
String gsonString = gson.toJson(studentsName);
PrintWriter pw  = response.getWriter();
response.setContentType("application/json");
pw.print(gsonString);
pw.flush();
statement.close();
resultSet.close();
connection.close();
}catch(Exception e)
{
System.out.println(e);
}
}
public void doPost(HttpServletRequest request,HttpServletResponse response)
{

}
}