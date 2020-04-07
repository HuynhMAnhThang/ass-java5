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

<title>Thành tích - kỷ luật</title>

		<!-- Link Bootstrap Css -->
				
<link rel="stylesheet" href="styleas.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" >
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"  rel="stylesheet">
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
				<a class="navbar-brand" href="#"><i class="fa fa-user-circle" aria-hidden="true"></i> THÀNH TÍCH & KỶ LUẬT</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
					<li>
						<a  class="font13px" href="QuanLy/qlnv.htm" data-toggle="tooltip" data-placement="bottom" title="QUẢN LÝ NHÂN VIÊN">NHÂN VIÊN</a>
					</li>
					
					<li>
						<a  class="font13px" href="QuanLy/qlqb.htm" data-toggle="tooltip" data-placement="bottom" title="QUẢN LÝ PHÒNG BAN">PHÒNG BAN</a>
					</li>
					
					<li class="active">
						<a  class="font13px" href="Thanhtichkyluat/thanhtich-kyluat.htm" data-toggle="tooltip" data-placement="bottom" title="THÀNH TÍCH & KỶ LUẬT">THÀNH TÍCH & KỶ LUẬT</a>
					</li>
					
					<li>
						<a  class="font13px" href="Thanhtichkyluat/tonghop.htm" data-toggle="tooltip" data-placement="bottom" title=""><b>TỔNG HỢP</b> <span class="caret"></span> </a>
						 <ul class="dropdown">
								<li>
									<a href="Thanhtichkyluat/tonghop.htm" data-toggle="tooltip" data-placement="bottom" title="TỔNG HỢP NHÂN VIÊN"><b>TỔNG HỢP NHÂN VIÊN </b></a>
								</li>
							<li>
									<a href="Thanhtichkyluat/tonghop.htm" data-toggle="tooltip" data-placement="bottom" title="TỔNG HỢP PHÒNG BAN"><b>TỔNG HỢP PHÒNG BAN </b></a>
							</li>
						</ul>
					</li>
				  <li>
						<a  class="font13px" data-toggle="tooltip" data-placement="bottom" title=""><b>${sessionScope.fullname}</b> <span class="caret"></span> </a>
							<ul class="dropdown">
								<li>
									<a href="log/doimatkhau.htm" data-toggle="tooltip" data-placement="bottom" title="ĐỔI MẬT KHẨU"><b>Đổi mật khẩu <i class="fas fa-sign-out-alt"></i> </b></a>
								</li>
								
								<li>
								<a href="home/index.htm" data-toggle="tooltip" data-placement="bottom" title="ĐĂNG XUẤT"><b>Đăng xuất <i class="fas fa-sign-out-alt"></i> </b></a>
								</li>
						</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>

