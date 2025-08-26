package com.student.servlets;

public class Option
{
private String text;
private boolean isCorrect;
public Option(String text,boolean isCorrect)
{
this.text = text;
this.isCorrect = isCorrect;
}
public void setText(String text)
{
this.text = text;
}
public String getText()
{
return this.text;
}
public void setIsCorrect(boolean isCorrect)
{
this.isCorrect = isCorrect;
}
public boolean getIsCorrect()
{
return isCorrect;
}
}