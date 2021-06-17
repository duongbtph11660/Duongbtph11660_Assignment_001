<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
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
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="${pageContext.request.contextPath}/account/login">Account</a></li>
                </ul>
            </nav>
            <a href="#"><img src="${pageContext.request.contextPath}/images/cart.png" alt="" width="30px" height="30px"></a>
            <img src="${pageContext.request.contextPath}/images/menu.png" alt="" class="menu-icon" onclick="menutoggle()">
        </div>

    </div>


    <div class="small-container">
	
	<div class="row row-2">
            <h2>All Product</h2>
            <form action="${pageContext.request.contextPath}/products" method="get">
				<div class="input-group rounded" style="margin-left: 30px;">
					<input type="search" name="name" class="form-control rounded"
						placeholder="Search" aria-label="Search"
						aria-describedby="search-addon" style="padding: 5px 0;" />
					<button class="input-group-text border-0" id="search-addon">
						<i class="fas fa-search" style="padding: 5px 10px;"></i>
					</button>
				</div>
			</form>
           
            <form class="form_control" action="${pageContext.request.contextPath}/products" method="get">
            <select name="sort_by" id="">
                <option selected disabled>Lọc Sản Phẩm</option>
                <option value="id">Default</option>
                <option value="price">Giá</option>
                <option value="discount">Sale</option>
            </select>
            <button class="btn btn-primary " style="width: 0;">Lọc</button>
            </form>
        </div>
	
        
        <div class="row">
        <c:forEach var="list" items="${list.content }">
        <div class="col-4">
                <div class="product-card">
                
                <div class="product-card-img">
                        <img src="${pageContext.request.contextPath}/storag/${list.image}" alt="">
                        <img src="${pageContext.request.contextPath}/images/product-2.jpg" alt="">
                    </div>
                    <div class="product-card-info">
                        <div class="product-btn">
                            <button class="btn-flat btn-hover btn-shop-now">shop now</button>
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
                        <c:choose>
                        	<c:when test="${list.discount == 0.0}">
                        		<span class="curr-price">$ ${list.price}</span>
                        	</c:when>
                        	<c:when test="${(list.price - (list.price * (list.discount/100))) != list.price }">
                        		<span><del>$${list.price }</del></span>
                           		 <span class="curr-price">$ ${(list.price - (list.price * (list.discount/100))) }</span>
                        	</c:when>
                        </c:choose>
                            
                        </div>
                    </div>
                </div>
            </div>
        
        </c:forEach>
             
           
        </div>
        <div class="page-btn">
        <c:forEach varStatus="page" begin="0" end="${list.totalPages-1 < 0 ? list.totalPages+1 : list.totalPages-1 }">
        	<span><a class="page-link" href="${pageContext.request.contextPath}/products?page=${page.index}&limit=12&name=${name}" >${page.index +1}</a></span>
        </c:forEach>
            
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