<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>

</head>
<body onload='document.loginForm.username.focus();'>

    <div class="container">

      <div class="row" id="pwd-container">
        <div class="col-md-4"></div>

        <div class="col-md-4">
          <section class="login-form">

              <c:if test="${not empty error}">

                <div class="alert alert-danger">
                    <strong>${error}</strong>
                  </div>

                    </c:if>
                    <c:if test="${not empty msg}">
                        <div class="alert alert-info">
                            <strong>${msg}</strong>
                          </div>
                    </c:if>

            <form name='loginForm'
              action="<c:url value='/login' />" method='POST' role="login">

                <img src="<c:url value="/resources/images/logo_hospital.JPG" />"  class="img-responsive logo-login"/>
                <input type="text" name="username" placeholder="Username" required class="form-control input-lg" />
                <input type="password" name="password" class="form-control input-lg" id="password" placeholder="Password" required="" />
                <button type="submit" name="go" class="btn btn-lg btn-success btn-block">Sign in</button>
              <input type="hidden" name="${_csrf.parameterName}"
                value="${_csrf.token}" />

            </form>

          </section>
          </div>

      </div>

    </div>

</body>
</html>