<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="../lib/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<section>
    <h1 class="font-weight-bold text-center text-warning m-5 p-2">User Registration</h1>
</section>
<div class="container table-responsive">
    <form action="userRegistration" method="post">
        <table class="table table-striped">
            <tr>
                <td>
                    First Name:
                </td>
                <td>
                    <input type="text" name="firstName" class="form-control"/>
                </td>
                <td>
                    Last Name:
                </td>
                <td>
                    <input type="text" name="lastName" class="form-control"/>
                </td>
            </tr>
            <tr>
                <td>UserName:</td>
                <td><input type="text" name="email" class="form-control"/></td>
                <td>Password:</td>
                <td><input type="password" name="password" class="form-control"></td>
            </tr>
        </table>
        <input type="submit" value="Register" class="btn btn-danger">
        <a href="/" class="text-muted">Member Login here.!</a>
    </form>
</div>
<script type="javascript">

</script>
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