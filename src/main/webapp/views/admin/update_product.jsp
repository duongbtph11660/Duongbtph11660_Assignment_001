<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>
<link href="${pageContext.request.contextPath }/css_admin/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
        crossorigin="anonymous"></script>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
</head>
<body>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand" href="index.html">QUẢN LÝ ADMIN</a>
        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search"
                    aria-describedby="basic-addon2" />
                <div class="input-group-append">
                    <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ml-auto ml-md-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">Settings</a>
                    <a class="dropdown-item" href="#">Activity Log</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="login.html">Logout</a>
                </div>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">QUẢN LÝ USER</div>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts"
                            aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Quản Lý User
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="${pageContext.request.contextPath }/admin/users">Table User</a>
                                <a class="nav-link" href="${pageContext.request.contextPath }/admin/users/create">Create User</a>
                            </nav>
                        </div>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                            Quản Lý Sản Phẩm
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapsePages" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="${pageContext.request.contextPath }/admin/product">Table Product</a>
                                    <a class="nav-link" href="${pageContext.request.contextPath }/admin/product/create">Create Product</a>
                                </nav>                                                                     
                            </nav>
                        </div>
                        <div class="sb-sidenav-menu-heading">Addons</div>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Charts
                        </a>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Tables
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    duongbtph11660
                </div>
            </nav>
        </div>
        <div class="row">
            <div class="col-xl-6">
                <div class="card mb-4">
                </div>
            </div>
            <div class="col-xl-6">
                <div class="card mb-4">
                </div>
            </div>
            <div id="layoutSidenav_content">
                 <main class="container">
                    <section class="row" style="width: 1200px;">
                        <div class="col mt-4">
                            <form:form modelAttribute="product" action="${pageContext.request.contextPath }/admin/product/update/${product.id }" method="POST" enctype="multipart/form-data" class="col-sm-12" id="form-1">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <h2>Add New Product</h2>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-7">
                                                <div class="form-group">
                                                    <label for="name">Name Product: </label>
                                                    <form:input path="name" type="text" class="form-control" name="name" id="name" aria-describedby="name" placeholder=""/>
                                                    <small id="nameHid" class="form-text text-muted">Nhập name </small>
                                                </div>
                                                <div class="input-group">
                                                    <span class="input-group-text">Price</span>
                                                    <form:input path="price" type="number" class="form-control" name="price" id="price" aria-describedby="price" placeholder=""/>
                                                    <span class="input-group-text">$</span>
                                                </div>
                                                <div class="form-group">
                                                    <label for="category_id">Category</label>
                                                    <form:select path="category_idd" class="form-control" name="category_idd" id="category_idd">
                                                    	<c:forEach var="item" items="${category}">
                                                        <form:option value="${item.id}">${item.name}</form:option>
                                                      </c:forEach>
                                                    </form:select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="status">Status</label>
                                                    <form:select path="status" class="form-control" name="status" id="status">
                                                        <form:option value="1">Còn Hàng</form:option>
                                                        <form:option value="2">On Sale</form:option>
                                                        <form:option value="3">Hết Hàng</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                            <script type="text/javascript">
                                            	function chooseFile(fileInput) {
													if(fileInput.files && fileInput.files[0]){
														var reader = new FileReader();
														
														reader.onload = function (e) {
															$('#image').attr('src',e.target.result);
														}
														reader.readAsDataURL(fileInput.files[0]);
													}
												}
                                            </script>
                                                <img src="${pageContext.request.contextPath}/images/hg.jpg" width="90%"
                                                class="img-fluid" alt="" id="image">
                                                <div class="form-group">
                                                    <label for="imageFile">Image File: </label>
                                                    <form:input path="image" type="file" onchange="chooseFile(this)" class="form-control" name="image" id="image" placeholder="Product Image"/>
                                                    <small id="productImage" class="form-text text-muted">Nhập Image Product</small>
                                                </div>
                                                <div class="input-group">
                                                    <span class="input-group-text">Discount</span>
                                                    <form:input type="number" class="form-control" name="discount" id="discount" aria-describedby="discount" placeholder="" path="discount"/>
                                                    <span class="input-group-text">%</span>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="mota">Mô Tả</label>
                                                    <form:textarea path="mota" class="form-control" name="mota" id="mota"  rows="5"></form:textarea>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="card-footer text-muted">
                                        <button class="btn btn-success">New</button>
                                        <button class="btn btn-primary">Save</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </section>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!-- Kiểm tra validation Form -->
 
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js_admin/scripts.js"></script>
</body>
</html>