<%--
  Created by IntelliJ IDEA.
  User: vgrigory
  Date: 24/09/2021
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Пример загрузки файла
                        <small>pdf или excel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">Пример загрузки файла</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <c:url value="/uploadFile" var="fileUploadControllerURL"/>
            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">
                    <p>Пример загрузки файла с помощью Spring MVC </p>
                    <form action="${fileUploadControllerURL}" method="post"
                          enctype="multipart/form-data">
                        <table>
                            <tr>
                                <td><b>File:</b></td>
                                <td><input type="file" name="file"></td>
                                <td><input type="submit" value="загрузить файл"></td>
                            </tr>
                        </table>
                    </form>

                    <br>
                    <br/>
                        <%--Объект из примера scope.jstl--%>
                    <c:if test="${not empty sessionScope.sessionObject}">
                        <p>Объект в области видимости session:</p>
                        <b>${sessionScope.sessionObject}</b>
                    </c:if>
                    <br>
                    <br/>
                    <c:url value="/excel" var="excelController"/>
                    <c:url value="/pdf" var="pdfController"/>
                    <a href="${excelController}">Excel</a>

                    <a href="${pdfController}">PDF</a>

                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:template>
