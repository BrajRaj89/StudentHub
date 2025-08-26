<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="navSection.jsp" />
    <!-- nav bar ends here  --> 
     <div id="headDiv">
<h2>Search Result</h2>
<i class="fa-regular fa-user"></i>
<c:if test="${recordFound==false}">
        <h5>No Result Found</h5>
</c:if>
      </div>
     <div id="mainDiv">
<c:if test="${recordFound==true}">
     <div id="dataDiv"><span id="nameSpan">${student.name}</span><br>
      <span id="studentIdSpan"><i class="fa-solid fa-id-card"></i>&nbsp;&nbsp;${student.id}</span><br>
       <span id="dob"><i class="fa-solid fa-calendar"></i>&nbsp;&nbsp;${student.dob}</span><br>
      <span id="emailSpan"><i class="fa-solid fa-envelope"></i>&nbsp;&nbsp;${student.email}</span><br>
     <span id="collegeSpan"><i class="fa-solid fa-building-columns"></i>&nbsp;&nbsp;${student.college}</span><br>
     <span id="contactSpan"><i class="fa-solid fa-phone"></i>&nbsp;&nbsp;${student.contact}</span><br>
     <span id="addressSpan"><i class="fa-solid fa-location-dot"></i>&nbsp;&nbsp;${student.address}</span><br>
    </div>
</c:if>
     </div>
     </body>
</html>
