<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>First JSP</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
  <img src="logo.png" alt="Make You Eco" width="200" height="200">
  <div class="topnav" id="myTopnav">
  <a href="#home" class="active">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <div class="dropdown">
    <button class="dropbtn">Dropdown
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="ProductView.jsp">Negozio</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
      <a href="#">Link 4</a>
    </div>
  </div>
  <a href="#about">About</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
</div>


<center><h2>Preview Store</h2></center>
  <div align="center">
    <iframe src="ProductView.jsp" name="targetframe" width="700" height="800" allowTransparency="true" scrolling="yes" frameborder="3" >
    </iframe>
  </div>
</body>
</html>