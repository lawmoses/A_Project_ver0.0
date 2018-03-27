<%@ page language="java" import="java.sql.*,java.util.*,java.io.*,util.*" contentType="text/html;charset=euc-kr" %>

<%!  
	// 오라클 커넥션을 위한 메소드
	Connection DB_Connection() throws ClassNotFoundException, SQLException, Exception 
	{
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";	//	오라클@주소:포트:오라클호스트
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

	String user_id = request.getParameter("user_id");		// form 값에서 넘어온 값들을 받습니다..
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");

	try
	{
		stmt = conn.createStatement();
		query = new StringBuffer();

		String seq = "";

		query.setLength(0);
		query.append("SELECT NOTICE_SEQ.NEXTVAL AS SEQ FROM DUAL");		// 다음 시퀀스 값을 가지고 옵니다..
		rs = stmt.executeQuery(query.toString());
		if (rs.next()) {
			seq = rs.getString("SEQ");		// 그 시퀀스 값을 집어 넣구요..
		}
		rs.close();

		query.setLength(0);
		query.append("INSERT INTO NOTICE ( SEQ, USER_ID, SUBJECT, CONTENTS )")
				.append("VALUES ( '"+seq+"', '"+user_id+"', '"+subject+"', '"+contents+"' )");
						//		그 시퀀스 값을 form에서 넘어온 값들과 함께 넣어줍니다..
		stmt.executeUpdate(query.toString());
		stmt.close();

	} catch( Exception e ) {
		out.println( e.toString() );
	}

	out.println("<SCRIPT>parent.location.href='/notice/notice_list.jsp';</SCRIPT>");
	// 순서대로 진행후 리스트 페이지로 이동합니다.. 에러가 있어도 페이지 이동됩니다..
	// 에러 났을때 이동하지 않게 만들고 싶다면.. try {} catch {} finally { out.println("<SCRIPT>parent.location.href='/notice/notice_list.jsp';</SCRIPT>"); } 넣어주면 됩니다..
%>