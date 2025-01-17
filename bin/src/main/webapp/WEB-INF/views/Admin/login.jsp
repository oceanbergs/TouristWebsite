<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Georgia', serif;
           
            background-size: cover;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 0 45px rgba(0, 0, 0, .08);
            border-radius: 8px;
            max-width: 400px;
            width: 100%;
        }

        .login-header {
            margin-bottom: 30px;
            text-align: center;
        }

        .login-header h2 {
            margin: 0;
            color: #333;
            font-weight: 700;
        }

        .login-form .form-group {
            margin-bottom: 20px;
        }

        .login-form .form-control {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid rgba(0, 0, 0, .1);
            border-radius: 4px;
            transition: .3s;
        }

        .login-form .form-control:focus {
            border-color: #87be29;
            outline: none;
            box-shadow: 0 0 4px rgba(134, 184, 23, 0.3);
        }

        .btn-primary {
            width: 100%;
            padding: 10px;
            border: none;
            background-color: #87be29;
            color: #fff;
            font-size: 18px;
            font-weight: 600;
            border-radius: 4px;
            transition: .3s;
        }

        .btn-primary:hover {
            background-color: #6a9d21;
        }

        .login-footer {
            margin-top: 20px;
            text-align: center;
        }

        .login-footer a {
            color: #87be29;
            text-decoration: none;
            font-weight: 600;
        }

        .login-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <div class="login-header">
            <h2>Admin Login</h2>
        </div>
        <!-- Display login success alert -->
    <c:if test="${not empty sessionScope.loginSuccess}">
    <div class="alert alert-success">
        ${sessionScope.loginSuccess}
    </div>
    <c:remove var="loginSuccess" scope="session"/> <!-- Clear the message after displaying it -->
</c:if>

       <form class="login-form" action="/TouristWebsite/auth/login" method="POST">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Username" name="username" id="username" required>
    </div>
    <div class="form-group">
        <input type="password" class="form-control" placeholder="Password" name="password" id="password" required>
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
</form>



        
    </div>

</body>
</html>
