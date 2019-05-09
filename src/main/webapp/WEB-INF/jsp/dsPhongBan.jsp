<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 tdansitional//EN" "http://www.w3.org/td/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
</head>
<body>
 
        
<jsp:include page="menu.jsp"></jsp:include>


<table class="table">

<tr>
<td>ID</td>
<td>User name</td>
<td>Sửa</td>
<td>Xóa</td>
</tr>

<c:forEach var="f" items="${ALL}">
<tr>
<td> ${f.id }</td>
<td> ${f.phongBan }</td>
<td> <a href="suapb/${f.id}">Sửa</a> </td>  
<td> <a href="xoapb/${f.id}">Xóa</a> </td> 

</tr>
</c:forEach>
</table>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
