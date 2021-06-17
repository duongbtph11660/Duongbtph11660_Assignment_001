<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lý Sản Phẩm</title>
<link href="${pageContext.request.contextPath }/css_admin/styles.css" rel="stylesheet" />
<link href ="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">QUẢN LÝ ADMIN</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
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
                           
                            <div class="sb-sidenav-menu-heading">QUẢN LÝ </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản Lý User
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="${pageContext.request.contextPath }/admin/users">Table User</a>
                                    <a class="nav-link" href="${pageContext.request.contextPath }/admin/users/create">Insert User</a>
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
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        
                        <div class="row">
                        
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                 
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Data Table Products
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                <div class="col-xs-3" style="padding-bottom: 10px;"><a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/admin/product/create">Create</a></div>
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Tên SP</th>
                                                <th>Loại</th>
                                                <th>Image</th>
                                                <th>Price</th>
                                                <th>Trạng Thái(Status)</th>
                                                <th>Sale</th>
                                                <td>Update</td>
                                               	<td>Delete</td>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Tên SP</th>
                                                <th>Loại</th>
                                                <th>Image</th>
                                                <th>Price</th>
                                                <th>Trạng Thái(Status)</th>
                                                <th>Sale</th>
                                                <td>Update</td>
                                               	<td>Delete</td>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                        <c:forEach var="product" items="${list}">
                                        	<tr>
                                                <td>${product.id }</td>
                                                <td>${product.name }</td>
                                                <td>${product.category_id.name}</td>
                                                <td><img alt="anh" src="${pageContext.request.contextPath }/storag/${product.image}" width="80px" height="80px"></td>
                                                <td>${product.price }</td>
                                                <td>
                                                <c:choose>
                                                	<c:when test="${product.status==1}">Còn Hàng</c:when>
                                                	<c:when test="${product.status==2}">On Sale</c:when>
                                                	<c:when test="${product.status==3}">Hết Hàng</c:when>
                                                </c:choose>
                                                </td>
                                                <td>
                                                
                                                ${(product.price - (product.price * (product.discount/100))) }</td>
                                                <td> <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath }/admin/product/edit/${product.id}">Update</a></td>
												<td>
													<form action="${pageContext.request.contextPath }/admin/product/delete/${product.id}" method="post">
														<button class="btn btn-danger" >Delete </button>
													</form>
												</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
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
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js_admin/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/assets/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/assets/demo/datatables-demo.js"></script>
    </body>
</html>