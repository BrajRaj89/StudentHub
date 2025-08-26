package com.student.servlets;
import java.util.*;
public class Question
{
private int id;
private String question;
private List<Option> options;
public Question(int id, String question, List<Option> options) 
{
this.id = id;
this.question = question;
this.options = options;
}
public void setId(int id)
{
this.id = id;
}
public int getId()
{
return this.id;
}
public void setQuestion(String question)
{
this.question = question;
}
public String getQuestion()
{
return  this.question;
}
public void setOption(List<Option> options)
{
this.options = options;
}
public List<Option> getOption()
{
return this.options;
}
}

