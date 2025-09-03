<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="navSection.jsp" />
<div id="containerDiv">
<div class="containerMain">
<div class="form-box">
<div class="icon">&#128218;</div>
<h2 style="font-family:Verdana, Geneva, Tahoma, sans-serif">Quiz Access</h2>
<c:if test="${hasMessage==true}">
<p style="color:red;">${message}</p>
</c:if>
<c:if test="${empty requestScope.hasMessage}">
<p  style=" font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">Login or register to take the quiz</p>
</c:if>
<div class="tab-buttons">
<button onclick="showForm('login')" id="loginTab" class="active" >Login</button>
<button onclick="showForm('register')" id="registerTab">Register</button>
</div>
<form id="loginForm" class="form active" method="post" action="${pageContext.request.contextPath}/loginStudent">
<label>Student ID</label>
<input type="text" placeholder="Enter your Student ID" name="studentId" required>
<label>Password</label>
<input type="text" placeholder="Enter your password" name="password" required>
<button type="submit">Login & Start Quiz</button>
</form>
<form id="registerForm" class="form" method="post" action="${pageContext.request.contextPath}/registerStudent">
<label>Student ID</label><input type="text" placeholder="Enter your Student ID" name="studentId" required>
<label>Create Password</label><input type="text" placeholder="Create a password" name="password" required>
<button type="submit">Register</button>
</form>
</div>
</div>
</div>
</body>
</html>