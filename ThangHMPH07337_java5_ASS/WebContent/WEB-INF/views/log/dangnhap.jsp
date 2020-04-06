<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}">
<meta charset="UTF-8">
<title>Đăng nhập</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/util.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/main.css">
<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/select2/select2.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" 	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<style type="text/css">
body{
  background: linear-gradient(120deg,#82add4,#fbc531);
  }
button {
	width: 2000px;
	height: 50px;
	background-color: black;
	color: white;
	border-radius: 50px;
	font-weight: bold;
}

button:hover {
	width: 2000px;
	font-weight: bold;
	height: 50px;
	background-color: #00008B;
	color: white;
	border-radius: 50px;
}

.text-center {
	padding-left: 50px;
}

.login100-form {
	padding-top: -10;
}

.txt1 {
	font-size: 17px;
	font-weight: bold;
}

.txt2 {
	font-size: 17px;
	font-weight: bold;
}

*[id$=errors] {
	color: red;
	font-size: italic !important;
}
</style>
</head>
<body>
<div class="limiter">
	<div class="container-login100" >
		<div class="wrap-login100" style=" background: linear-gradient(120deg,#e7cb7d,#c6ced4,#fffab9);" >
			<div class="login100-pic js-tilt" data-tilt>
					<img src="<%=request.getContextPath()%>/images/Customer-Supprt.png" alt="IMG">
			</div>
			<form class="login100-form validate-form" action="ThangHMPH07337_java5_ASS/log/dangnhap.htm" method="post">
					<span class="login100-form-title"> QUẢN LÝ NHÂN SỰ ĐĂNG NHẬP </span>
					<h4  style="padding: 10px;text-align: center; color: red;">${message}</h4>
				<form:form modelAttribute="user">
					<form:errors path="username"></form:errors>
						<div class="wrap-input100 validate-input" data-validate="Bạn cần nhập đúng thông tin như: ex@abc.xyz">
							<input class="input100" type="text" placeholder="Tài Khoản" name="username" id="username"/> 
							<span class="focus-input100"></span> 
							<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
							</span>
						</div>
					<form:errors path="password"></form:errors>
						<div class="wrap-input100 validate-input" data-validate="Password không được bỏ trống!">
							<input class="input100" type="password" placeholder="Mật Khẩu" name="password" id="password-field"> 
							<span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span> 
							<span class="focus-input100"></span>
							 <span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>												
						
						<div class="container-login100-form-btn">
							<button>Đăng nhập</button>
						</div>
				</form:form>
			</form>
		</div>
	</div>
</div>


   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/vendor/tilt/tilt.jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/main.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<script type="text/javascript">
	function validate() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password-field").value;
        if (username == "" && password == "") {
            swal("Bạn Chưa Nhập Thông Tin!", "Vui Lòng Kiểm Tra Lại", "warning");
            return false;
        }
        //Nếu không nhập tài khoản sẽ báo lỗi
        if (username == null || username == "") {
            swal("Bạn Chưa Nhập Tài Khoản", "Vui Lòng Kiểm Tra Tài Khoản", "error");
            return false;
        } 
        //Nếu không nhập mật khẩu sẽ báo lỗi
        if (password == null || password == "") {
            swal("Bạn Chưa Nhập Mật Khẩu", "Vui Lòng Kiểm Tra Mật Khẩu", "error");
            return false;
        }
        // //Nếu mật khẩu dưới 8 ký tự 
        // if (password.length < 9) {
        //     swal("Bạn Nhập Chưa Đủ Mật Khẩu", "Mật Khẩu Phải Đủ 9 Ký Tự Bao Gồm Chữ Và Số", "error");
        //     return false;
        // }
        // //Nếu mật khẩu trên 8 ký tự thì sẽ báo lỗi
        // if (password.length > 9) {
        //     swal("Bạn Nhập Dư Mật Khẩu", "Vui Lòng Kiểm Tra Lại Mật Khẩu", "error");
        //     return false;
        // }
//         swal("Thông Tin Bạn Nhập Không Tồn Tại", "Vui Lòng Kiểm Tra Lại", "error");
		else{
// 			swal("Thành Công!", "Bạn Đã Đăng Nhập Với Tư Cách Admin", "success");
			return true;
		}
    }

		//show/hide pass
		function myFunction() {
			var x = document.getElementById("myInput");
			if (x.type === "password") {
				x.type = "text"
			} else {
				x.type = "password";
			}
		}
		$(".toggle-password").click(function() {
			$(this).toggleClass("fa-eye fa-eye-slash");
			var input = $($(this).attr("toggle"));
			if (input.attr("type") == "password") {
				input.attr("type", "text");
			} else {
				input.attr("type", "password");
			}
		});
	</script>
</body>
</html>