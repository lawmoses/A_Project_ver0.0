<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<html>
<head>
<title>�Խ���</title>
</head>

<body>
<p class="w3-left" style="padding-left: 30px;">	</p>
<center>
	<div class="w3-container ">
		<b>�ۻ���</b>
		<br>
<!-- ���� : deletePro2 -->
		<form method="POST" name="delForm" 
				action="deletePro2?pageNum=${pageNum}"
				onsubmit="return deleteSave()">
		<table class="table-bordered" width="360">
			<tr height="30">
				<td align=center><b>��й�ȣ�� �Է��� �ּ���.</b></td>	
			</tr>
			<tr height="30">
				<td align=center>��й�ȣ :
					<input type="password" name="passwd" size="8" maxlength="12">
					<input type="hidden" name="num" value="${num}">
				</td>
			</tr>	
			<tr height="30">
				<td align=center><input type="submit" value="�ۻ���">
<!-- ���� : list2 -->
					<input type="button" value="�۸��" 
						onclick="document.location.href='list2?pageNum=${pageNum}'">
				</td>
			</tr>
		</table>
		</form>
		</div>
		</center>
</body></html>