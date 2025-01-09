<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
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
        <h1>Register</h1>
        <form action="#" method="#" id="valid">
            <div class="mb-3 mt-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Name">
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter Your Phone">
            </div>
            <div class="mb-3">
                <label for="em" class="form-label">Email</label>
                <input type="email" class="form-control" id="em" name="email" placeholder="Enter Your Email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="pass" placeholder="Enter Your Password">
            </div>
            <div class="mb-3">
                <label for="cf" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="cf" name="confirm" placeholder="Confirm Your Password">
            </div>
          <a href="Login.jsp">  <button type="submit" class="btn btn-primary">Submit</button></a>
            <div class="log mt-3 ">
                <p>Already have an account? <a href="Login.jsp" style="color: whitesmoke; text-decoration:underline;"><b>Login..!</b></a></p>
                </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.21.0/additional-methods.min.js" integrity="sha512-owaCKNpctt4R4oShUTTraMPFKQWG9UdWTtG6GRzBjFV4VypcFi6+M3yc4Jk85s3ioQmkYWJbUl1b2b2r41RTjA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $(document).ready(function() {
            $.validator.addMethod("mail", function(value, element, args) {
                return /^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/.test(value);
            }, "Enter a valid email format");

            $.validator.addMethod("rule", function(value, element, args) {
                return /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/.test(value);
            }, 'Please Enter password of Atleast 8 Characters');

            $("#valid").validate({
                rules: {
                    name: {
                        required: true,
                       
                    },
                    phone: {
                        required: true,
                        digits: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    email: {
                        required: true,
                        mail: true,
                    },
                    pass: {
                        required: true,
                        rule: true,
                        maxlength:15
                    },
                    confirm: {
                        required: true,
                        equalTo: '#password'
                    },
                },
                messages: {
                    name: {
                        required: "Please enter a valid name",
                    },
                    phone: {
                        required: "Please enter a valid phone number",
                        digits: "Please enter only digits",
                        maxlength: "Enter exactly 10 digits"
                    },
                    email: {
                        required: "Please enter a valid email address",
                    },
                    pass: {
                        required: "Please enter the password",
                        minlength:"Please enter password of atleast 8 characters",
                        maxlength:"Length Exceeded.."
                    },
                    confirm: {
                        required: "Please confirm the password",
                        equalTo: "Password mismatch"
                    },
                },
            });
        });
    </script>
</body>
</html>
