<%--
  Created by IntelliJ IDEA.
  User: starlee
  Date: 2018/9/30
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>显示所有用户</title>
</head>
<body>
<table>
    <s:iterator value="adminList" var="admin">
        <tr>
            <td><s:property value="#admin.id"/></td>
            <td><s:property value="#admin.username"/></td>
            <td><s:property value="#admin.password"/></td>
            <td><a href="del?id=<s:property value="#admin.id"/>">删除</a></td>
            <td><a href="edit?id=<s:property value="#admin.id"/>">编辑</a></td>
        </tr>
    </s:iterator>

</table>
<a href="addAdmin.jsp">添加用户</a>
</body>
</html>
