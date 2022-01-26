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
		String send_custno = request.getParameter("send_custno");
		String custno = "";
		String custname = "";
		String phone = "";
		String address = "";
		String joindate = "";
		String grade = "";
		String city = "";
		try{
			String sql = "select custno,custname,phone,address,to_char(joindate,'yyyy-mm-dd'),grade,city from member0126 where custno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, send_custno);
			rs = pstmt.executeQuery();
			if(rs.next()){
				custno = rs.getString(1);
				custname = rs.getString(2);
				phone = rs.getString(3);
				address = rs.getString(4);
				joindate = rs.getString(5);
				grade = rs.getString(6);
				city = rs.getString(7);
			}else{
				%><script>
					alert("회원 조회실패");
					history.back(-1);
				</script><%
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
	<section>
		<h2>홈쇼핑 회원 정보 수정</h2>
		<form name="iu_form" method="post" action="member0126_update_process.jsp">
			<table id="iu_table">
				<tr>
					<th>회원번호(자동생성)</th>
					<td><input type="text" name="custno" maxlength="6" value="<%=custno%>" readonly></td>
				</tr>
				<tr>
					<th>회원 성명</th>
					<td><input type="text" name="custname" maxlength="20" value="<%=custname%>"></td>
				</tr>
				<tr>
					<th>회원 전화</th>
					<td><input type="text" name="phone" maxlength="13" value="<%=phone%>"></td>
				</tr>
				<tr>
					<th>회원 주소</th>
					<td><input type="text" name="address" maxlength="60" value="<%=address%>"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate" maxlength="10" value="<%=joindate%>"></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP,B:일반,C:직원]</th>
					<td><input type="text" name="grade" maxlength="1" value="<%=grade%>"></td>
				</tr>
				<tr>
					<th>도서코드</th>
					<td><input type="text" name="city" maxlength="2" value="<%=city%>"></td>
				</tr>
				<tr>
					<td id="btntd" colspan="2">
						<button type="button" onclick="check()">수정</button>
						<button type="button" onclick="menu()">조회</button>
					</td>
				</tr>
			</table>
		</form>
	</section>
	<%@ include file="/footer.jsp" %>
</body>
</html>