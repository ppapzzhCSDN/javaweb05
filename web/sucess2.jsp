<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title></title>
</head>
<body>
<table bgcolor="#ffc0cb" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>ID</td>
        <td>学生名</td>
        <td>性别</td>
        <td>年龄</td>

    </tr>
    <tr>
        <c:forEach items="${user}" var="list" varStatus="status">
            <%--//items则会传值    var 为下面的值 传值  --%>
        <td>${status.index}</td>
        <td>${list.id}</td>
        <td>${list.name}</td>
        <td>${list.sex}</td>
        <td>${list.age}</td>
    </tr>
    </c:forEach>

    <br/> <br/> <br/> <br/>
    <c:forEach items="${map}" var="jj" varStatus="status">
        <%--//items则会传值    var 为下面的值 传值  varStatus状态参数--%>
        <td>${status.index}</td>
        <td>${jj.getValue().id}</td>
        <td>${jj.getValue().name}</td>
        <td>${jj.getValue().sex}</td>
        <td>${jj.getValue().age}</td>
        </tr>
    </c:forEach>
</table>
<br/>需求：--成绩 >=90 A 级，>=80 ,B 级，>=70 C 级，否则 D 级 <br/>
<c:set var="score" value="60"></c:set>
<c:choose>
    <c:when test="${score>=90 }">
        A 级
    </c:when>
    <c:when test="${score>=80 }">
        B 级
    </c:when>
    <c:when test="${score>=70 }">
        C 级
    </c:when>
    <c:otherwise>
        D 级
    </c:otherwise>
</c:choose><br>
<%--日期->字符串--%>
<fmt:formatDate value="${ppap}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> <br>

<%--2021-02-24 17:25:59变成年月日--%>
<%--字符串->日期->年月日--%>
<hr/>
<fmt:parseDate value="${pppp}" pattern="yyyy-MM-dd" var="hello"></fmt:parseDate>
<%--//就是把它字符串换成时间 没有被识别--%>
<fmt:formatDate value="${hello}" pattern="yyyy年MM月dd日 HH时mm分ss秒"></fmt:formatDate><br/>

<c:set value="abcd" var="str" scope="page"></c:set>
<c:set value="ABCDE" var="str1" scope="page"></c:set>
<c:set value=" ABCDE " var="str2" scope="page"></c:set>
<c:set value="<h1>abc</h1>" var="str3" scope="page"></c:set>
<%--注意 str 不用双引号  否则为字符串 而不是变量--%>
转化为大写： ${fn:toUpperCase(str)}<br/>
转化为小写： ${fn;fn:toLowerCase(str1)}<br/>
是否包含"abc"： ${fn:contains(str, "abc")}<br/>
是否包含"aaa"： ${fn:contains(str, "aaa")}<br/>
是否包含大小写： ${fn:containsIgnoreCase(str3, "abc")}<br/>
测试str 长度： ${fn:length(str)}<br/>
测试去掉空格的str2 的长度 ${fn:length(fn:trim(str2))}<br/>
转义输出： ${fn:escapeXml(str3)}<br/>
<%--HTML（XML）会以字符串输出--%>
不转义输出： ${str3}<hr/>


</body>
</html>