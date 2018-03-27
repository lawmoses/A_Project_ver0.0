<%@ page language="java" import="java.sql.*,java.util.*,java.io.*,util.*" contentType="text/html;charset=euc-kr" %> 

<html>
<head>
<title>게시판</title>
</head>
<body>

<iframe name='action' width="0" height="0" frameborder="0" scrolling='yes'></iframe>

<form name="addForm" method="post" target="action" action="/A_Project_ver0.0/notice/notice_add_act.jsp">
<table>
	<tr>
		<td>

			<table>
				<tr>
					<td>공지사항</td>
				</tr>
			</table>

			<table>
				<tr>
					<td>아이디</td>
					<td><input name="user_id" size="50" maxlength="50"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input name="subject" size="50" maxlength="100"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="contents" cols="50" rows="13"></textarea></td>
				</tr>
			</table>

			<table>
				<tr>
					<td><input type="image" src="이미지주소" border="0" alt="저장"></td>
					<td><a href="/A_Project_ver0.0/notice/notice_list.jsp"><img src="이미지주소" border="0" alt="취소"></a></td>
				</tr>
			</table>

		</td>
	</tr>
</table>
</form>

</body>
</html>