
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="java.util.Random" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<title>Tourist Service</title>
</head>
<body class = "container">
<div class="display-1" style="text-align:center"> Tourist service</div>
<hr/>

<div class="col d-flex justify-content-center">
    <div class="col-6">
        <div class="card">
            <div class="card-header"><h6>Tourist Registration Form</h6></div>
            <div class="card-body">
                <form action="addingTourist" method="post">
                    <div class="form-group">
                        <label class="form-control-label" for="id">Id</label>
                        <input type="number" class="form-control" id="id" placeholder="Enter Id" name="id" readonly="readonly" value="${lastId}"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="name" >Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name" required/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="address">Address</label>
                        <input type="text" class="form-control" id="address" placeholder="Address" name="address" required/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="date">Date</label>
                        <input type="text" class="form-control" id="date" placeholder="Date" name="date" required/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="amount">Amount</label>
                        <input type="text" class="form-control" id="amount" placeholder="Amount" name="amount" required/>
                    </div>
                    <div class="form-group">
                    
                        <label class="form-control-label" for="contact1">PhoneNumber</label>
                        <input type="text" class="form-control" id="contact1" placeholder="contact1" name="contact1" required/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="contact2">Alternate PhoneNumber</label>
                        <input type="text" class="form-control" id="contact2" placeholder="contact2" name="contact2"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="contact3">Alternate PhoneNumber</label>
                        <input type="text" class="form-control" id="contact3" placeholder="contact3" name="contact3"/>
                    </div>
                    <hr/>
                    <div class="text-center">
                    <button type="submit" class="btn btn-primary" style="align:center">submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>