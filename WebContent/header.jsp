<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 실습 21</title>
	<style>
		*{
			margin: 0; padding: 0;
		}html,body{
			width: 100%; height: 100%;
		}a{
			text-decoration: none;
		}table{
			border: 3px solid black;
			margin: 0 auto;
			border-collapse: collapse;
		}tr,td,th{
			border: 1px solid black;
		}th{
			background-color: #EEEEEE;
		}td{
			background-color: #AAAAAA;
		}
		
		
		header{
			width: 100%; height: 8%;
			color: white; background-color: blue;
			text-align: center; display: table;
		}header > h1{
			display: table-cell;
			vertical-align: middle;
		}
		
		nav{
			width: 100%; height: 5%;
			color: white; background-color: purple;
			text-align: left; display: table;
		}nav > ul{
			display: table-cell;
			vertical-align: middle;
			list-style: none;
		}nav > ul li{
			display: inline-block;
			padding: 0 20px;
		}nav > ul li > a{
			color: white;
			font-weight: bold;
		}nav > ul li > a:HOVER {
			color: red;
			font-weight: bold;
		}
		
		section{
			width: 100%; height: 80%;
			color: black; background-color: white;
		}section > h2{
			text-align: center;
			padding: 20px 0;
		}section > p{
			padding-left: 40px;
			font-weight: bold;
		}section > ol{
			padding-left: 40px;
		}
		
		footer{
			width: 100%; height: 7%;
			color: white; background-color: blue;
			text-align: center; display: table;
		}footer > h3{
			display: table-cell;
			vertical-align: middle;
		}
	</style>
	<style>
		#iu_table tr{
			height: 30px;
		}#iu_table th{
			width: 300px;
		}#iu_table td{
			width: 400px;
		}#iu_table input[type="text"]{
			height: 25px;
			width: 200px;
		}
		#btntd{
			text-align: center;
		}#btntd button{
			height: 25px;
			width: 100px;
		}
	</style>
	<style>
		#s_table tr{
			height: 20px;
		}#s_table td{
			text-align: center;
		}#s_table a{
			color: white;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<header>
		<h1>쇼핑몰 회원관리 ver 1.0</h1>
	</header>
</body>
</html>