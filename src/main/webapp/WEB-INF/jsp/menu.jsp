<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 tdansitional//EN" "http://www.w3.org/td/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
<title>Insert title here</title>
<c:set var="root" value="${pageContext.servletContext.contextPath}"></c:set>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
   
<nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Xin chào: </a>
                </div>
              
                <ul class="nav navbar-nav navbar-right">
              
            
                    
                    <li><a href="them.htm"><span class="glyphicon glyphicon-user"></span> Thêm nhân viên</a></li>
                     <li><a href="danhSach.htm"><span class="glyphicon glyphicon-user"></span> Danh sách nhân viên</a></li>
                    <li><a href="themPhongBan.htm"><span class="glyphicon glyphicon-user"></span> Thêm phòng ban</a></li>
           			<li><a href="danhSachPhongBan"><span class="glyphicon glyphicon-user"></span> Danh sách phòng ban</a></li>
                  <li><a href="login.htm"><span class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>
                    
                </ul>
            </div>
        </nav>
</body>
</html>