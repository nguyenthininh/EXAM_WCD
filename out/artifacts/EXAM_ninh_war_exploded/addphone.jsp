<%--
  Created by IntelliJ IDEA.
  User: Nina Nguyen
  Date: 4/17/21
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>AddPhone</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Add Phone</h2>
    <form action="addphone.jsp" method="post">
        <div class="form-group">
            <label >Name:</label>
            <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name_phone">
        </div>
        <div class="form-group">
            <label >Brand</label>
            <div class="col-7">
                <select class="form-control" name="brand" id="val-role-add">
                    <option value="apple">Apple</option>
                    <option value="samsung">Samsung</option>
                    <option value="nokia">Nokia</option>
                    <option value="other" >Other</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label >Price:</label>
            <input type="text" class="form-control" id="price" placeholder="Enter Price" name="price">
        </div>
        <div class="form-group">
            <label >Description:</label>
            <input type="text" class="form-control" id="desc" placeholder="Enter Description" name="desc">
        </div>
        <button type="button" class="btn btn-danger" >Close</button>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>

</div>



</body>
</html>
