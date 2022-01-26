<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 실습 21</title>
	<script>
		function check() {
			if(document.iu_form.custname.value==""){
				alert("회원 성명이 입력되지 않았습니다.");
				document.iu_form.custname.focus();
			}else{
				document.iu_form.submit();
			}
		}
		function menu() {
			location.href = "/HRD_0126/member0126/member0126_select.jsp";
		}
	</script>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%@ include file="/header.jsp" %>
	<%@ include file="/nav.jsp" %>
	<%
		int custno = 0;
		try{
			String sql = "select max(custno) from member0126";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				custno = rs.getInt(1);
				custno++;
			}else{
				custno = 100001;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
	<section>
		<h2>홈쇼핑 화면 등록</h2>
		<form name="iu_form" method="post" action="member0126_insert_process.jsp">
			<table id="iu_table">
				<tr>
					<th>회원번호(자동생성)</th>
					<td><input type="text" name="custno" maxlength="6" value="<%=custno%>" readonly></td>
				</tr>
				<tr>
					<th>회원 성명</th>
					<td><input type="text" name="custname" maxlength="20"></td>
				</tr>
				<tr>
					<th>회원 전화</th>
					<td><input type="text" name="phone" maxlength="13"></td>
				</tr>
				<tr>
					<th>회원 주소</th>
					<td><input type="text" name="address" maxlength="60"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate" maxlength="10"></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP,B:일반,C:직원]</th>
					<td><input type="text" name="grade" maxlength="1"></td>
				</tr>
				<tr>
					<th>도서코드</th>
					<td><input type="text" name="city" maxlength="2"></td>
				</tr>
				<tr>
					<td id="btntd" colspan="2">
						<button type="button" onclick="check()">등록</button>
						<button type="button" onclick="menu()">조회</button>
					</td>
				</tr>
			</table>
		</form>
	</section>
	<%@ include file="/footer.jsp" %>
</body>
</html>