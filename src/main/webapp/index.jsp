<%@ page contentType="text/html;charset=UTF-8" language="java"
import="com.github.javafaker.Faker"
%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
  <title>Test JSP</title>
</head>
<body>
  <%@ include file="header.jsp" %>
  <p>
  <%
    String message = new Faker().name().fullName();
    out.write("Olá "  +message);
  %>

  <c:set value="This is first String." var="string1" />
  <c:set var = "string2" value="${fn:toUpperCase(string1)}" />

  <p>Final string : <c:out value="${string1}" /></p>

  <p>Soma de 1 + 1: ${1 + 1}</p>
  
  <%@ include file="footer.jsp" %>
</body>
</html>
