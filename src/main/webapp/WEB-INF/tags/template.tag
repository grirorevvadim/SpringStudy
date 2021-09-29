<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="title" fragment="true" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery -->
    <spring:url value="/resources/js/jquery.js" var="jqueryjs"/>
    <script src="${jqueryjs}"></script>

    <!-- Bootstrap Core JavaScript -->
    <spring:url value="/resources/js/bootstrap.min.js" var="js"/>
    <script src="${js}"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <c:url value="/about.html" var="about"/>
                <c:url value="/file.html" var="file"/>
                <c:url value="/jdbc.html" var="jdbc"/>
                <c:url value="/email.html" var="email"/>
                <c:url value="/orm.html" var="orm"/>
                <c:url value="/jstl.html" var="jstl"/>
                <c:url value="/scope.html" var="scope"/>
                <c:url value="/cookieView.html" var="cookieView"/>
                <c:url value="/runtimeException.html" var="error"/>
                <li><a href="${about}">About</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutorial<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${file}">Загрузка файла PDF и Excel</a>
                        </li>
                        <li>
                            <a href="${jdbc}">JDBC c JDBCTemplates</a>
                        </li>
                        <li>
                            <a href="${email}">Email</a>
                        </li>
                        <li>
                            <a href="${orm}">Hibernate</a>
                        </li>
                        <li>
                            <a href="${jstl}">JSTL</a>
                        </li>
                        <li>
                            <a href="${error}">Runtime Exception</a>
                        </li>
                        <li>
                            <a href="${scope}">Scope session</a>
                        </li>
                        <li>
                            <a href="${cookieView}">Cookie</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


<jsp:doBody/>


<div class="container">
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright © Javastudy.ru 2016</p>
            </div>
        </div>
    </footer>
</div>

</body>

</html> 