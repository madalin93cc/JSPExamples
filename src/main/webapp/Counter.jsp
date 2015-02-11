<%--
  Created by IntelliJ IDEA.
  User: Madalin.Colezea
  Date: 7/14/2014
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HEAD>
    <TITLE>Counter</TITLE>
</HEAD>
<BODY>
<%@ page info="Written by Bulbul" %>
<%
    out.println(getServletInfo());
%>
<%
    String counterAttribute = (String) session.getAttribute("counter");
    int count = 0;
    try {
        count = Integer.parseInt(counterAttribute);
    }
    catch (Exception e) {
    }
    count++;
    session.setAttribute("counter", Integer.toString(count));
    out.println("This is the " + count + "th time you visited this page in thissession.");
%>
</BODY>
</HTML>
