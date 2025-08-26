<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web with jquery</title>   
    <link rel="stylesheet" href=" css/jquery-ui.min.css">
  <link rel="stylesheet" href=" css/jquery-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
    <script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
 body
{
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', sans-serif;
      /* background: linear-gradient(135deg, #1f1c2c, #928dab); */
      background: linear-gradient(135deg,rgb(25, 25, 71),rgb(23, 23, 67));
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
}
.result-glass
{
      background: rgb(51, 51, 125);
      backdrop-filter: blur(15px);
      border-radius: 20px;
      padding: 40px 30px;
      width: 400px;
      box-shadow: 0 0 30px rgba(0, 0, 0, 0.3);
      text-align: center;
      position: relative;
      z-index: 1;
      border: 1px solid rgba(255, 255, 255, 0.2);
}

.result-glass h2
{
      font-size: 28px;
      color: #fff;
      margin-bottom: 10px;
}

.score-circle
{
      width: 120px;
      height: 120px;
      border-radius: 50%;
      margin: 20px auto;
      background: conic-gradient(#4caf50 calc(80% * 3.6deg), #ddd 0deg);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 28px;
      color: #fff;
      font-weight: bold;
      border: 6px solid rgba(255, 255, 255, 0.2);
      box-shadow: 0 0 15px #4caf50;
}

.details
{
      margin-top: 20px;
      color: #eee;
      font-size: 16px;
      text-align: left;
}

.details p 
{
      margin: 6px 0;
}

.btn {
      margin-top: 25px;
      padding: 12px 30px;
      font-size: 16px;
      border: none;
      background: linear-gradient(135deg, #612248, #1e1b72);
      color: #fff;
      border-radius: 30px;
      cursor: pointer;
      transition: transform 0.2s;
}
.btn:hover {
      transform: scale(1.05);
      color:white;
    }

    /* Confetti */
    .confetti {
      position: absolute;
      width: 8px;
      height: 8px;
      background: #fff;
      top: -10px;
      animation: fall 3s linear infinite;
      opacity: 0.8;
      z-index: 0;
    }

    @keyframes fall {
      0% {
        transform: translateY(-10px) rotate(0deg);
        opacity: 1;
      }
      100% {
        transform: translateY(100vh) rotate(360deg);
        opacity: 0;
      }
    }
</style>

<!-- Confetti elements -->
<script>
  for (let i = 0; i < 50; i++) {
    let confetti = document.createElement("div");
    confetti.classList.add("confetti");
    confetti.style.left = Math.random() * 100 + "vw";
    confetti.style.animationDuration = (Math.random() * 2 + 2) + "s";
    confetti.style.backgroundColor = `hsl(${Math.random() * 360}, 100%, 70%)`;
    document.body.appendChild(confetti);
  }

function homeBack()
{
window.location.href="/myproject1/index.jsp";
}

function tryBack()
{
window.location.href="/myproject1/quiz.jsp";
}
<%
String para1 = request.getParameter("correct");
String para2 = request.getParameter("total");
int correct = 0;
int total = 0;

if (para1 != null) correct = Integer.parseInt(para1);
if (para2 != null) total = Integer.parseInt(para2);
%>


</script>
<body>
<div class="result-glass">
  <h2><i class="fas fa-trophy"></i> Quiz Results</h2>
  <div class="score-circle"><%=correct %>/<%=total %></div>
  <div class="details">
    <p><strong>Total Questions:</strong><%= total %></p>
    <p><strong>Correct:</strong> <%= correct %></p>
    <p><strong>Wrong:</strong><%= total-correct %></p>
<% 
float percent = ((float) correct / total) * 100;
%>

    <p><strong>Percentage:</strong> <%= String.format("%.2f", percent) %>%</p>
  </div>
  <button class="btn" onclick="tryBack()">Try Again</button>
  <button class="btn" onclick="homeBack()">Back to home</button>
</div>

</body>
</html>
