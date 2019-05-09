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
<td>Họ và tên</td>
<td>Ngày sinh</td>
<td>Giới tính</td>
<td>Email</td>
<td>Số điện thoại</td>
<td>Lương</td>
<td>Cấp độ</td>
<td>Phòng ban</td>
<td>Sửa</td>
<td>Xóa</td>
</tr>

<c:forEach var="f" items="${ALL}">
<tr>
<td> ${f.id }</td>
<td> ${f.user }</td>
<td> ${f.hoVaTen }</td>
<td> ${f.ngaySinh }</td>

<c:if test="${f.gioiTinh==true }">
<td>Nam</td>
</c:if>
<c:if test="${f.gioiTinh==false }">
<td>Nữ</td>
</c:if>
<td> ${f.email }</td>
<td> ${f.sdt }</td>
<td> ${f.luong }</td>
<td> ${f.capDo }</td>
<td> ${f.maPhongBan }</td>
<td> <a href="sua/${f.id}">Sửa</a> </td>  
<td> <a href="xoa/${f.id}">Xóa</a> </td> 
</tr>
</c:forEach>
</table>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>