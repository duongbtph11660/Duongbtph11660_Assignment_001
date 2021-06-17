<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tạo Mới User</title>
 
 <link href="${pageContext.request.contextPath}/css_admin/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
        crossorigin="anonymous"></script>
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
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Create User</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Create User</li>
                        </ol>

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
                                    Create User
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive" style="width: 1000px;">
                                        <form class="col-sm-12" id="form-1" action="${pageContext.request.contextPath}/admin/users/save" method="POST"
                                        >
                                            <div class="col-sm-12">
                                                <div class="row">
                                                    <div class="col-sm-6 form-group">
                                                        <label for="username" class="form-label">Username</label>
                                                        <input type="text" placeholder="Enter Username Here.."
                                                            class="form-control" id="username" name="username">
                                                            <span class="form-message" style="color: red;"></span>
                                                    </div>
                                                    <div class="col-sm-6 form-group">
                                                        <label for="password" class="form-label">Password</label>
                                                        <input type="password" placeholder="Enter Password Here.."
                                                            class="form-control" id="password" name="password">
                                                            <span class="form-message" style="color: red;"></span>
                                                    </div>
                                                    <div class="col-sm-12 form-group">
                                                        <label for="confirmpassword" class="form-label">Confirm password</label>
                                                        <input type="password" placeholder="Enter confirmpassword Here.."
                                                            class="form-control" id="confirmpassword" name="confirmpassword">
                                                            <span class="form-message" style="color: red;">${errorPass}</span>
                                                    </div>
                                                    <div class="col-sm-6 form-group" >
                                                        <label for="fullname" class="form-label">Full Name</label>
                                                        <input type="text" placeholder="Enter Full Name Here.."
                                                            class="form-control" id="fullname" name="fullname">
                                                            <span class="form-message" style="color: red;"></span>
                                                    </div>
                                                    <div class="col-sm-12 form-group">
                                                        <label for="email" class="form-label">Email</label>
                                                        <input type="email" placeholder="Enter Email Here.."
                                                            class="form-control" id="email" name="email">
                                                            <span class="form-message" style="color: red;"></span>
                                                    </div>
                                                    <div class="col-sm-12 form-group">
                                                        <label for="photo" class="form-label">Avatar</label>
                                                        <input type="file" placeholder="Enter Photo Here.."
                                                            class="form-control" id="photo" name="photo">
                                                        <img src="" alt="">
                                                            <span class="form-message" style="color: red;"></span>
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-sm-12 form-group ">
                                                    <label>Vai Trò</label>
                                                    <select class="form-control" name="admin">
                                                        <option value="0">Admin</option>
                                                        <option value="1">User</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-6 form-group activated">
                                                    <label class="form-label">Activated</label>
                                                    <select class="form-control" name="activated">
                                                        <option value="0">Hoạt Động</option>
                                                        <option value="1">Khóa</option>
                                                    </select>
                                                </div>
                                                <button class="btn btn-lg btn-info">Submit</button>
                                            </div>
                                        </form>
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
        <!-- Kiểm tra validation Form -->
        <script src="./validator.js"></script>
        <script>
            Validator({
                form: '#form-1',
                errorSelector: '.form-message',
                rules: [
                    Validator.isRequired('#fullname'),
                    Validator.isEmail('#email'),
                    Validator.isRequired('#password'),
                ]
            });
        </script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js_admin/scripts.js"></script>
</body>
</html>