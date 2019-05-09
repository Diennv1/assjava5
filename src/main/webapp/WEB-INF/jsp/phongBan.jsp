
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
       <jsp:include page="menu.jsp"></jsp:include>
          <legend>Form Name</legend>
       <form:form method="POST" action="" modelAttribute="data" class="form-horizontal">
    
                <div class="form-group">
                    <label class="col-md-4 control-label" for="fn">Phòng ban:</label>  
                    <div class="col-md-4">
                        <form:input  path="phongBan" placeholder="Nhập tên" class="form-control input-md" required="true"/>

                    </div>
                </div>
             <div class="form-group">
                    <label class="col-md-4 control-label" for="submit"></label>
                    <div class="col-md-4">
                        <button  class="btn btn-primary">Thêm</button>
  
                    </div>
                </div>
  </form:form>
           <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
