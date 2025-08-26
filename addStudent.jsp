<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page='navSection.jsp' />
<div class="addForm">
<h3 style="text-align:center;font-family:Times New Roman;font-size: 28px;"><strong>Add Student</strong></h3>
<c:if test='${!empty requestScope.hasMessage}'>
<p style='text-align:center;color:red'>${requestScope.message}</p>
<script>
setTimeout(function (){
window.location.href = "/myproject1/addStudent.jsp"; 
}, 2000);
</script>
</c:if>
<div class="container">
<form id="studentForm" method='post' action="addStudent">
<div class="form-row">
<label id="lb" for="firstname">First Name</label>
<input type="text" id="firstname" name="firstname" title="Enter first name here" required>
<span id="firstnameError" class="error-message"></span>
<label id="lb" for="lastname">Last Name</label>
<input type="text" id="lastname" name="lastname" title="Enter last name here" required>
<span id="lastnameError" class="error-message"></span>
</div>
<div class="form-row">
<label id="lb" for="studentId">Student Id <i class="fa-solid fa-graduation-cap"></i></label>
<input type="text" id="studentId" name="studentId" title="Enter a valid student id" required>
<span id="studentIdError" class="error-message"></span>
<label id="lb" for="email">Email <i class="fa-solid fa-envelope"></i></label>
<input type="email" id="email" name="email" title="Enter an email as somename@gmail.com" required>
<span id="emailError" class="error-message"></span>
</div>
<div class="form-row">
<label id="lb" for="date">DOB <i class="fa-solid fa-cake-candles"></i></label>
<input type="text" id="date" name="date" required>
<span id="dateError" class="error-message"></span>
<label id="lb" for="college">College <i class="fa-solid fa-school"></i></label>
<input type="text" id="college" name="college" required>
<span id="collegeError" class="error-message"></span>
</div>
<div class="form-row">
<label id="lb" for="address">Address <i class="fa-solid fa-address-card"></i></label>
<input type="text" id="address" name="address" required>
<span id="addressError" class="error-message"></span>
<label id="lb"  for="contact">Contact No <i class="fa-solid fa-phone"></i></label>
<input type="text" id="contact" name="contact" required>
<span id="contactError" class="error-message"></span>
</div>
<div class="form-row" style="margin-left:300px">
<button id="submitBtn" type="submit">Add Student <i class="fa-solid fa-user-plus"></i></button>
</div>
</form>
</div>
<div>
<!-- add student form ends here  -->
</body>
</html>