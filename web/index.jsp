<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--为了避免在jsp页面中出现java代码，这里引入jstl标签库，利用jstl标签库提供的标签来做一些逻辑判断处理 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <script type="text/javascript">
        function doLogout(){
            //访问LogoutServlet注销当前登录的用户
            window.location.href="${pageContext.request.contextPath}/servlet/LogoutServlet";
        }
    </script>
</head>

<body>
<h1>holden's test webSite</h1>
<hr/>
<c:if test="${user==null}">
    <a href="${pageContext.request.contextPath}/servlet/RegisterUIServlet" target="_blank">注册</a>
    <a href="${pageContext.request.contextPath}/servlet/LoginUIServlet">登陆</a>
</c:if>
<c:if test="${user!=null}">
    欢迎您：${user.userName}
    <input type="button" value="退出登陆" onclick="doLogout()">
</c:if>
<hr/>
</body>
</html>
