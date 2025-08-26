package com.student.servlets;
import jakarta.servlet.http.*;
import jakarta.servlet.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.student.dl.*;
import com.google.gson.*;
import java.io.*;

public class GetQuestion extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
List<Question> questions = new ArrayList<>();
Connection connection = DAOConnection.getConnection();

PreparedStatement preparedStatement = connection.prepareStatement("select * from questions");

ResultSet resultSet = preparedStatement.executeQuery();

while(resultSet.next())
{
int questionId = resultSet.getInt("id");
String questionText = resultSet.getString("question_text"); 
PreparedStatement ps = connection.prepareStatement("select option_text,is_correct from options where question_id=?");
ps.setInt(1,questionId);
ResultSet rs = ps.executeQuery();
List<Option> options = new ArrayList<>();
while(rs.next())
{
String option_text = rs.getString("option_text");
boolean is_correct = rs.getBoolean("is_correct");
Option option =null;
option = new Option(option_text,is_correct);
options.add(option);
}
rs.close();
ps.close();
Question question =null;
question =  new Question(questionId,questionText,options);
questions.add(question);
}
resultSet.close();
preparedStatement.close();
connection.close();
HttpSession session = request.getSession();
PrintWriter pw = response.getWriter();
if(questions.size()!=0)
{
Gson gson = new Gson();
String jsonString = gson.toJson(questions);
pw.print(jsonString);
pw.flush();
}else
{
pw.println("some problem");
pw.flush();
}
}catch(Exception exception)
{
try
{
response.getWriter().write("some problem");
exception.printStackTrace();
}catch(Exception e)
{
e.printStackTrace();
} 
} 
}
}