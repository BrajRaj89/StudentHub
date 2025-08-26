package com.student.dl;
import java.sql.*;

public class DAOConnection
{
public static Connection getConnection()
{
Connection connection=null;
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb","studentdbuser","studentdbuser");
}catch(Exception exception)
{
System.out.println(exception.getMessage());
}
return connection;
}
}