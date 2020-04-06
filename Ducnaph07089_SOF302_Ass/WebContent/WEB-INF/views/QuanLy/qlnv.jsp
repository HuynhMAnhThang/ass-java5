<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="author" content="Bin-It">
<meta property="og:url" />
<meta property="og:type" content="truongbinit" />
<meta property="og:title" content="Website TruongBin" />
<meta property="og:description" content="Wellcome to my Website" />

<title>Quản Lý Nhân Viên</title>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" -->
<!-- 	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" -->
<!-- 	crossorigin="anonymous"> -->
<!-- <!--===============================================================================================--> -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- Latest compiled and minified CSS -->
<!--=============================================================================================== -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<!--=============================================================================================== -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<!--=============================================================================================== -->
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!--=============================================================================================== -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
<!--=============================================================================================== -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
<!--=============================================================================================== -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--=============================================================================================== -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.form {
	width: 1080px;
	margin: 0 auto;
}

.rb {
	width: 15px !important;
	height: 15px;
}

.t1 {
	width: 600px;
}

tb1 {
	width: 1080px;
}

.in {
	width: 480px !important;
	border-radius: 5px;
	height: 40px;
	background-color: white;
}

th {
	text-align: left;
}

.btn {
	width: 150px;
}

.mes {
	color: skyblue;
	font-size: italic !important;
}
</style>
</head>
<body onload="time()">
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
					<li class="active"><a href="QuanLy/qlnv.htm"
						data-toggle="tooltip" data-placement="bottom"
						title="QUẢN LÝ NHÂN VIÊN">NHÂN VIÊN</a></li>
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
					<li><a data-toggle="tooltip"
						data-placement="bottom" title=""><b>${sessionScope.fullname}</b> <span
							class="caret"></span> </a>
						<ul class="dropdown">
							<li><a
								href="log/doimatkhau.htm"
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
	<div class="container-fluid al">
		<div class="form">
			<form:form action="QuanLy/qlnv.htm" modelAttribute="staff">
				<table class="tb1">
					<tr>
						<th class="t1">Mã nhân viên</th>
						<th>Số điện thoại</th>
					</tr>
					<tr>
						<td><form:input path="id" cssClass="in" /></td>
						<td><form:input path="phone" cssClass="in" /></td>
					</tr>
					<tr>
						<th class="t1">Tên nhân viên</th>
						<th>Lương</th>
					</tr>
					<tr>
						<td><form:input path="name" cssClass="in" /></td>
						<td><form:input path="salary" cssClass="in" /></td>
					</tr>
					<tr>
						<th class="t1">Giới tính</th>
						<th>Cấp độ</th>
					</tr>
					<tr>
						<td><form:radiobutton path="gender" value="true" label="Nam"
								cssClass="rb" /> <form:radiobutton path="gender" value="false"
								label="Nữ" cssClass="rb" /></td>
						<%-- 						<td><form:input path="lever" cssClass="in" /></td> --%>
						<td><form:select path="lever" cssClass="in">
								<form:option value="1">1</form:option>
								<form:option value="2">2</form:option>
								<form:option value="3">3</form:option>
								<form:option value="4">4</form:option>
								<form:option value="5">5</form:option>
								<form:option value="6">6</form:option>
								<form:option value="7">7</form:option>
								<form:option value="8">8</form:option>
								<form:option value="9">9</form:option>
								<form:option value="10">10</form:option>
							</form:select></td>
					</tr>
					<tr>
						<th class="t1">Ngày sinh</th>
						<th>Ghi chú</th>
					</tr>
					<tr>
						<td><form:input path="birthday" cssClass="in" /></td>
						<td><form:input path="notes" cssClass="in" /></td>
					</tr>
					<tr>
						<th class="t1">Email</th>
						<th>Phòng</th>
					</tr>
					<tr>
						<td><form:input path="email" cssClass="in" /></td>
						<td><form:select path="depart.id" cssClass="in"
								items="${departs}" itemValue="id" itemLabel="name" /></td>
					</tr>
				</table>
				<div class="form text-center">
					<button name="btnInsert" class="btn btn-default" onclick="validate()">Thêm mới</button>
					<button name="btnUpdate" class="btn btn-default" onclick="validate1()">Cập nhật</button>
					<button name="btnDelete" class="btn btn-default" onclick="validate2()">Xóa</button>
					<button name="btnReset" class="btn btn-default">Làm mới</button>
				</div>
				<b class="mes">${message}</b>
			</form:form>
		</div>
		<div id="clock"></div>
		<Br>
		<p class="timkiemnhanvien">
			<b>TÌM KIẾM NHÂN VIÊN:</b>
		</p>
		<input type="text" id="myInput" onkeyup="myFunction()"
			placeholder="Nhập mã nhân viên cần tìm..." data-toggle="tooltip"
			data-placement="bottom" title="Tìm Kiếm Nhân Viên"><br>
		<i class="fa fa-search" aria-hidden="true"></i>
		<table class="table table-bordered" id="myTable">
			<thead>
				<tr class="ex">
					<th width="auto">Mã Nhân Viên</th>
					<th width="auto">Tên Nhân Viên</th>
					<th width="auto">Giới Tính</th>
					<th width="auto">Ngày Sinh</th>
					<th width="200px">Email</th>
					<th width="auto">Số điện thoại</th>
					<th width="auto">Lương</th>
					<th width="auto">Cấp độ</th>
					<th width="auto">Ghi chú</th>
					<th width="auto">Phòng</th>
					<th width="auto"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${staffs}">
					<tr>
						<td>${a.id}</td>
						<td>${a.name}</td>
						<td>${a.gender?'Nam':'Nữ'}</td>
						<td>${a.birthday}</td>
						<td>${a.email}</td>
						<td>${a.phone}</td>
						<td>${a.salary}$</td>
						<td>${a.lever}</td>
						<td>${a.notes}</td>
						<td>${a.depart.name}</td>
						<td><a href="QuanLy/qlnv/${a.id}.htm">Sửa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script src="<%=request.getContextPath()%>/jquery.min.js"></script>
	<script type="text/javascript">
		function validate() {
			var name = document.getElementById("name").value;
			var sdt = document.getElementById("phone").value;
			var luong = document.getElementById("salary").value;
			if (name == "") {
				alert("Vui lòng nhập tên nhân viên !");
				return false;
			} if (sdt == "") {
				alert("Vui lòng nhập số điện thoại !");
				return false;
			} if (isNaN(sdt)) {
				alert("Không đúng định dạng số điện thoại !");
				return false;
			} if (sdt.length !== 10) {
				alert("Số điện thoại phải đủ 10 ký tự !");
				return false;
			} if (luong.length == 0) {
				alert("Vui lòng nhập lương !")
			}
			else{
				alert("Thêm mới thành công !")
				return true;
			}
		}
		
		function validate1() {
			var id = document.getElementById("id").value;
			var name = document.getElementById("name").value;
			var sdt = document.getElementById("phone").value;
			var luong = document.getElementById("salary").value;
			if (id == "") {
				alert("Vui lòng nhập mã nhân viên !");
				return false;
			} if (isNaN(id)) {
				alert("Mã nhân viên phải là số !");
				return false;
			} if (name == "") {
				alert("Vui lòng nhập tên nhân viên !");
				return false;
			} if (sdt == "") {
				alert("Vui lòng nhập số điện thoại !");
				return false;
			} if (isNaN(sdt)) {
				alert("Số điện thoại phải là số !");
				return false;
			} if (sdt.length !== 10) {
				alert("Số điện thoại phải đủ 10 ký tự !");
				return false;
			} if (luong.length == 0) {
				alert("Vui lòng nhập lương !")
			}
			else{
				alert("Cập nhật thành công !")
				return true;
			}
		}
		
		function validate2() {
			var id = document.getElementById("id").value;
			if (id == "") {
				alert("Vui lòng nhập mã nhân viên !");
				return false;
			} if (isNaN(id)) {
				alert("Mã nhân viên phải là số !");
				return false;
			}
			else{
				alert("Xóa thành công !")
				return true;
			}
		}
		//Lọc Dữ Liệu
		function myFunction() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}

		//Thời Gian
		function time() {
			var today = new Date();
			var weekday = new Array(7);
			weekday[0] = "Chủ Nhật";
			weekday[1] = "Thứ Hai";
			weekday[2] = "Thứ Ba";
			weekday[3] = "Thứ Tư";
			weekday[4] = "Thứ Năm";
			weekday[5] = "Thứ Sáu";
			weekday[6] = "Thứ Bảy";
			var day = weekday[today.getDay()];
			var dd = today.getDate();
			var mm = today.getMonth() + 1;
			var yyyy = today.getFullYear();
			var h = today.getHours();
			var m = today.getMinutes();
			var s = today.getSeconds();
			m = checkTime(m);
			s = checkTime(s);
			nowTime = h + ":" + m + ":" + s;
			if (dd < 10) {
				dd = '0' + dd
			}
			if (mm < 10) {
				mm = '0' + mm
			}
			today = day + ', ' + dd + '/' + mm + '/' + yyyy;
			tmp = '<i class="fa fa-clock-o" aria-hidden="true"></i> <span class="date">'
					+ today + ' | ' + nowTime + '</span>';
			document.getElementById("clock").innerHTML = tmp;
			clocktime = setTimeout("time()", "1000", "Javascript");

			function checkTime(i) {
				if (i < 10) {
					i = "0" + i;
				}
				return i;
			}
		}
	</script>
</body>
</html>