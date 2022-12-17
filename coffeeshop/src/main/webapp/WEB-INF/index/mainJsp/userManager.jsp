<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/index/layout/head.jsp"></jsp:include>
    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            padding: 12px 16px;
            z-index: 1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
<!-- Navbar Start -->
<jsp:include page="/WEB-INF/index/layout/nav.jsp"></jsp:include>
<!-- Navbar End -->

<!-- Carousel Start -->
<jsp:include page="/WEB-INF/index/layout/carousel.jsp"></jsp:include>
<!-- Carousel End -->

<div class="container">
    <div class="d-flex justify-content-between">
        <h2 class="col-4">All Users</h2>
            <button type="button" class="btn col-2"><a href="${pageContext.request.contextPath}/home?action=signUp"><i
                    class="fa fa-plus"></i> Add User</a></button>
    </div>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>User Name</th>
            <th>Password</th>
            <th>Full Name</th>
            <th>Phone Number</th>
            <th>Email</th>
            <th>Address</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.userList}" var="user">
            <tr>
                <td>${user.getId()}</td>
                <td>${user.getUserName()}</td>
                <td>${user.getPassWord()}</td>
                <td>${user.getFullName()}</td>
                <td>${user.getPhone()}</td>
                <td>${user.getEmail()}</td>
                <td>${user.getAddress()}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>


<!-- Footer Start -->
<jsp:include page="/WEB-INF/index/layout/footer.jsp"></jsp:include>
<!-- Footer End -->

<!-- Back to Top -->
<jsp:include page="/WEB-INF/index/layout/backToTop.jsp"></jsp:include>
</body>
</html>