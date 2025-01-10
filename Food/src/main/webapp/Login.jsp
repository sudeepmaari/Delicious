<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            background: url('https://mir-s3-cdn-cf.behance.net/project_modules/1400/d1087c161914607.63cd5dfe98bd2.jpg') center/cover no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .custom {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 16px;
            padding: 30px;
            width: 100%;
            max-width: 400px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        }

        label {
            color:whitesmoke;
        }

        label.error {
            color:#D20103;
            font-style: normal;
            display: block;
            margin-top: 5px;
        }

        h1 {
            color: #fff;
            margin-bottom: 10px;
            text-align: center;
        }

        .btn-primary {
            width: 100%;
            padding: 10px;
        }
        .log{
            color: whitesmoke;

        }
    </style>
</head>
<body>
    <div class="custom">
        <h1>Login</h1>
        <form action="Login" method="POST" id="valid">
            <div class="mb-3">
                <label for="em" class="form-label">Email</label>
                <input type="email" class="form-control" id="em" name="email" placeholder="Enter Your Email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="pass" placeholder="Enter Your Password">
            </div>
            <button type="submit" class="btn btn-primary">Login...</button>
            <div class="log mt-3 ">
              <div>
                <center><p>Don't have an Account? <a href="Register.jsp" style="color: whitesmoke; text-decoration:underline;"><b>Register!</b></p></center>
              </div>
              <div>
                <center><a href="Forgot.jsp" style="color: whitesmoke; text-decoration:underline;"><b>ForgotPassword?</b></a></center>
              </div>
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.21.0/additional-methods.min.js" integrity="sha512-owaCKNpctt4R4oShUTTraMPFKQWG9UdWTtG6GRzBjFV4VypcFi6+M3yc4Jk85s3ioQmkYWJbUl1b2b2r41RTjA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>