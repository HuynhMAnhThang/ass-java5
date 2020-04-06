<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/images/icons/favicon.ico" />
<!--=============================================================================================== -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/vendor/animate/animate.css">
<!--=============================================================================================== -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/vendor/css-hamburgers/hamburgers.min.css">
<!--=============================================================================================== -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/vendor/select2/select2.min.css">
<!--=============================================================================================== -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/util.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/main.css">
<!--=============================================================================================== -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- Latest compiled and minified CSS -->
<!--=============================================================================================== -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
<style type="text/css">
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

.login100-form {
	margin-bottom: 300px;
}

.login100-pic {
	margin-top: 80px;
}

.ten {
	width: 50px;
	background-color: white;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<i class="fas fa-bars"></i>
				</button>
				<a class="navbar-brand" href="#"><i class="fa fa-user-circle"
					aria-hidden="true"></i> QUẢN LÝ NHÂN VIÊN</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="QuanLy/qlnv.htm" data-toggle="tooltip"
						data-placement="bottom" title="QUẢN LÝ NHÂN VIÊN">NHÂN VIÊN</a></li>
					<li><a href="QuanLy/qlqb.htm" data-toggle="tooltip"
						data-placement="bottom" title="QUẢN LÝ PHÒNG BAN">PHÒNG BAN</a></li>
					<li><a href="Thanhtichkyluat/thanhtich-kyluat.htm"
						data-toggle="tooltip" data-placement="bottom"
						title="THÀNH TÍCH & KỶ LUẬT">THÀNH TÍCH & KỶ LUẬT</a></li>
					<!-- 					<li><a href="Thanhtichkyluat/tonghop.htm" -->
					<!-- 						data-toggle="tooltip" data-placement="bottom" title="TỔNG HỢP">TỔNG -->
					<!-- 							HỢP</a></li> -->
					<li><a href="Thanhtichkyluat/tonghop.htm"
						data-toggle="tooltip" data-placement="bottom" title=""><b>TỔNG
								HỢP</b> <span class="caret"></span> </a>
						<ul class="dropdown">
							<li><a href="Thanhtichkyluat/tonghop.htm"
								data-toggle="tooltip" data-placement="bottom"
								title="TỔNG HỢP NHÂN VIÊN"><b>TỔNG HỢP NHÂN VIÊN </b></a></li>
							<li><a href="Thanhtichkyluat/tonghop.htm"
								data-toggle="tooltip" data-placement="bottom"
								title="TỔNG HỢP PHÒNG BAN"><b>TỔNG HỢP PHÒNG BAN </b></a></li>
						</ul></li>
					<li><a data-toggle="tooltip" data-placement="bottom" title=""><input
							class="ten" name="id" id="id" value="${sessionScope.username}"> <span
							class="caret"></span> </a>
						<ul class="dropdown">
							<li class="active"><a href="log/doimatkhau.htm"
								data-toggle="tooltip" data-placement="bottom" title="ĐĂNG XUẤT"><b>Đổi
										mật khẩu <i class="fas fa-sign-out-alt"></i>
								</b></a></li>
							<li><a
								href="${pageContext.request.contextPath}/log/logoff.htm"
								data-toggle="tooltip" data-placement="bottom" title="ĐĂNG XUẤT"><b>Đăng
										xuất <i class="fas fa-sign-out-alt"></i>
								</b></a></li>
						</ul></li>

				</ul>
			</div>
		</div>
	</nav>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<%=request.getContextPath()%>/images/Key-icon.png"
						alt="IMG">
				</div>

				<form action="doimatkhau.htm" class="login100-form validate-form"
					method="post">
					<span class="login100-form-title"> <i
						class="fa fa-user-circle-o" aria-hidden="true"></i><Br> ĐỔI
						MẬT KHẨU
					</span>
					<div class="wrap-input100 validate-input"
						data-validate="Email sai hãy làm theo ví dụ: ex@abc.xyz">
						<input class="input100" type="password"
							placeholder="Nhập mật khẩu cũ" name="mkcu" id="mkcu" value="" />
						<br> <input class="input100" type="password"
							placeholder="Nhập mật khẩu mới" name="mkmoi" id="mkmoi" value="" />
						<br> <input class="input100" type="password"
							placeholder="Nhập lại mật khẩu mới" name="mkmoi1" id="mkmoi1"
							value="" />
					</div>
					<div class="container-login100-form-btn">
						<!-- 						<input type="button" onclick="return RegexEmail('emailInput')" -->
						<!-- 							value="Gửi Ngay" /> -->
						${message}
						<button>Đổi</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1"></span> <a class="txt2" href="./dangnhap.htm">
							Đến trang đăng nhập </a>
					</div>
				</form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/popper.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script type="text/javascript">
		function RegexEmail(emailInputBox) {
			var emailStr = document.getElementById(emailInputBox).value;
			var emailRegexStr = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
			var isvalid = emailRegexStr.test(emailStr);
			if (!isvalid) {
				swal("Lỗi! Opps", "Có Thể Bạn Chưa Nhập Email Hoặc Nhập Sai",
						"error");
				emailInputBox.focus;
			} else {
				swal("Thông Báo!",
						"Chúng Tôi Đã Gửi Thông Tin Qua Email Cho Bạn!",
						"success");
				emailInputBox.focus;
				window.location = "#";

			}
		}
	</script>
</body>
</html>