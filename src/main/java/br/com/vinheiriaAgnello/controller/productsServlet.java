package br.com.vinheiriaAgnello.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import br.com.vinheiriaAgnello.classes.Product;
import br.com.vinheiriaAgnello.classes.Products;

/**
 * Servlet implementation class productsServlet
 */
@WebServlet("/products")
public class productsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product [] products = {
        		new Product("Concha Y Toro Reservado", "./assets/images/concha.webp", "Chileno", "25,00"),
        		new Product("Casillero del Diablo", "./assets/images/casillero.jpg", "Chileno", "40,00"),
        		new Product("Pata Negra", "./assets/images/pata-negra.png", "Espanhol", "45,00"),
        		new Product("Concha Y Toro Reservado", "./assets/images/concha.webp", "Chileno", "25,00")
        };

        
        request.setAttribute("products", products);

        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/products.jsp");
        dispatcher.forward(request, response);
    }
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String title = request.getParameter("title");
	    String image = request.getParameter("image");
	    String tag = request.getParameter("tag");
	    String price = request.getParameter("price");
	    
		Product productSelected = new Product(title, image, tag, price);
		
		request.setAttribute("productSelected", productSelected);
		
		request.getRequestDispatcher("/cart.jsp").forward(request, response);
	}
	
}
