<%--
  Created by IntelliJ IDEA.
  User: Madalin.Colezea
  Date: 7/14/2014
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%!
    public void jspInit() {
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            System.out.println("JDBC driver loaded");
        }
        catch (ClassNotFoundException e) {
            System.out.println(e.toString());
        }
    }
    String encodeHtmlTag(String tag) {
        if (tag==null)
            return null;
        int length = tag.length();
        StringBuffer encodedTag = new StringBuffer(2 * length);
        for (int i=0; i<length; i++) {
            char c = tag.charAt(i);
            if (c=='<')
                encodedTag.append("<");
            else if (c=='>')
                encodedTag.append(">");
            else if (c=='&')
                encodedTag.append("&amp;");
            else if (c=='"')
                encodedTag.append("&quot;");
//when trying to output text as tag's value as in
// values="???".
            else if (c==' ')
                encodedTag.append("&nbsp;");
            else
                encodedTag.append(c);
        }
        return encodedTag.toString();
    }
%>
<%@ page session="false" %>
<%@ page import="java.sql.*" %>
<HTML>
<HEAD>
    <TITLE>Display All Users</TITLE>
</HEAD>
<BODY>
<CENTER>
    <BR><H2>Displaying All Users</H2>
    <BR>
    <BR>
    <TABLE>
        <TR>
            <TH>First Name</TH>
            <TH>Last Name</TH>
            <TH>User Name</TH>
            <TH>Password</TH>
        </TR>
        <%
            String sql = "SELECT FirstName, LastName, UserName, Password" +
                    " FROM Users";
            try {
                Connection con = DriverManager.getConnection("jdbc:odbc:JavaWeb");
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery(sql);
                while (rs.next()) {
        %>
        <TR>
            <TD><% out.print(encodeHtmlTag(rs.getString(1))); %></TD>
            <TD><% out.print(encodeHtmlTag(rs.getString(2))); %></TD>
            <TD><% out.print(encodeHtmlTag(rs.getString(3))); %></TD>
            <TD><% out.print(encodeHtmlTag(rs.getString(4))); %></TD>
        </TR>
        <%
                }
                rs.close();
                s.close();
                con.close();
            }
            catch (SQLException e) {
            }
            catch (Exception e) {
            }
        %>
    </TABLE>
</CENTER>
</BODY>
</HTML>