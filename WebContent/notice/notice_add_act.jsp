<%@ page language="java" import="java.sql.*,java.util.*,java.io.*,util.*" contentType="text/html;charset=euc-kr" %>

<%!  
	// ����Ŭ Ŀ�ؼ��� ���� �޼ҵ�
	Connection DB_Connection() throws ClassNotFoundException, SQLException, Exception 
	{
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";	//	����Ŭ@�ּ�:��Ʈ:����Ŭȣ��Ʈ
		String username = "scott";
		String userpass = "tiger";
		Class.forName( "oracle.jdbc.driver.OracleDriver" );
		Connection conn = DriverManager.getConnection( url, username, userpass );
		return conn;
	}
%>

<%
	Connection conn = DB_Connection();
	Statement stmt = null;
	ResultSet rs = null;
	StringBuffer query = null;

	String user_id = request.getParameter("user_id");		// form ������ �Ѿ�� ������ �޽��ϴ�..
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");

	try
	{
		stmt = conn.createStatement();
		query = new StringBuffer();

		String seq = "";

		query.setLength(0);
		query.append("SELECT NOTICE_SEQ.NEXTVAL AS SEQ FROM DUAL");		// ���� ������ ���� ������ �ɴϴ�..
		rs = stmt.executeQuery(query.toString());
		if (rs.next()) {
			seq = rs.getString("SEQ");		// �� ������ ���� ���� �ֱ���..
		}
		rs.close();

		query.setLength(0);
		query.append("INSERT INTO NOTICE ( SEQ, USER_ID, SUBJECT, CONTENTS )")
				.append("VALUES ( '"+seq+"', '"+user_id+"', '"+subject+"', '"+contents+"' )");
						//		�� ������ ���� form���� �Ѿ�� ����� �Բ� �־��ݴϴ�..
		stmt.executeUpdate(query.toString());
		stmt.close();

	} catch( Exception e ) {
		out.println( e.toString() );
	}

	out.println("<SCRIPT>parent.location.href='/notice/notice_list.jsp';</SCRIPT>");
	// ������� ������ ����Ʈ �������� �̵��մϴ�.. ������ �־ ������ �̵��˴ϴ�..
	// ���� ������ �̵����� �ʰ� ����� �ʹٸ�.. try {} catch {} finally { out.println("<SCRIPT>parent.location.href='/notice/notice_list.jsp';</SCRIPT>"); } �־��ָ� �˴ϴ�..
%>