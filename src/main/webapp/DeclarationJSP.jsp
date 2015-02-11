<%--
  Created by IntelliJ IDEA.
  User: Madalin.Colezea
  Date: 7/14/2014
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%!
    String getSystemTime() {
        return Calendar.getInstance().getTime().toString();
    }
%>
<%@ page import="java.util.Calendar" %>
<%@ page session="false" %>
<%
    out.println("Current Time: " + getSystemTime());
%>
<%! int i; %>
