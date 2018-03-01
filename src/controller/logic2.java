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
import bean.Items;
import utility.Sort;

/**
 * Servlet implementation class servlet2
 */
public class logic2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public logic2() {
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
		doGet(request, response);
		int length = (Integer) request.getSession(false).getAttribute("items");
		int weight = (Integer) request.getSession(false).getAttribute("weight");
		request.setAttribute("length", length);

		String[] namearr = new String[length];
		int[] weightarr = new int[length];
		int[] benefitarr = new int[length];
		double[] benefittemp = new double[length];
		double[] weighttemp = new double[length];
		double[] valuearr = new double[length];
		Object[] nametempO = new Object[length];
		Object[] valuetempO = new Object[length];
		Object[] weighttempO = new Object[length];
		Object[] benefittempO = new Object[length];
		Object[][] item = new Object[length + 3][length + 3];
		DecimalFormat numberFormat = new DecimalFormat("#.##");

		for (int i = 0; i < length; i++) {
			// getting the inputed values
			namearr[i] = request.getParameter("name" + i);
			weightarr[i] = Integer.parseInt(request.getParameter("weight" + i));
			benefitarr[i] = Integer.parseInt(request.getParameter("benefit" + i));

			// compute for value double / double
			benefittemp[i] = Double.parseDouble(request.getParameter("benefit" + i));
			weighttemp[i] = Double.parseDouble(request.getParameter("weight" + i));
			valuearr[i] = benefittemp[i] / weighttemp[i];
			
			// putting values on array
			item[i][0] = namearr[i];
			item[i][1] = weightarr[i];
			item[i][2] = benefitarr[i];
			item[i][3] = valuearr[i];
		}

		Sort quicky = new Sort();
		quicky.QuickSort(valuearr, 0, length - 1);

		// sorting by column	
		int j = 0, i = 0;
		for (i = 0; j < length;) {
				if (item[i][3].equals(valuearr[j])) {
					request.setAttribute("name" + j, item[i][0]);
					request.setAttribute("weight" + j, item[i][1]);
					request.setAttribute("benefit" + j, item[i][2]);
					request.setAttribute("value" + j, numberFormat.format(item[i][3]));
					nametempO[j] = item[i][0];
					weighttempO[j] = item[i][1];
					benefittempO[j] = item[i][2];
					valuetempO[j] = item[i][3];
					j++;
					i = 0;
				} else {
					i++;
				}
			}
		
		
		
		// fractional knapsack code
		int currentw = 0, weight2 = weight, weighttaken = 0 , stopper =0, checker;
		double x1 = 0;
		double totalbenefit = 0;

		for (int x = 0; x < length; x++) {
			checker = (int) weighttempO[x];
			weighttaken = currentw + (int) weighttempO[x];
			//System.out.println(Arrays.toString(weighttempO));
			//if less than the capcity
			if(checker <= weight2){
				
				if (weighttaken <= weight2) {
					currentw += (int) weighttempO[x];
					totalbenefit += (int) benefittempO[x];
					request.setAttribute("namend" + x, nametempO[x]);
					request.setAttribute("weightend" + x, weighttempO[x]);
					request.setAttribute("totalbenefit", benefittempO[x]);
					//greater than the capacity
			
				} else if (weighttaken > weight2 && stopper ==0){
					x1 = weight2 - currentw;
					//System.out.println(x1);
					totalbenefit += ((double) x1) * (double) valuetempO[x];
					request.setAttribute("weightend" + x, (int) x1);
					request.setAttribute("namend" + x, nametempO[x]);
					request.setAttribute("totalbenefit", numberFormat.format(totalbenefit));
					stopper++;
					//excess baggage
				} else if (stopper == 1){
					x1 =0;
					request.setAttribute("weightend" + x, (int) x1);
					request.setAttribute("namend" + x, nametempO[x]);
				}
			}
			else{
				x1 =0;
				request.setAttribute("weightend" + x, (int) x1);
				request.setAttribute("namend" + x, nametempO[x]);
				request.setAttribute("totalbenefit", numberFormat.format(totalbenefit));
			}
		}

		

		request.getRequestDispatcher("index5.jsp").forward(request, response);

	}
}
