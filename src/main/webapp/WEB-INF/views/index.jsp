<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TRUONGMAI
  Date: 12/13/2022
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/submit" method="get">
    <h2>Calculator</h2>
    <table>
        <tr>
            <td>
                <label> So thu nhat</label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="number" name="first" placeholder="nhap so thu nhat" value="${first}">
            </td>
        </tr>
        <tr>
            <td>
                <label> So thu hai</label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="number" name="second" placeholder="nhap so thu 2" value="${second}">
            </td>
        </tr>
        <tr>
            <td>
                <label>Phep tinh</label>
            </td>
        </tr>
        <tr>
            <td>
                <select name="operator" id="operator">
                    <option value="+">Cong</option>
                    <option value="-">Tru</option>
                    <option value="*">Nhan</option>
                    <option value="/">Chia</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="result">
            </td>
        </tr>
    </table>
</form>
<div>
    ${result}
    ${mess}
</div>
</body>
</html>
