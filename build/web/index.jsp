<%-- 
    Copyright (c) 2016 Jenifer Rhodes & David T. Han
    Document   : index
    Created on : Oct 18, 2015, 7:40:07 PM
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>CSC330 Homework 2</title>
    <link rel ="stylesheet" href ="styles/main.css" type="text/css"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>   
    <h1> Future Value Calculator </h1>    
    <form action="CalculatorServlet" method="post">
      <input type="hidden" name="action" value="add">
      <label class="pad_top">Investment Amount</label>
      <p>
        <input type="number" step = "any" name="amount" value="" min = "0" required autofocus><br>
      </p>
      <label class="pad_top">Yearly Interest Rate</label>
      <p>
        <input type="number" step = "any" name="rate" value="" min = "0" required><br>
      </p>
      <label class="pad_top"> Number of Years</label>
      <p>
        <input type="number" step ="1" name="years" value="" placeholder="Integer number of years" min = "0" required><br>
      </p>
      <input type="submit" value="Calculate" class="margin_left" >
    </form>  
    <%@ include file="/footer.jsp" %>
  </body>
</html>

