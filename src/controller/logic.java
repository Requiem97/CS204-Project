package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Graph;

/**
 * Servlet implementation class servlet2
 */
public class logic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public logic() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// start of Dijkstra
		int sa = Integer.parseInt(request.getParameter("sa"));
		int sb = Integer.parseInt(request.getParameter("sb"));
		int ac = Integer.parseInt(request.getParameter("ac"));
		int ad = Integer.parseInt(request.getParameter("ad"));
		int bc = Integer.parseInt(request.getParameter("bc"));
		int bf = Integer.parseInt(request.getParameter("bf"));
		int ce = Integer.parseInt(request.getParameter("ce"));
		int de = Integer.parseInt(request.getParameter("de"));
		int dm = Integer.parseInt(request.getParameter("dm"));
		int em = Integer.parseInt(request.getParameter("em"));
		int ef = Integer.parseInt(request.getParameter("ef"));
		int fm = Integer.parseInt(request.getParameter("fm"));

		Graph.Edge[] graph = { new Graph.Edge("s", "a", sa), new Graph.Edge("s", "b", sb), new Graph.Edge("a", "c", ac),
				new Graph.Edge("a", "d", ad), new Graph.Edge("b", "c", bc), new Graph.Edge("b", "f", bf),
				new Graph.Edge("c", "e", ce), new Graph.Edge("d", "e", de), new Graph.Edge("d", "m", dm),
				new Graph.Edge("e", "m", em), new Graph.Edge("e", "f", ef), new Graph.Edge("f", "m", fm), };
		Graph grp = new Graph(graph);
		grp.dijkstra("s");
		String path = grp.printPath("m");
		request.setAttribute("path", path);

		request.getRequestDispatcher("index2-1.jsp").forward(request, response);

	}
}
