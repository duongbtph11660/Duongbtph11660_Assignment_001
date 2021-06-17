<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login and Register</title>
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
                <a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" width="125px"></a>
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
            <img src="${pageContext.request.contextPath}/images/cart.png" alt="" width="30px" height="30px">
            <img src="${pageContext.request.contextPath}/images/menu.png" alt="" class="menu-icon" onclick="menutoggle()">
        </div>
    </div>

    <!-- Account page -->
    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="${pageContext.request.contextPath}/images/image1.png" alt="">
                </div>
                <div class="col-2">
                    <div class="form-container">
                        <div class="form-btn">
                            <span onclick="login()">Register</span>
                            <span onclick="register()">Login</span>
                            <hr id="Indicator">
                        </div>
                        <form action="${pageContext.request.contextPath}/account/login" method="post" id="RegForm">
							<div class="alert alert-success" role="alert">
								${error}
							</div>
							<input type="email" name="email" id="" placeholder="Email" >
                            <input type="password" name="password" id="" placeholder="Password">
							<hr>
								<div class="box" style="margin-left: -100px">
								<input type="checkbox" name="remember" id="remember"
									checked="checked" style="width: 15px;"> <label>
									Remember Me
								</label>
								</div>
							
							<button type="submit" class="btn">Login</button>
                            <a href="">Forgot password</a>
                           
                        </form>
                        <form action="${pageContext.request.contextPath}/account/register" method="post" id="LoginForm">
                            <input type="email" name="email" id="" placeholder="Email">
                            <input type="password" name=password id="" placeholder="Password">
                            <input type="password" name="confirmPassword" id="" placeholder="Confirm Password">
                            <input type="number" name="code" id="" placeholder="Code">
                            <button class="btn">Register</button>
                             
                        </form>
                       
                        
                    </div>
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
    <!-- Js for toggle Form -->
    <script>
        var LoginForm = document.getElementById("LoginForm");
        var RegForm = document.getElementById("RegForm");
        var Indicator = document.getElementById("Indicator");
        
        function register(){
            RegForm.style.transform = "translateX(0px)";
            LoginForm.style.transform = "translateX(0px)";
            Indicator.style.transform = "translateX(100px)";
        }
        function login(){
            RegForm.style.transform = "translateX(300px)";
            LoginForm.style.transform = "translateX(300px)";
            Indicator.style.transform = "translateX(0px)";
        }
        
        
    </script>
</body>
</html>