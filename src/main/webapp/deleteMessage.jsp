<%@ page import="java.sql.*" %>
<%
    String DB_URL = "jdbc:mysql://localhost:3306/jfsdexam";
    String DB_USER = "root";
    String DB_PASSWORD = "password"; // Replace with your actual DB password
    String id = request.getParameter("id");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        String query = "DELETE FROM contact_messages WHERE id = ?";
        pstmt = conn.prepareStatement(query);
        pstmt.setString(1, id);

        int rowsDeleted = pstmt.executeUpdate();
        if (rowsDeleted > 0) {
            out.println("<script>alert('Message deleted successfully!'); window.location='viewMessages.jsp';</script>");
        } else {
            out.println("<script>alert('Message not found or unable to delete.'); window.location='viewMessages.jsp';</script>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<script>alert('Error deleting message. Please try again later.'); window.location='viewMessages.jsp';</script>");
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