<div class="container al"  id="container">
     <div class="brightness-box">
        <i class="far fa-sun"></i>
        <input type="range" id="range" min="10" max="100" value="100">
        <i class="fas fa-sun"></i>
     </div>
	<div class="form">
		<form:form action="Thanhtichkyluat/thanhtich-kyluat.htm" modelAttribute="record">
			<table class="tb1">
					<tr>
						<th>Mã Nhân viên</th>
						<th>Ngày lập</th>
					</tr>
					<tr>
						<td><form:select path="staff.id" cssClass="in" items="${staffs}" itemValue="id" itemLabel="name" /></td>
						<td><form:errors  path="date"></form:errors><form:input path="date" cssClass="in" placeholder="Ngày/Tháng/Năm.."/></td>
					</tr>
					<tr>
						<th class="t1">Lý do</th>
						<th class="t1">Loại</th>
						
					</tr>
					<tr>
						<td><form:errors  path="reason"></form:errors><form:input path="reason" cssClass="in" placeholder="Nhập lý do.."/></td>
						<td>
						<form:errors  path="type"></form:errors>
						<form:radiobutton path="type" value="true" label="Thành tích" cssClass="rb" /> 
						<form:radiobutton path="type" value="false"  label="Kỷ luật" cssClass="rb" />
					</td>
					
					</tr>
				
					<tr>
							<td><form:input type="hidden" path="id" cssClass="in" /></td>
					</tr>
					
			</table>
			
			<div class="form text-center">
					<button name="btnInsert" class="btn btn-default" onclick="validate()">Thêm mới</button>
					<button name="btnUpdate" class="btn btn-default" onclick="validate1()">Cập nhật</button>
					<button name="btnDelete" class="btn btn-default" onclick="validate2()">Xóa</button>
					<button name="btnReset" class="btn btn-default">Làm mới</button>
			</div>
			${message}		
	  </form:form>
	</div>
	<hr class="my-2">
	<div id="clock"></div> <Br>
		<p class="timkiemnhanvien">
			<b>TÌM KIẾM PHÒNG BAN:</b>
		</p>
		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Nhập tên nhân viên cần tìm..." data-toggle="tooltip" data-placement="bottom" title="Tìm Kiếm Nhân Viên"><br>
			 <i class="fa fa-search" aria-hidden="true"></i>
		<table class="table table-bordered table-hover table-condensed" id="myTable">
			<thead>
				<tr class="ex">
					<th width="auto">Tên Nhân Viên</th>
					<th width="auto">Loại</th>
					<th width="auto">Lý Do</th>
					<th width="auto">Ngày lập</th>
					<th width="auto"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${records}">
					<tr>
						<td>${a.staff.name}</td>
						<td>${a.type?'Thành tích':'Kỷ luật'}</td>
						<td>${a.reason}</td>
						<td  style="text-align: center;">${a.date}</td>
						<td><a href="Thanhtichkyluat/thanhtich-kyluat/${a.id}.htm"><i class="fa fa-edit"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>

<!-- JavaScript -->
<script src="<%=request.getContextPath()%>/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
<script type="text/javascript">
	function validate() {
		var type = document.getElementById("type");
		var reason = document.getElementById("reason").value;
		var date = document.getElementById("date").value;
		if (!type[0].checked && !type[1].checked) {
			alert("Vui lòng chọn một loại !");
			return false;
		}
		if (reason == "") {
			alert("Vui lòng nhập lý do !");
		}
		if (date = "") {
			alert("Vui lòng nhập ngày tạo !");
		}
		else{
			alert("Thêm thành tích - kỷ luật thành công !")
			return true;
		}
	}
	
	function validate() {
		var id = document.getElementById("id");
		var type = document.getElementById("type");
		var reason = document.getElementById("reason").value;
		var date = document.getElementById("date").value;
		if (id == "") {
			alert("Vui lòng nhập mã thành tích - kỷ luật !");
			return false;
		} if (isNaN(id)) {
			alert("Mã thành tích - kỷ luật phải là số !");
			return false;
		} if (!type[0].checked && !type[1].checked) {
			alert("Vui lòng chọn một loại !");
			return false;
		}
		if (reason == "") {
			alert("Vui lòng nhập lý do !");
		}
		if (date = "") {
			alert("Vui lòng nhập ngày tạo !");
		}
		else{
			alert("Cập nhật thành tích - kỷ luật thành công !")
			return true;
		}
	}
	
	function validate2() {
		var id = document.getElementById("id");
		if (id == "") {
			alert("Vui lòng nhập mã thành tích - kỷ luật !");
			return false;
		} if (isNaN(id)) {
			alert("Mã thành tích - kỷ luật phải là số !");
			return false;
		}
		else{
			alert("Xóa thành tích - kỷ luật thành công !")
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
	 <script type="text/javascript">
      rangeInput = document.getElementById('range');
      container = document.getElementsByClassName('container')[0];

      rangeInput.addEventListener("change",function(){
        container.style.filter = "brightness(" + rangeInput.value + "%)";
      });
    </script>

</body>
</html>