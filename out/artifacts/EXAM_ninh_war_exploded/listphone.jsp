<%--
  Created by IntelliJ IDEA.
  User: Nina Nguyen
  Date: 4/17/21
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <head>
        <title>Quanr ly phones</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/fontawesome.min.css"
              integrity="sha512-OdEXQYCOldjqUEsuMKsZRj93Ht23QRlhIb8E/X0sbwZhme8eUw6g8q7AdxGJKakcBbv7+/PX0Gc2btf7Ru8cZA=="
              crossorigin="anonymous"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
                integrity="sha512-RXf+QSDCUQs5uwRKaDoXt55jygZZm2V++WUZduaU/Ui/9EGp3f/2KZVahFZBKGH0s774sd3HmrhUy+SgOFQLVQ=="
                crossorigin="anonymous"></script>
    </head>
</head>
<body>

<div class="container">
    <div class="row mt-3">
        <div class="col-12 text-center">
            <h4>List Phone</h4>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-3 offset-md-9 col-12 text-center">
            <button class="btn btn-primary" >
                <a href="/addphone">ADD PHONE</a>

            </button>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Stt</th>
                    <th>Name</th>
                    <th>Brand</th>
                    <th>Price</th>
                    <th>Description</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="p" items="${requestScope.listPhone}">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.brand}</td>
                        <td>${p.price}</td>
                        <td>${p.desciption}</td>
<%--                        <td>--%>
<%--                            <a data-toggle="tooltip" data-placement="top" title="Chỉnh sửa."--%>
<%--                               class="detail cursor-pointer"--%>
<%--                               data-id="${p.id}" data-name="${p.name}" data-brand="${p.brand}" data-price="${p.price}" data-desc="${p.description}"--%>
<%--                              >--%>
<%--                                <i class="btnEdit fa fa-fw fa-edit"></i>--%>
<%--                            </a>--%>
<%--                            <a data-toggle="tooltip" data-placement="top" title="Xóa user." data-id="${p.id}"--%>
<%--                               class="del-user cursor-pointer">--%>
<%--                                <i class="fa fa-trash text-danger"></i>--%>
<%--                            </a>--%>
<%--                        </td>--%>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>
