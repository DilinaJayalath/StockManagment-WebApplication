<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>





<script type="text/javascript">
    window.onload = function() {
        // Define the URL of the servlet you want to redirect to
        var servletUrl = "allitems"; // Replace with your servlet mapping

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