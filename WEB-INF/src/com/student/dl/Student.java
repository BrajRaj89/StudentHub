package com.student.dl;
import java.util.Objects;
import java.io.Serializable;
public record Student(String name,String id,String dob,String email,String college,String contact,String address) implements Serializable
{
public Student{
Objects.requireNonNull(name,"Name not be null");
Objects.requireNonNull(id,"student id not be null");
Objects.requireNonNull(email,"email not be null");
Objects.requireNonNull(dob,"dob not be null");
Objects.requireNonNull(college,"college not be null");
Objects.requireNonNull(contact,"contact number not be null");
Objects.requireNonNull(address,"address not be null");
if(!email.contains("@"))
{
throw new IllegalArgumentException("Invalid email format");
}
if (contact.length() != 10 || !contact.matches("\\d+")) 
{
throw new IllegalArgumentException("Contact number must be 10 digits");
}
if (name.length() < 2) 
{
throw new IllegalArgumentException("Name is too short");
}
}
}