
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       

        <!------ Include the above in your HEAD tag ---------->
     <jsp:include page="menu.jsp"></jsp:include>
<form:form method="POST" action="" modelAttribute="data" class="form-horizontal">
       
            <fieldset>

                <!-- Form Name -->
                <legend>Form Name</legend>
				
				<div class="form-group">
                    <label class="col-md-4 control-label" for="fn">User name:</label>  
                    <div class="col-md-4">
                        <form:input path="user"  type="text" placeholder="Nhập user name" class="form-control input-md" required="true"/>
                
                    </div>
                </div>
               
				
                <div class="form-group">
                    <label class="col-md-4 control-label" for="fn">Họ và tên:</label>  
                    <div class="col-md-4">
                        <form:input path="hoVaTen" type="text" placeholder="Nhập tên" class="form-control input-md" required="true" />

                    </div>
                </div>
                


                <div class="form-group">
                    <label class="col-md-4 control-label" >Giới tính:</label>
                    <div class="col-md-4"> 
                      
                        <label class="radio-inline"><form:radiobutton path="gioiTinh" value="true"/>Nam </label>
                              <label class="radio-inline"><form:radiobutton path="gioiTinh" value="false"/>Nữ </label> 

                    </div>
                </div>
            

                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Ngày sinh:</label>  
                    <div class="col-md-4">
                        <form:input path="ngaySinh"  type="date"  class="form-control input-md" required="true"/>

                    </div>
                </div>          

                <div class="form-group">
                    <label class="col-md-4 control-label" >Lương:</label>  
                    <div class="col-md-4">
                        <form:input path="luong"  type="number" placeholder="Lương" class="form-control input-md" min="0" required="true"/>

                    </div>
                </div>

              <div class="form-group">
                    <label class="col-md-4 control-label" >Cấp độ:</label>  
                    <div class="col-md-4">
                        <form:input path="capDo"  type="number" placeholder="Cấp độ" class="form-control input-md" min="0" max="10" required="true"/>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Email:</label>  
                    <div class="col-md-4">
                        <form:input path="email" type="email" placeholder="email" class="form-control input-md" required="true"/>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="phone">Nhập số điện thoại:</label>  
                    <div class="col-md-4">
                        <form:input  path="sdt" type="text" placeholder="Phone" class="form-control input-md" required="true"/>

                    </div>
                </div>

            
               
               <div class="form-group">
                    <label class="col-md-4 control-label">Bộ phận:</label>
                    <div class="col-md-4">
                        <form:select path="maPhongBan" class="form-control" >
                        <c:forEach var="p" items="${ALLL}">
								 <option value="${p.id }">${p.phongBan}</option>																										
							</c:forEach>
                           
 
                        </form:select>
                    </div>
                </div>
          
                <div class="form-group">
                    <label class="col-md-4 control-label" for="password">Password</label>
                    <div class="col-md-4">
                        <form:input path="pass"   placeholder="Nhập pass" class="form-control input-md" required="true" />

                    </div>
                </div>
          


                <div class="form-group">
                    <label class="col-md-4 control-label" for="submit"></label>
                    <div class="col-md-4">
                        <button id="submit" name="submit" class="btn btn-primary">Thêm</button>
              
                    </div>
                </div>

            </fieldset>
      
        </form:form>
        
<c:forEach var="f" items="${ALL}">
<tr>

<td> ${f.phongBan }</td>


</tr>
</c:forEach>
 <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
