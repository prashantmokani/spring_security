<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>::User Login::</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body class="bg-light">
<div class="container text-center">
    <h2 class="font-weight-bold text-dark mt-5">Welcome Back!</h2>
</div>

<div class="container text-center">
    <div class="col-lg-10 col-md-10 col-sm-12 mx-auto">
        <div class="align-content-center text-center mt-lg-5   ">
            <div class="card border border-primary rounded shadow">
                <div class="card-body text-center align-content-center ">
                    <h3 class="card-title text-left">Login.!</h3>
                    <p class="text-left text-muted">Enter your details below to continue.</p>
                    <div class="mt-5">
                        <form action="authUser" method="post">
                            <input type="text" name="email" class="form-control m-2" placeholder="Username" required/>
                            <input type="password" name="password" class="form-control m-2" placeholder="Password" required/>
                            <input type="submit" value="Login" class="btn mt-5 mb-2 btn-info" role="button"/>
                        </form>
                        <a class="text-muted" href="showRegistration">New User? SignUp here.</a><br>
                    </div>
                </div>
            </div>
            <span class="text-danger font-weight-bold mt-4">${errorMsg}</span>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
