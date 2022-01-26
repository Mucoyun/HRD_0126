<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 실습 21</title>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%@ include file="/header.jsp" %>
	<%@ include file="/nav.jsp" %>
	<section>
		<h2>회원매출조회</h2>
		<table id="s_table">
			<tr>
				<th width="100">회원번호</th>
				<th width="100">회원성명</th>				
				<th width="100">고객등급</th>
				<th width="100">매출</th>
			</tr>
			<%
			try{
				String sql = "select b.custno,a.custname,a.grade,sum(b.price) from member0126 a,money0126 b where a.custno=b.custno group by b.custno,a.custname,a.grade order by sum(b.price) desc";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					String custno = rs.getString(1);
					String custname = rs.getString(2);
					String grade = rs.getString(3);
					String price = rs.getString(4);
					
					if(grade.endsWith("A")){ grade="VIP"; }
					else if(grade.endsWith("B")){ grade="일반"; }
					else if(grade.endsWith("C")){ grade="직원"; }
					%>
					
					<tr>
						<td><%=custno %></td>
						<td><%=custname %></td>
						<td><%=grade %></td>
						<td><%=price %></td>
					</tr>
					<%
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			%>
		</table>
	</section>
	<%@ include file="/footer.jsp" %>
</body>
</html>