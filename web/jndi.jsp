<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.Context" %><%--
  Created by IntelliJ IDEA.
  User: Coder
  Date: 2019/12/14
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jndi</title>
</head>
<body>
jndi:将某一个资源（对象），以配置文件（conf/context.xml)br/><br/>

<Environment name="jndiName" value="jndiValue" type="java.lang.String"/>
<%
  Context ctx=new InitialContext();
  String testJndi=(String)ctx.lookup("java:comp/env/jndiName");
  out.print("得到jndi的值为"+testJndi);
%>

</body>
</html>
