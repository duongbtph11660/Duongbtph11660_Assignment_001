<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shop Clothe</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <!-- https://www.youtube.com/watch?v=yQimoqo0-7g -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,900&display=swap" rel="stylesheet">
    <!-- boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<body>
	  <div class="header">


        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" width="125px"></a>
                </div>
                <nav>
                    <ul id="MenuItems">
                        <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/products">Product</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="${pageContext.request.contextPath}/account/login">Account</a></li>
                    </ul>
                </nav>
                <a href="${pageContext.request.contextPath}/cart"><img src="${pageContext.request.contextPath}/images/cart.png" alt="" width="30px" height="30px"></a>
                <img src="${pageContext.request.contextPath}/images/menu.png" alt="" class="menu-icon" onclick="menutoggle()">
            </div>
            <div class="row">
                <div class="col-2">
                    <h1>Give Your Workout <br> A New Style! </h1>
                    <p>Success isn't always about greatness. It's about consistency.
                        Consistent <br>hard work gins sccess. Greatness will come.
                    </p>
                    <a href="${pageContext.request.contextPath}/products" class="btn">Explore Now &#8594;</a>
                </div>
                <div class="col-2">
                    <img src="${pageContext.request.contextPath}/images/image1.png" alt="">
                </div>
            </div>
        </div>
    </div>


    <!-- Featured category -->
    <div class="categories">
        <div class="small-container">
            <div class="row">
                <div class="col-3">
                    <img src="${pageContext.request.contextPath}/images/category-1.jpg" alt="">
                </div>
                <div class="col-3">
                    <img src="${pageContext.request.contextPath}/images/category-2.jpg" alt="">
                </div>
                <div class="col-3">
                    <img src="${pageContext.request.contextPath}/images/category-3.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

    <!-- Featured products -->
    <div class="small-container">
        <h2 class="title">On Sale</h2>
        <div class="row" id="latest-products">
        <c:forEach var="list" items="${list}">
            <div class="col-4">
                <div class="product-card">
                
                <div class="product-card-img">
                        <img src="${pageContext.request.contextPath}/storag/${list.image}" alt="">
                        <img src="${pageContext.request.contextPath}/images/product-2.jpg" alt="">
                    </div>
                    <div class="product-card-info">
                        <div class="product-btn">
                            
                            <a style=" color: black; border: 1px solid #bdb3b2; background-color: #E1F2EA;" role="button" href="${pageContext.request.contextPath}/products_detail/${list.id}" class="btn-flat btn-hover btn-shop-now">shop now</a>
                            <form action="${pageContext.request.contextPath}/cart/${list.id}" method="post">
                            <button class="btn-flat btn-hover btn-cart-add">
                            	<i class='bx bxs-cart-add'></i>
                            </button>
                            </form>
                            
                            <button class="btn-flat btn-hover btn-cart-add">
                                <i class='bx bxs-heart'></i>
                            </button>
                        </div>
                        <div class="product-card-name">
                            ${list.name }
                        </div>
                        <div class="product-card-price">
                            <span><del>$${list.price }</del></span>
                            <span class="curr-price">$ ${(list.price - (list.price * (list.discount/100))) }</span>
                        </div>
                    </div>
                </div>
            </div>
             </c:forEach>
        </div>
        <h2 class="title">Product</h2>
        <div class="row">
        <c:forEach var="list2" items="${list2 }">
        	 <div class="col-4">
                <div class="product-card">
                    <div class="product-card-img">
                        <img src="${pageContext.request.contextPath}/storag/${list2.image}" alt="">
                        <img src="${pageContext.request.contextPath}/images/product-6.jpg" alt="">
                    </div>
                    <div class="product-card-info">
                        <div class="product-btn">
                            <a style=" color: black; border: 1px solid #bdb3b2; background-color: #E1F2EA;" href="${pageContext.request.contextPath}/products_detail/${list2.id}" class="btn-flat btn-hover btn-shop-now">shop now</a>
                           <form action="${pageContext.request.contextPath}/cart/${list2.id}" method="post">
                           		<button class="btn-flat btn-hover btn-cart-add">
                               		 <i class='bx bxs-cart-add'></i>
                            	</button>
                           </form>
                            
                            <button class="btn-flat btn-hover btn-cart-add">
                                <i class='bx bxs-heart'></i>
                            </button>
                        </div>
                        <div class="product-card-name">
                            ${list2.name}
                        </div>
                        <div class="product-card-price">
                            <span class="curr-price">$${list2.price}</span>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
           
        </div>
    </div>



    <!-- Offer -->
    <div class="offer">
        <div class="small-container">
            <div class="row">
                <div class="col-2">
                    <img src="${pageContext.request.contextPath}/images//exclusive.png" alt="" class="offer-img">
                </div>
                <div class="col-2">
                    <p>Exclusively Available on RedStore</p>
                    <h1>Smart Band 4</h1>
                    <small>The Mi Smart Band 4 features a 39.9% larger
                        (than Mi Band 3) AMOLED color full-touch display with
                        abjustable brightness, so everything is clear as can be</small>
                    <a href="" class="btn">Buy Now &#8594;</a>
                </div>
            </div>
        </div>
    </div>



    <!-- Testimonial -->
    <div class="testimonial">
        <div class="small-container">
            <div class="row">
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>Lorem Ipsum is simply dummy text of the printing
                        and typesetting industry. Lorem Ipsum has been the
                        industry's standard dummy text ever</p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="images/user-1.png" alt="">
                    <h3>Sean Parker</h3>
                </div>
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>Lorem Ipsum is simply dummy text of the printing
                        and typesetting industry. Lorem Ipsum has been the
                        industry's standard dummy text ever</p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="images/user-2.png" alt="">
                    <h3>Alibaba</h3>
                </div>
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>Lorem Ipsum is simply dummy text of the printing
                        and typesetting industry. Lorem Ipsum has been the
                        industry's standard dummy text ever</p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="images/user-1.png" alt="">
                    <h3>Duong Move</h3>
                </div>

            </div>
        </div>
    </div>

    <!-- Brands -->
    <div class="brands">
        <div class="small-container">
            <div class="row">
                <div class="col-5">
                    <img src="${pageContext.request.contextPath}/images/logo-godrej.png" alt="">
                </div>
                <div class="col-5">
                    <img src="${pageContext.request.contextPath}/images/logo-oppo.png" alt="">
                </div>
                <div class="col-5">
                    <img src="${pageContext.request.contextPath}/images/logo-coca-cola.png" alt="">
                </div>
                <div class="col-5">
                    <img src="${pageContext.request.contextPath}/images/logo-paypal.png" alt="">
                </div>
                <div class="col-5">
                    <img src="${pageContext.request.contextPath}/images/logo-philips.png" alt="">
                </div>
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
                    <img src="images/logo-white.png" alt="">
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
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>
</html>