<%@ page language="java" import="java.sql.*,java.util.*,java.io.*,util.*" contentType="text/html;charset=euc-kr" %> 

<html>
<head>
<title>�Խ���</title>
</head>
<body>

<iframe name='action' width="0" height="0" frameborder="0" scrolling='yes'></iframe>

<form name="addForm" method="post" target="action" action="/A_Project_ver0.0/notice/notice_add_act.jsp">
<table>
	<tr>
		<td>

			<table>
				<tr>
					<td>��������</td>
				</tr>
			</table>

			<table>
				<tr>
					<td>���̵�</td>
					<td><input name="user_id" size="50" maxlength="50"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input name="subject" size="50" maxlength="100"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><textarea name="contents" cols="50" rows="13"></textarea></td>
				</tr>
			</table>

			<table>
				<tr>
					<td><input type="image" src="�̹����ּ�" border="0" alt="����"></td>
					<td><a href="/A_Project_ver0.0/notice/notice_list.jsp"><img src="�̹����ּ�" border="0" alt="���"></a></td>
				</tr>
			</table>

		</td>
	</tr>
</table>
</form>

</body>
</html>