<%--
  Created by IntelliJ IDEA.
  User: Madalin.Colezea
  Date: 7/14/2014
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page session="false" %>
<%@ page import="java.util.Calendar" %>
<%@ include file="includes/Header.html" %>
<%
    out.println("Current time: " + Calendar.getInstance().getTime());
%>
<%@ include file="includes/Footer.html" %>
