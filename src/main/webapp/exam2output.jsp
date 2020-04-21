<%@ page import="com.ooad.web.model.*" %><%--
  Created by IntelliJ IDEA.
  User: minal
  Date: 25/3/18
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/Amazon.ico" type="image/x-icon">
    <title>
        Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs &amp; more</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index.css">
    <script src="js/index.js"></script>



</head>
<body>
<%@include file="jsp/header.jsp" %>
<% Item item = (Item) request.getAttribute("item"); %>
<% Seller seller = (Seller) request.getAttribute("seller"); %>
<h3>MINAL PATIL, MT2017068</h3>
<hr>
<div class="container-fluid">

    Enter Seller Id :
    <input type="number" name="sellerId" value="<%=seller.getId()%>">
    <input type="submit" value="Enter" />
    <h4 class="a-spacing-small">Answer</h4>


    <%--<div >Item Name : <%=item.getName()%></div>--%>
    <div>Seller Name : <%=seller.getUserName()%></div>

</div>

<%@include file="jsp/footer.jsp" %>

</body>
</html>
