
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<title>Tourist Service</title>
</head>
<body class = "container">
<div class="display-1"> Tourist service</div>
<hr/>

<div class="row">
    <div class="col-6">
        <div class="card">
            <div class="card-header">Tourist Form</div>
            <div class="card-body">
                <form action="addingTourist" method="post">
                    <div class="form-group">
                        <label class="form-control-label" for="id">Id</label>
                        <input type="number" class="form-control" id="id" placeholder="Enter Id" name="id" value=<%=new Random().nextInt()+1000%>/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="address">Address</label>
                        <input type="text" class="form-control" id="address" placeholder="Address" name="address"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="date">Date</label>
                        <input type="text" class="form-control" id="date" placeholder="Date" name="date"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="amount">Amount</label>
                        <input type="text" class="form-control" id="amount" placeholder="Amount" name="amount"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="contact1">PhoneNumber</label>
                        <input type="text" class="form-control" id="contact1" placeholder="contact1" name="contact1"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="contact2">Alternate PhoneNumber</label>
                        <input type="text" class="form-control" id="contact2" placeholder="contact2" name="contact2" value="0"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="contact3">Alternate PhoneNumber</label>
                        <input type="text" class="form-control" id="contact3" placeholder="contact3" name="contact3" value="0"/>
                    </div>
                    <hr/>
                    <button type="submit" class="btn btn-primary">submit</button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>