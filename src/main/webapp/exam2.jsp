<%@ page import="com.ooad.web.model.*" %>
<%@ page import="java.util.Collection" %><%--
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
    <% Collection<Seller> sellers = (Collection<Seller>) request.getAttribute("sellers");%>
    <%--<% Collection<Item> items = (Collection<Item>) request.getAttribute("items");%>--%>

</head>
<body>
<%@include file="jsp/header.jsp" %>
<h3>MINAL PATIL, MT2017068</h3>
<hr>
<div class="container-fluid">
    <h4><b>Sellers</b></h4><%=sellers.size()%>
    <div class="container">
        <div class="row">
            <div class="col-sm-1"><b>S.No</b></div>
            <div class="col-sm-1"><b>Username</b></div>
            <div class="col-sm-2"><b>EmailId</b></div>
            <div class="col-sm-1"><b>Total#Item</b></div>
        </div>
        <%int count=0;%>
        <%for (Seller s: sellers){%>
        <%count++;%>
            <%Collection<Item> i = Item.getAllSellerItems(s.getId());%>
                <div class="row">
                    <div class="item-box-big">
                        <div class="col-sm-1"><%=count%></div>
                        <div class="col-sm-1"><%=s.getUserName()%></div>
                        <div class="col-sm-2"><%=s.getEmailId()%></div>
                        <div class="col-sm-1"><%=i.size()%></div>
                    </div>
                </div>
        <%}%>
    </div>
    <br>
    <div class="row">
        <a href="/">Home</a>
    </div>
</div>


<%@include file="jsp/footer.jsp" %>

</body>
</html>
