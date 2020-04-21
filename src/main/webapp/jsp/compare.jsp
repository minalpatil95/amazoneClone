<%@ page import="com.ooad.web.model.CompareItem" %>
<%@ page import="java.util.Collection" %>
<%@ page import="com.ooad.web.model.Offer.Offer" %>
<%@ page import="com.ooad.web.model.Offer.DiscountOffer" %>
<%@ page import="com.ooad.web.model.Offer.PriceOffer" %>
<%@ page import="com.ooad.web.model.Offer.BuyXGetYOffer" %><%--
  Created by IntelliJ IDEA.
  User: minal
  Date: 20/4/18
  Time: 11:58 PM
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
    <script src="/js/compareList.js"></script>
    <% Collection<CompareItem> comparelist = (Collection<CompareItem>) request.getAttribute("compare");%>
</head>
<body>
<%@include file="header.jsp" %>
<h2><b>Compare listing</b></h2>
<h4><%=comparelist.size()%> Item in your compare list</h4>
<div class="container-fluid">
<div class="row">
    <div class="col-md-2 text-center">
        <%--<div class="panel panel-danger panel-pricing">--%>
            <div class="panel panel-default panel-group">
            <div class="panel-heading">
                <i class="fa fa-check-square-o"></i>
                <h3>Attributes</h3>
            </div>

            <ul class="list-group text-center">
                <li class="list-group-item" style="height: 181px;width: 181px;"> Item</li>
                <li class="list-group-item"> Price</li>
                <li class="list-group-item"> Seller</li>
                <li class="list-group-item"> Offer</li>
                <li class="list-group-item"> Category</li>
                <li class="list-group-item"> Subcategory</li>
                <li class="list-group-item"> Brand</li>
                <li class="list-group-item"> Description</li>
                <li class="list-group-item"> Colour</li>
                <li class="list-group-item"> Barcode</li>
            </ul>

        </div>
    </div>

    <%for(CompareItem c : comparelist){%>
    <%Offer o =c.getItem().getOffer();%>
    <div class="col-md-2 text-center">
        <%--<div class="panel panel-warning panel-pricing">--%>
            <div class="panel panel-default panel-group">
            <div class="panel-heading">
                <i class="fa fa-list-alt"></i>
                <h3><%=c.getItem().getName()%></h3>
            </div>
            <ul class="list-group text-center">
                <li class="list-group-item"> <img src="<%=c.getItem().getUrl()%>" alt="" style="height: 160px;width: 160px; "></li>
                <li class="list-group-item">  &#2352;<%=c.getItem().getEffectivePrice()%></li>
                <li class="list-group-item"> <%=c.getItem().getSeller().getUserName()%></li>
                <li class="list-group-item">
                    <%if(o.getOfferCode()==-1){%>No Offer<%}%>
                    <%if(o.getOfferCode()==201) {%>
                    <%=((DiscountOffer)o).getPercentage()%>% off
                    <%}%>

                    <%if(o.getOfferCode()==202) {%>
                    &#2352;<%=((PriceOffer)o).getPriceCut()%> off
                    <%}%>

                    <%if(o.getOfferCode()==203) {%>
                    Buy <%=((BuyXGetYOffer)o).getX()%>,
                    Get <%=((BuyXGetYOffer)o).getY()%>
                    <%}%>
                </li>
                <li class="list-group-item"> <%=c.getItem().getSubCategory().getItemCategory().getDisplayName()%></li>
                <li class="list-group-item"> <%=c.getItem().getSubCategory().getDisplayName()%> </li>
                <li class="list-group-item"> <%=c.getItem().getBrand()%></li>
                <li class="list-group-item"> <%=c.getItem().getDescription()%></li>
                <li class="list-group-item"> <%=c.getItem().getItemColour()%></li>
                <li class="list-group-item"> <%=c.getItem().getItemBarcode()%></li>
                <li><a  type="btn" onclick="removeFromList(<%=c.getId()%>)">Remove this item</a></li>
            </ul>

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

