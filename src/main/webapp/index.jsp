<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Marks Entry</title>
    <script type="text/javascript">
        function validateForm() {
            var fields = ["rollno", "studentname", "sub1", "sub2", "sub3", "sub4", "sub5"];
            for (var i = 0; i < fields.length; i++) {
                var val = document.forms["studentForm"][fields[i]].value;
                if (val == "") {
                    alert("All fields must be filled out");
                    return false;
                }
                if (i > 1 && (isNaN(val) || val < 0 || val > 100)) {
                    alert("Please enter valid marks (0-100) for " + fields[i]);
                    return false;
                }
            }
            return true;
        }
    </script>
</head>
<body>
    <h2>Student Result System</h2>
    <form name="studentForm" action="ResultServlet" method="POST" onsubmit="return validateForm()">
        Roll No: <input type="text" name="rollno"><br><br>
        Name: <input type="text" name="studentname"><br><br>
        Subject 1: <input type="number" name="sub1"><br>
        Subject 2: <input type="number" name="sub2"><br>
        Subject 3: <input type="number" name="sub3"><br>
        Subject 4: <input type="number" name="sub4"><br>
        Subject 5: <input type="number" name="sub5"><br><br>
        <input type="submit" value="Calculate Result">
    </form>
</body>
</html>
