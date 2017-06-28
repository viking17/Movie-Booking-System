

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class enterUser
 */
@WebServlet("/enterUser")
public class enterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name").toString();
		String age = request.getParameter("age").toString();
		String email = request.getParameter("email").toString();
		String mobile = request.getParameter("mobile").toString();
		String username = request.getParameter("username").toString();
		String password = request.getParameter("password").toString();
		Statement stmt = null;
		Connection con ;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieBooking?autoReconnect=true&useSSL=false","root","password");
			//String query = "insert into user values("+name+","+age+","+email+","+mobile+");";
			stmt = con.createStatement();
			PreparedStatement st = con.prepareStatement("insert into user (name,age,email,mobile,username,password) values (?,?,?,?,?,?);");
			//now you bind the data to your parameters
			st.setString(1,name );
			st.setString(2,age );
			st.setString(3,email );
			st.setString(4,mobile );
			st.setString(5,username );
			st.setString(6,password );
			//and then you can execute it
			st.executeUpdate();
			//stmt.executeUpdate(query);
			out.println("inserted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("sql connection not done");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			out.println("class driver file");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
		response.sendRedirect("login.jsp");
	}

}
