<%-- 
    Copyright (c) 2016 Jenifer Rhodes & David T. Han
    Document   : submit
    Created on : Oct 18, 2015, 8:47:26 PM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="elon" uri="/WEB-INF/rhodeshan.tld" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CSC330 Homework 2</title>
    <link rel ="stylesheet" href ="styles/main.css" type="text/css"/>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <h1> Future Value Calculator </h1>
    <div id="submission">
      <label class="pad_top"> Investment Amount: </label>
      <span>${user.currencyamount}</span><br>
      <label class="pad_top"> Yearly Interest Rate: </label>
      <span> ${user.rate}</span><br>
      <label class="pad_top"> Number of Years: </label>
      <span> ${user.years}</span><br>
      <label class="pad_top"> Future Value: </label> 
      <span> ${user.currencyfuturevalue}</span><br>
    </div>    
    <%@ include file="/footer.jsp" %>
  </body>
</html>
