<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Report Card</title>
</head>
<body>
    <h2>Academic Performance Result</h2>
    <table border="1" cellpadding="5">
        <tr><td>Roll Number</td><td>${roll}</td></tr>
        <tr><td>Student Name</td><td>${name}</td></tr>
        <tr><td>Average Marks</td><td>${avg}</td></tr>
        <tr>
            <td>Final Result</td>
            <td style="font-weight:bold; color:${status == 'PASS' ? 'green' : 'red'};">${status}</td>
        </tr>
    </table>
    <br>
    <a href="index.jsp">Go back to Client Side (Form)</a>
</body>
</html>
