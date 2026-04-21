<%-- 
    Document   : resultBMI
    Created on : Apr 21, 2026, 12:13:42 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>BMI Result</title>
</head>
<body>
    <jsp:include page="header.jsp" />
    
    <div class="container">
        <%
            String bmiParam = request.getParameter("bmiValue");
            String catParam = request.getParameter("bmiCategory");
            
            double bmi = 0.0;
            String category = "No calculation data found.";
            
            if (bmiParam != null && catParam != null) {
                bmi = Double.parseDouble(bmiParam);
                category = catParam;
            }
        %>

        <div class="card">
            <h2 class="form-title">Your BMI Result</h2>
            
            <div class="card-body">
                <div class="result-box">
                    <div class="result-content">
                        <p>BMI Value</p>
                        <h1 class="bmi-value"><%= String.format("%.2f", bmi) %></h1>
                        <hr>
                        <p>Status: <strong><%= category %></strong></p>
                    </div>
                </div>

                <br>
                <div style="text-align: center;">
                    <a href="bmiCalculator.jsp" class="btn-submit" style="text-decoration: none; display: inline-block; width: auto; padding: 10px 30px;">Calculate Again</a>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>