<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="author" content="Bin-It">
<meta property="og:url" />
<meta property="og:type" content="truongbinit" />
<meta property="og:title" content="Website TruongBin" />
<meta property="og:description" content="Wellcome to my Website" />

<title>Quản Lý Nhân Viên</title>

		<!-- Link Bootstrap Css -->
		
<link rel="stylesheet" href="styleas.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">

		<!-- Style -->
<style type="text/css">
body{
 background: linear-gradient(120deg,#82add4,#fbc531);
  }

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
	background: rgba(255,255,255,0.5);
}

.in {
	width: 480px !important;
	border-radius: 5px;
	height: 40px;
	background-color: white;
}

th {
	text-align: left;
	font-size: 18px;
}

.btn {
	width: 150px;
	font-size: 16px;
}

.mes {
	color: skyblue;
	font-size: italic !important;
}
#myTable{
font-size: 14px;
}
.font13px{
font-size: 13px;
}

</style>
</head>
<body onload="time()">
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<i class="fas fa-bars"></i>
				</button>
				<a class="navbar-brand" href="#"><i class="fa fa-user-circle" aria-hidden="true"></i> QUẢN LÝ NHÂN VIÊN</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
					<li class="active"><a class="font13px" href="QuanLy/qlnv.htm" data-toggle="tooltip" data-placement="bottom" title="QUẢN LÝ NHÂN VIÊN">NHÂN VIÊN</a></li>
					<li><a class="font13px" href="QuanLy/qlqb.htm" data-toggle="tooltip" data-placement="bottom" title="QUẢN LÝ PHÒNG BAN">PHÒNG BAN</a></li>
					<li><a class="font13px" href="Thanhtichkyluat/thanhtich-kyluat.htm" data-toggle="tooltip" data-placement="bottom" title="THÀNH TÍCH & KỶ LUẬT">THÀNH TÍCH & KỶ LUẬT</a></li>
					
				<li>
					<a class="font13px" href="Thanhtichkyluat/tonghop.htm" data-toggle="tooltip" data-placement="bottom" title=""><b>TỔNG HỢP</b> <span class="caret"></span> </a>
					<ul class="dropdown">
						<li>
							<a href="Thanhtichkyluat/tonghop.htm" data-toggle="tooltip" data-placement="bottom" title="TỔNG HỢP NHÂN VIÊN"><b>TỔNG HỢP NHÂN VIÊN </b></a>
						</li>
							<li>
							<a href="Thanhtichkyluat/tonghop.htm" data-toggle="tooltip" data-placement="bottom" title="TỔNG HỢP PHÒNG BAN"><b>TỔNG HỢP PHÒNG BAN </b></a></li>
					</ul>
				</li>
				<li>
				<a class="font13px" data-toggle="tooltip"  data-placement="bottom" title=""><b>${sessionScope.fullname}</b> <span class="caret"></span> </a>
					<ul class="dropdown">
						<li>
							<a href="log/doimatkhau.htm" data-toggle="tooltip" data-placement="bottom" title="ĐĂNG XUẤT"><b>Đổi mật khẩu <i class="fas fa-sign-out-alt"></i> </b></a>
						</li>
							<li><a href="${pageContext.request.contextPath}/index.jsp" data-toggle="tooltip" data-placement="bottom" title="ĐĂNG XUẤT"><b>Đăng xuất <i class="fas fa-sign-out-alt"></i></b></a>
							</li>
						</ul></li>
				</ul>
			</div>
	</div>
</nav>
<div class="container al" id="container" >
  	<div class="brightness-box">
        <i class="far fa-sun"></i>
        <input type="range" id="range" min="10" max="100" value="100">
        <i class="fas fa-sun"></i>
     </div>
   <div class="form">
	   <form:form action="QuanLy/qlnv.htm" modelAttribute="staff">
			<table class="tb1">
					<tr>
						<th class="t1">Mã nhân viên</th>
						<th>Số điện thoại</th>
					</tr>
					
					<tr>
						<td><form:input path="id" cssClass="in" placeholder="Điền tự động.."/></td>
						<td><form:errors  path="phone"></form:errors><form:input path="phone" cssClass="in" placeholder="Nhập số điện thoại.."/></td>
					</tr>
					
					<tr>
						<th class="t1">Tên nhân viên</th>
						<th>Lương</th>
					</tr>
					
					<tr>
						<td><form:errors  path="name"></form:errors><form:input path="name" cssClass="in" placeholder="Nhập tên nhân viên.."/></td>
						<td><form:errors  path="salary"></form:errors><form:input path="salary" cssClass="in" placeholder="Nhập số lương .."/></td>
					</tr>
					
					<tr>
						<th class="t1">Giới tính</th>
						<th>Cấp độ</th>
					</tr>
					
					<tr>
						<td><form:radiobutton path="gender" value="true" label="Nam"
								cssClass="rb" /> <form:radiobutton path="gender" value="false"
								label="Nữ" cssClass="rb" /></td>						
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
						<td><form:errors  path="birthday"></form:errors><form:input path="birthday" cssClass="in" placeholder="Ngày/Tháng/Năm.."/></td>
						<td><form:input path="notes" cssClass="in" placeholder="Nhập ghi chú.."/></td>
					</tr>
					
					<tr>
						<th class="t1">Email</th>
						<th>Phòng</th>
					</tr>
					
					<tr>
						<td><form:errors  path="email"></form:errors><form:input path="" cssClass="in" placeholder="Nhập email (@gmail.com).."/></td>
						<td><form:select path="depart.id" cssClass="in" items="${departs}" itemValue="id" itemLabel="name" /></td>
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
   <hr class="my-2">
   <div id="clock"></div><Br>	
	 <p class="timkiemnhanvien">
			<b>TÌM KIẾM NHÂN VIÊN:</b>
	 </p>
		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Nhập tên nhân viên cần tìm..." data-toggle="tooltip" data-placement="bottom" title="Tìm Kiếm Nhân Viên"><br>
		<i class="fa fa-search" aria-hidden="true"></i>
		<table class="table table-bordered table-hover table-condensed" id="myTable">
			<thead>
				<tr class="ex">
				
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
					
						<td>${a.name}</td>
						<td style="text-align: center;">${a.gender?'Nam':'Nữ'}</td>
						<td style="text-align: center;">${a.birthday}</td>
						<td>${a.email}</td>
						<td style="text-align: center;">${a.phone}</td>
						<td>${a.salary}$</td>
						<td style="text-align: center;">${a.lever}</td>
						<td>${a.notes}</td>
						<td>${a.depart.name}</td>
						<td><a href="QuanLy/qlnv/${a.id}.htm">Sửa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
<!-- JavaScrpit -->	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
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
			var ngay = document.getElementById("birthday").value;
			var email = document.getElementById("email").value;
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
			if (ngay.length == 0) {
				alert("Vui lòng nhập Ngày/Tháng/Năm !")
			}
			if (email.length == 0) {
				alert("Vui lòng nhập Email !")
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
				td = tr[i].getElementsByTagName("td")[1];
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
 <script type="text/javascript">
      rangeInput = document.getElementById('range');
      container = document.getElementsByClassName('container')[0];

      rangeInput.addEventListener("change",function(){
        container.style.filter = "brightness(" + rangeInput.value + "%)";
      });
    </script>
</body>
</html>