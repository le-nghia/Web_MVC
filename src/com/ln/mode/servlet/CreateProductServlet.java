package com.ln.mode.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ln.mode.beans.Students;
import com.ln.mode.util.DBUtil;
import com.ln.mode.util.MyUtils;



/**
 * Servlet implementation class CreateProductServlet
 */
@WebServlet("/createProduct")
public class CreateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public CreateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/createProductView.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Connection conn = MyUtils.getStoredConnection(request);
		 
	        String id = (String) request.getParameter("id");
	        String name = (String) request.getParameter("name");
	        String gender = (String) request.getParameter("gender");
	        String birthday = request.getParameter("birthday");
	        String address = (String) request.getParameter("address");
	       
	       
	       
			Students student = new Students(id, name, gender,birthday,address);
	 
	        String errorString = null;
	 
	        // M?? s???n ph???m ph???i l?? chu???i ch??? [a-zA-Z_0-9]
	        // C?? ??t nh???t m???t k?? t???.
	        String regex = "\\w+";
	 
	        if (id == null || !id.matches(regex)) {
	            errorString = "M?? ID kh??ng h???p l???!\r\n";
	        }
	 
	        if (errorString == null) {
	            try {
	                DBUtil.insertProduct(conn, student);
	            } catch (SQLException e) {
	                e.printStackTrace();
	                errorString = e.getMessage();
	            }
	        }
	 
	        // L??u th??ng tin v??o request attribute tr?????c khi forward sang views.
	        request.setAttribute("errorString", errorString);
	        request.setAttribute("student", student);
	 
	        // N???u c?? l???i forward (chuy???n ti???p) sang trang 'edit'.
	        if (errorString != null) {
	            RequestDispatcher dispatcher = request.getServletContext()
	                    .getRequestDispatcher("/WEB-INF/views/createProductView.jsp");
	            dispatcher.forward(request, response);
	        }
	        // N???u m???i th??? t???t ?????p.
	        // Redirect (chuy???n h?????ng) sang trang danh s??ch s???n ph???m.
	        else {
	            response.sendRedirect(request.getContextPath() + "/productList");
	        }
	    }
	}

