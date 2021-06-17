<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Detail</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
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
                    <li><a href="${pageContext.request.contextPath}/account/products">Product</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="">Account</a></li>
                </ul>
            </nav>
            <img src="${pageContext.request.contextPath}/images/cart.png" alt="" width="30px" height="30px">
            <img src="${pageContext.request.contextPath}/images/menu.png" alt="" class="menu-icon" onclick="menutoggle()">
        </div>
    </div>

    <!-- single product details -->
    <div class="small-container single-product">
        <div class="row">
            <div class="col-2">
                <img src="${pageContext.request.contextPath}/storag/${product.image}" alt="" width="475px" height="475px" id="ProductImg">
                <div class="small-img-row">
                    <div class="small-img-col">
                        <img style="height: 114px;" src="${pageContext.request.contextPath}/storag/${product.image}" alt="" width="100%" class="small-img">
                    </div>
                    <div class="small-img-col">
                        <img src="${pageContext.request.contextPath}/images/gallery-2.jpg" alt="" width="100%" class="small-img">
                    </div>
                    <div class="small-img-col">
                        <img src="${pageContext.request.contextPath}/images/gallery-3.jpg" alt="" width="100%" class="small-img">
                    </div>
                    <div class="small-img-col">
                        <img src="${pageContext.request.contextPath}/images/gallery-4.jpg" alt="" width="100%" class="small-img">
                    </div>
                </div>


            </div>
            <div class="col-2">
                <p>Home/ T-Shirt</p>
                <h1>${product.name }</h1>
                <c:choose>
                        	<c:when test="${product.discount == 0.0}">
                        		<span style=" color: #ff523b; font-size: 40px;" class="curr-price">$ ${product.price}</span>
                        	</c:when>
                        	<c:when test="${(product.price - (product.price * (product.discount/100))) != product.price }">
                        		<span><del>$${product.price }</del></span>
                           		 <span style=" color: #ff523b; font-size: 40px;" class="curr-price">$ ${(product.price - (product.price * (product.discount/100))) }</span>
                        	</c:when>
                        </c:choose>
                <!-- <h4>$50.00</h4> -->
                <input type="number" value="1">
				<form action="${pageContext.request.contextPath}/cart/${product.id}"
					method="post">
					<button style="width: 30%; height: 46px;" class="btn">Add To Cart</button>
				</form>
				<!-- <a href="#" class="btn"></a> -->
                <h3>Product Details <i class="fa fa-indent"></i></h3>
                <br>
                <p>${product.mota}
                </p>
            </div>
        </div>
    </div>


    <!-- title -->
    <div class="small-container">
        <div class="row row-2" >
            <h2>Related Products</h2>
            <p>View More</p>
        </div>
    </div>
    <div class="small-container">
        <div class="row">
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/images/product-9.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/images/product-10.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/images/product-11.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/images/product-12.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>$50.00</p>
            </div>
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

<!-- js for product gallery -->
    <script>
        var ProductImg = document.getElementById("ProductImg");
        var SmallImg = document.getElementsByClassName("small-img");
        SmallImg[0].onclick = function(){
            ProductImg.src = SmallImg[0].src;
        }
        SmallImg[1].onclick = function(){
            ProductImg.src = SmallImg[1].src;
        }
        SmallImg[2].onclick = function(){
            ProductImg.src = SmallImg[2].src;
        }
        SmallImg[3].onclick = function(){
            ProductImg.src = SmallImg[3].src;
        }
    </script>
</body>
</html>