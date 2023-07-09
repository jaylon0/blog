<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 26350
  Date: 2023/4/26
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Insert title here</title>
</head>
<body>
<c:set target="${message}" property="success" value="上传成功!"/>
<c:out value="${message.success}"/>
<img src="images/<%=session.getAttribute("name")+""%>" height="250px" width="450px">
<a href="phone.html">返回</a>
</body>
</html>
