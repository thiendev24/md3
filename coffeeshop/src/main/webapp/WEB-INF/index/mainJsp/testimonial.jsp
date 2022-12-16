
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>KOPPEE - Coffee Shop HTML Template</title>
  <jsp:include page="/WEB-INF/index/layout/head.jsp"></jsp:include>
</head>
<body>
<!-- Navbar Start -->
<jsp:include page="/WEB-INF/index/layout/nav.jsp"></jsp:include>
<!-- Navbar End -->

<!-- Page Header Start -->
<jsp:include page="/WEB-INF/index/layout/pageHeader.jsp"></jsp:include>
<!-- Page Header End -->

<!-- Testimonial Start -->
<jsp:include page="/WEB-INF/index/layout/testimonial.jsp"></jsp:include>
<!-- Testimonial End -->

<!-- Footer Start -->
<jsp:include page="/WEB-INF/index/layout/footer.jsp"></jsp:include>
<!-- Footer End -->

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>

<!-- js bottom -->
<jsp:include page="/WEB-INF/index/layout/jsBottom.jsp"></jsp:include>
</body>
</html>
