<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
<title>Web with jquery</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/navSection.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/registered.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/varify.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/quiz.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addStudent.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/searchResult.css">
<script src="${pageContext.request.contextPath}/js/addStudent.js"></script>
<script src="${pageContext.request.contextPath}/js/navSection.js"></script>
<script src="${pageContext.request.contextPath}/js/varify.js"></script>
<script src="${pageContext.request.contextPath}/js/quiz.js"></script>
</head>
<body>
  <!-- nav bar starts here  -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
<a class="navbar-brand" href="index.jsp" id="web-name"><i class="fa-solid fa-building-columns"></i>&nbspStudent Hub</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="registeredStudent.jsp" id="headlinks">Available Students&nbsp;<i class="fa-solid fa-book"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="addStudent.jsp" id="headlinks">Add Student&nbsp;<i class="fa-solid fa-user-graduate"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="varify.jsp" id="headlinks">Take quiz&nbsp<i class="fa-solid fa-award"></i></a>
        </li>
      </ul>
      <form id="searchF" class="d-flex" method="post" action="${pageContext.request.contextPath}/searchStudent" role="search">
        <input class="form-control me-2" id='search-field' type="search" name="name" placeholder="Search Student By name" aria-label="Search"/>
        <button class="btn btn-outline-success" type="submit"  >Search</button>
      </form>
    </div>
  </div>
</nav>
    <!-- nav bar ends here  -->
 