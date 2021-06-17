<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carts</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<body>
	<div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/images/logo.png" alt="" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/products">Product</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="${pageContext.request.contextPath}/account/login">Account</a></li>
                </ul>
            </nav>
            <img src="${pageContext.request.contextPath}/images/cart.png" alt="" width="30px" height="30px">
            <img src="${pageContext.request.contextPath}/images/menu.png" alt="" class="menu-icon" onclick="menutoggle()">
        </div>
    </div>

    <!-- Cart items details -->
    <div class="small-container cart-page">
        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <c:forEach var="item" items="${listOrder}">
             <tr>
                <td>
                    <div class="cart-info">
                        <img src="${pageContext.request.contextPath}/storag/${item.product_id.image}" alt="">
                        <div>
                        <p>${item.product_id.name}</p>
                        <c:choose>
                        	<c:when test="${item.product_id.discount == 0.0}">
                        		<span class="curr-price">Price: $${item.product_id.price}</span>
                        	</c:when>
                        	<c:when test="${(item.product_id.price - (item.product_id.price * (item.product_id.discount/100))) != item.product_id.price }">
                        		<span><del>$${item.product_id.price }</del></span>
                           		 <span class="curr-price">Price Sale: $${(item.product_id.price - (item.product_id.price * (item.product_id.discount/100))) }</span>
                        	</c:when>
                        </c:choose>
                            <br>
                            <form action="${pageContext.request.contextPath}/cart/delete/${item.id}" method="post">
                            		<button style=" color: #ff523b;" >Remove</button>
                            </form>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="${item.quantity}" name="quantity" onblur="this.form.submit()"></td>
					<c:choose>
						<c:when test="${item.product_id.discount == 0.0}">
							<td>$ ${item.product_id.price * item.quantity}</td>
						</c:when>
						<c:when
							test="${(item.product_id.price - (item.product_id.price * (item.product_id.discount/100))) != item.product_id.price }">
							<td>$ ${(item.product_id.price - (item.product_id.price * (item.product_id.discount/100))) * item.quantity }</td>
						</c:when>
					</c:choose>
					
            </tr>
            
            </c:forEach>
           
        </table>
        <div class="total-price">
            <table>
                <tr>
                    <td>Subtotal</td>
                    <td>$${tong}</td>
                </tr>
                <tr>
                    <td>Ship</td>
                    <td>$${tong*0.02}</td>
                </tr>
            </table>
        </div>
    </div>
   


    


    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Download Our App</h3>
                    <p>Download App for Android ios mobile phone</p>
                    <div class="app-logo">
                        <img src="${pageContext.request.contextPath}/images/play-store.png" alt="">
                        <img src="${pageContext.request.contextPath}/images/app-store.png" alt="">
                    </div>
                </div>
                <div class="footer-col-2">
                    <img src="${pageContext.request.contextPath}/images/logo-white.png" alt="">
                    <p>Our Purose Is To Sustainably Make the Pleasure and Benefits
                        of Sports Accessible to the Many
                    </p>
                </div>
                <div class="footer-col-3">
                    <h3>Useful Links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-4">
                    <h3>Fllow us</h3>
                    <ul>
                        <li>Facebook</li>
                        <li>Twiter</li>
                        <li>Instagram</li>
                        <li>YouTube</li>
                    </ul>
                </div>
            </div>
            <hr>
            <p class="copyright">Copyright 2021 - Store Sport</p>
        </div>
    </div>

    <!-- Js -->
    <script>
        var MenuItems = document.getElementById("MenuItems");

        MenuItems.style.maxHeight = "0px";
        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px";
            } else {
                MenuItems.style.maxHeight = "0px";
            }
        }
    </script>
</body>
</html>