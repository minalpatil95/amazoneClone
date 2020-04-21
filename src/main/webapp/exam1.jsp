<%--
  Created by IntelliJ IDEA.
  User: minal
  Date: 25/3/18
  Time: 10:54 AM
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
    <script src="/js/handlebars-v4.0.11.js"></script>
    <script src="/js/url-v2.5.2.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="../css/item.css">
    <script src="js/index.js"></script>
    <script src="exam1.js"></script>
    <script src="../js/jquery.cookie.js"></script>
</head>
<body>
<%@include file="jsp/header.jsp" %>
<h3>MINAL PATIL, MT2017068</h3>
<hr>
<div class="container-fluid">
<div class="row">
    <form id="enterItemId" action="#" method="get" enctype="multipart/form-data">
        <label for="itemId">Enter Seller's emailID :</label>
        <input type="text" name="itemId" id="itemId" autocomplete="off" required="true"/>
        <%--<input tabindex="5" id="btnCookie" class="a-button-input" type="submit" aria-labelledby="continue-announce" value="submit">--%>
        <%--<div class="a-section">
            <span id="continue" class="a-button a-button-span12 a-button-primary">
                <span class="a-button-inner">
                    <input tabindex="5" id="btnCookie" class="a-button-input" type="submit" aria-labelledby="continue-announce">
                </span>
            </span>
        </div>--%>
        <button class="col-sm-2" onclick="showItems()">Submit</button>
    </form>
</div>
    <div class="row">
       Item details:<div id="answer"></div>
    </div>
</div>


<script id="example-template" type="text/x-handlebars-template">
    <%--<h1>{{items[0].name}}</h1>--%>
    {{#each items}}
    <div class="col-sm-4 item">
        <a href="/item?id={{id}}"><img src="{{url}}" alt="" class="productImage"></a>
        <h2 class="productName">{{name}}</h2>
        <p class="productSeller"> by {{seller.username}}</p>
        <p class="productPrice">&#2352; {{price}}</p>
        Seller Rating: <div class="rateYo">
        <p hidden id="sellerRating">{{seller.rating}}</p>
        <p hidden id="sellerRatingCount">{{seller.ratingCount}}</p>
    </div>
        <%--<img src="/images/fake_reviews.png" alt="" data-toggle="tooltip" title="Out of the scope of course">--%>
    </div>
    {{/each}}
</script>

<%@include file="jsp/footer.jsp" %>
</body>
</html>
