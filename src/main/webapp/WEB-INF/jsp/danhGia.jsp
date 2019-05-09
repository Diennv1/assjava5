

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <!------ Include the above in your HEAD tag ---------->
    <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Xin chào</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Trang chủ</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Page 1-1</a></li>
                            <li><a href="#">Page 1-2</a></li>
                            <li><a href="#">Page 1-3</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Page 2</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
              
            
                    <li><a href="login.htm"><span class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>
                    <li><a href="them_nhan_vien.htm"><span class="glyphicon glyphicon-user"></span> Thêm nhân viên</a></li>
                    <li><a href="category.htm"><span class="glyphicon glyphicon-user"></span> Thêm phòng ban</a></li>
                    <li><a href="danhGia.htm"><span class="glyphicon glyphicon-user"></span> Đánh giá</a></li>
                    
                </ul>
            </div>
        </nav>
        <form class="form-horizontal">
            <fieldset>

                <!-- Form Name -->
                <legend>Đánh giá</legend>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="fn">Họ và tên:</label>  
                    <div class="col-md-4">
                        <input id="fn" name="fn" type="text" placeholder="Nhập tên" class="form-control input-md" required="">

                    </div>
                </div>


                <div class="form-group">
                    <label class="col-md-4 control-label" >Loại:</label>
                    <div class="col-md-4"> 
                        <label class="radio-inline" >
                            <input type="radio" name="category"  value="1" checked="checked">
                            Thành tích
                        </label> 
                        <label class="radio-inline" >
                            <input type="radio" name="category"  value="0">
                           Kỹ luật
                        </label>
                    </div>
                </div>
         

                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Ngày :</label>  
                    <div class="col-md-4">
                        <input  name="date" type="date"  class="form-control input-md" >

                    </div>
                </div>          

             



                <div class="form-group">
                    <label class="col-md-4 control-label" >Lí do</label>  
                    <div class="col-md-4">

                        <textarea class="form-control" rows="3" name="ghichu"></textarea>
                    </div>
                </div>
           
          
             


                <div class="form-group">
                    <label class="col-md-4 control-label" for="submit"></label>
                    <div class="col-md-4">
                        <button id="submit" name="submit" class="btn btn-primary">Thêm</button>
                        <button id="submit" name="submit" class="btn btn-primary">Sữa</button>
                        <button id="submit" name="submit" class="btn btn-primary">Xóa</button>
                    </div>
                </div>

            </fieldset>
        </form>
 <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
