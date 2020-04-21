<%@ page import="com.ooad.web.model.Item" %>
<%@ page import="java.util.Collection" %>
<%@ page import="com.ooad.web.model.Offer.DiscountOffer" %>
<%@ page import="com.ooad.web.model.Offer.Offer" %>
<%@ page import="com.ooad.web.model.Offer.PriceOffer" %>
<%@ page import="com.ooad.web.model.Offer.BuyXGetYOffer" %><%--
  Created by IntelliJ IDEA.
  User: minal
  Date: 22/4/18
  Time: 1:27 AM
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
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/index.css">
    <script src="js/index.js"></script>
    <% Collection<Item> items = (Collection<Item>) request.getAttribute("items");%>

</head>
<body>
<%@include file="header.jsp" %>
<h2><b>Trending deals</b></h2>

<hr>
<div class="container-fluid">
    <h4><b>Items</b></h4><%=items.size()%>
    <div class="container">
        <div class="row">
            <div class="col-sm-1"><b>Item</b></div>
            <div class="col-sm-1"><b>Name</b></div>
            <div class="col-sm-2"><b>Offer</b></div>
            <div class="col-sm-1"><b>Effective Price</b></div>
            <div class="col-sm-2"><b>Category</b></div>
            <div class="col-sm-2"><b>Sub Category</b></div>
            <div class="col-sm-1"><b>Quantity</b></div>
            <div class="col-sm-1"><b>End Date</b></div>
        </div>
        <%for (Item i: items){%>
        <%Offer o =i.getOffer();%>
        <br>
        <div class="row">
            <div class="item-box-big">
                <div class="col-sm-1"><img src="<%=i.getUrl()%>" width="150" height="150" class = "img-responsive"></div>
                <div class="col-sm-1"><%=i.getName()%></div>
                <div class="col-sm-2">
                    <%if(o.getOfferCode()==-1){%>No Offer<%}%>
                    <%if(o.getOfferCode()==201) {%>
                    <%=((DiscountOffer)o).getPercentage()%>% OFF
                    <%}%>

                    <%if(o.getOfferCode()==202) {%>
                    &#2352;<%=((PriceOffer)o).getPriceCut()%> OFF
                    <%}%>

                    <%if(o.getOfferCode()==203) {%>
                    Buy <%=((BuyXGetYOffer)o).getX()%>,
                    Get <%=((BuyXGetYOffer)o).getY()%>
                    <%}%>
                </div>
                <div class="col-sm-1"><%=i.getEffectivePrice()%></div>
                <div class="col-sm-2"><%=i.getSubCategory().getItemCategory().getDisplayName()%></div>
                <div class="col-sm-2"><%=i.getSubCategory().getDisplayName()%></div>
                <div class="col-sm-1"><%=i.getQuantity()%></div>
                <div class="col-sm-1"><%=i.getOffer().getEndDate()%></div>
                <div class="col-sm-1"><a href="/item?id=<%=i.getId()%>">Buy</a></div>
            </div>
        </div>
        <%}%>
    </div>
</div>


<hr>

<br>
<%@include file="footer.jsp" %>
</body>
</html>


