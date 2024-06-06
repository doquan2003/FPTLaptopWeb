<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-vpZl2lJD5zzOykKkLrBbEPv9Wp0yqDgqQ5m9vJkzQJqJpzz/3ZvVoKHyN1p+qLiX" crossorigin="anonymous">
<style>
    #includes-topnav {
        position: fixed;
        width: 100%;
        z-index: 100;
        background-color: #0000FF; /* Changed to blue */
    }
    ::-webkit-scrollbar {
        width: 10px;
    }
    ::-webkit-scrollbar-track {
        background: #0056b3;
    }
    ::-webkit-scrollbar-thumb {
        background: #5385B4;
    }
    ::-webkit-scrollbar-thumb:hover {
        background: #205F9C;
    }
</style>
<nav class="navbar navbar-expand-md navbar-light" id="includes-topnav">      
    <!-- Left side of the navbar -->
    <a class="navbar-brand" href="home">
        <img src="<%=request.getContextPath()%>/assets/images/FBTComputerLogo2.png" alt="alt" style="width:300px; vertical-align: top; margin-left: 1vh;"/>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Right side of the navbar -->
    <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
        <ul class="navbar-nav m-auto">  
            <li class="nav-item m-auto">
                <a class="nav-link text-white" href="home">
                    <strong>Home</strong>
                </a>
            </li>
            <li class="nav-item m-auto">
                <a class="nav-link text-white" href="manager-product">
                    <strong>Manage</strong>
                </a>
            </li>
            <li class="nav-item m-auto">
                <a class="nav-link text-white" href="blog">
                     <strong>Blog</strong>
                </a>
            </li>
             <li class="nav-item m-auto">
                <a class="nav-link text-white" href="blog">
                     <strong>Warranty</strong>
                </a>
            </li>
        </ul>
        <form action="search" method="post" class="my-2 my-lg-0 ms-3 d-flex justify-content-center">
            <div class="input-group input-group-sm">
                <input oninput="searchByName(this)" value="" name="txt" type="text" class="form-control py-1 px-3 h-100 rounded" placeholder="Search...">
                <div class="input-group-append">
                    <button type="submit" class="btn btn-outline-light btn-number mr-3 px-3">
                        <i class="fas fa-search" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
            <a class="btn btn-light btn-sm py-2 px-0 w-50 h-25 ms-3 me-3" href="cart.jsp">
                <i class="fa-solid fa-cart-plus" style="margin-right: 5px;"></i>Cart
                <span class="badge badge-light">${cart_list.size()}</span>
            </a>
            <ul class="navbar-nav m-2">
                <li class="nav-item dropdown m-auto">
                    <a class="nav-link dropdown-toggle text-white p-0 me-3" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                       <strong>Hello ${sessionScope.customer.customerName}</strong>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="profile"><i class="fas fa-user-circle"></i> Profile</a></li>
                        <li><a class="dropdown-item" href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Login</a></li>
                        <li><a class="dropdown-item" href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </form>  
    </div>
</nav>
<br><br><br>
<script>
    var dropdownToggle = document.querySelector('.nav-link.dropdown-toggle');
    var dropdownMenu = document.querySelector('.dropdown-menu');

    dropdownToggle.addEventListener('click', function (event) {
        event.preventDefault();
        if (!dropdownMenu.classList.contains('show')) {
            dropdownMenu.classList.add('show');
        } else {
            dropdownMenu.classList.remove('show');
        }
    });
</script>
