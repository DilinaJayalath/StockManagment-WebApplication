<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Redirecting...</title>
    
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style type="text/css">
        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .loading-text {
            font-size: 24px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container text-center">
        <div class="row">
            <div class="col-md-12">
                <h1 class="display-4">Redirecting...</h1>
                <div class="spinner-border text-primary" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap JavaScript (optional) -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        window.onload = function() {
            // Define the URL of the servlet you want to redirect to
            var servletUrl = "supierTB"; // Replace with your servlet mapping

            // Create a hidden form element
            var form = document.createElement("form");
            form.setAttribute("method", "post");
            form.setAttribute("action", servletUrl);
            document.body.appendChild(form);

            // Submit the form
            form.submit();
        };
    </script>
</body>
</html>
