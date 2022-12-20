<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/index/layout/head.jsp"></jsp:include>
    <style>
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

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
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
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

<c:if test="${requestScope.msg ne null}">
    <script>
        let msg = '<%= ((String) request.getAttribute("msg")) %>';
        Swal.fire({
            title: msg,
            showClass: {
                popup: 'animate__animated animate__fadeInDown'
            },
            hideClass: {
                popup: 'animate__animated animate__fadeOutUp'
            }
        })
    </script>
</c:if>

<c:if test="${requestScope.errors ne null}">
    <div class="alert alert-danger" role="alert">
        <ul>
            <c:forEach items="${requestScope.errors}" var="error">
                <li>${error}</li>
            </c:forEach>
        </ul>
    </div>
</c:if>

<div class="container">
    <h2>Edit your information</h2>
    <form class="was-validated" method="post">
        <div class="form-group" hidden>
            <input type="text" class="form-control" value="${requestScope.user.getId()}" name="id">
        </div>
        <div class="form-group">
            <label for="userName">Username:</label>
            <input type="text" class="form-control" id="userName" value="${requestScope.user.getUserName()}"
                   name="userName" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" id="email" value="${requestScope.user.getEmail()}" name="email"
                   required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="passWord">Password:</label>
            <input type="password" class="form-control" id="passWord" value="${requestScope.user.getPassWord()}"
                   name="passWord" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="rePassWord">Re-Enter Password:</label>
            <input type="password" class="form-control" id="rePassWord" value="${requestScope.user.getPassWord()}"
                   name="rePassWord" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" class="form-control" id="fullName" value="${requestScope.user.getFullName()}"
                   name="fullName" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="text" class="form-control" id="phone" value="${requestScope.user.getPhone()}" name="phone"
                   required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" value="${requestScope.user.getAddress()}"
                       name="address" required>
                <div class="invalid-feedback">Please fill out this field.</div>


                <%--            <input type="text" class="form-control" id="getIdCountry" value="${requestScope.user.getIdCountry()}" name="getIdCountry" required>--%>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
                <div class="form-group">
                    <label for="image">Your Image:</label>
                    <input type="text" class="form-control" id="image" placeholder="Your Image Link (Optional)"
                           name="image"
                           value="${requestScope.user.getImage()}">
                </div>
                <div class="form-group">
                    <label for="bio">Your Short Bio (Optional):</label>
                    <textarea class="form-control" id="bio" name="bio" value="${requestScope.user.getBio()}"
                              rows="3"></textarea>
                </div>
            </div>
            <div class="form-group form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" name="remember" required> Are you sure to edit your
                    information?
                    <div class="valid-feedback">Valid.</div>
                    <div class="invalid-feedback">Check this captcha to confirm!</div>
                </label>
            </div>
            <button type="submit" class="btn btn-primary">OK</button>
    </form>
</div>

<!-- Footer Start -->
<jsp:include page="/WEB-INF/index/layout/footer.jsp"></jsp:include>
<!-- Footer End -->

<!-- Back to Top -->
<jsp:include page="/WEB-INF/index/layout/backToTop.jsp"></jsp:include>
</body>
</html>