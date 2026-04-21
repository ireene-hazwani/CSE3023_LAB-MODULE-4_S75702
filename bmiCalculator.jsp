<%-- 
    Document   : bmiCalculator
    Created on : Apr 21, 2026, 12:11:52 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>BMI Calculator</title>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container">
        <form action="processBMI.jsp" method="POST">
            <h2>BMI Calculator</h2>
            <label>Weight (kg):</label>
            <input type="number" name="weight" step="0.01" required><br><br>
            
            <label>Height (m):</label>
            <input type="number" name="height" step="0.01" required><br><br>
            
            <input type="submit" value="Calculate BMI">
        </form>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
