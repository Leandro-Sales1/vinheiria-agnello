package br.com.vinheiriaAgnello.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import br.com.vinheiriaAgnello.classes.ProductAndQuantity;
import br.com.vinheiriaAgnello.classes.Product;

/**
 * Servlet implementation class middleCartServlet
 */
@WebServlet("/finalCart")
public class finalCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String title = request.getParameter("title");
	    String image = request.getParameter("image");
	    String tag = request.getParameter("tag");
	    String price = request.getParameter("price");
	    String quantity = request.getParameter("quantity");
	    
	    
	    Product product = new Product(title, image, tag, price);
	    ProductAndQuantity productAndQuantitySelected = new ProductAndQuantity(product, quantity);
		
		request.setAttribute("productSelected", productAndQuantitySelected);
		
		request.getRequestDispatcher("/final-cart.jsp").forward(request, response);
	}
	
}
