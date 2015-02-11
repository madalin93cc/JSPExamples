<HTML>
<HEAD>
</HEAD>
<BODY>
<%!
    public void jspInit() {
        System.out.println("Init");
    }
    public void jspDestroy() {
        System.out.println("Destroy");
    }
%>
<%
    out.println("JSP is easy");
%>
</BODY>
</HTML>