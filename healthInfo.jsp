<%-- 
    Document   : healthInfo
    Created on : Apr 21, 2026, 12:14:18 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Health Information</title>
</head>
<body>
    <jsp:include page="header.jsp" />
    <h2>BMI Categories Reference</h2>
    <%
        ArrayList<String> categories = new ArrayList<String>();
        categories.add("Underweight: BMI < 18.5");
        categories.add("Normal: 18.5 <= BMI <= 25");
        categories.add("Overweight: BMI > 25");
    %>
    <table border="1">
        <tr><th>Category Description</th></tr>
        <% for(String info : categories) { %>
        <tr>
            <td><%= info %></td>
        </tr>
        <% } %>
    </table>
    <jsp:include page="footer.jsp" />
</body>
</html>
