<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image" href="./assets/images/logo.png" />
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="final-cart.css">
    <title>Agnello</title>
</head>
<body>
	<jsp:include page="components/header/header.jsp"></jsp:include>
	<jsp:useBean id="productSelected" scope="request" type="br.com.vinheiriaAgnello.classes.ProductAndQuantity" />
	
	
    <main>
    	<div class="product-summary">
	    <h2>Resumo do Pedido</h2>
	
	    <img src="${productSelected.product.image}" alt="Produto: ${productSelected.product.title}" />
	    
	    <p><strong>Produto:</strong> ${productSelected.product.title}</p>
	    <p><strong>Tag:</strong> ${productSelected.product.tag}</p>
	    <p><strong>Preço Unitário:</strong> R$ ${productSelected.product.price}</p>
	    <p><strong>Quantidade:</strong> ${productSelected.quantity}</p>
	
	    <%
	        try {
	            String rawPrice = productSelected.getProduct().getPrice().replace("R$", "").replace(",", ".").trim();
	            double unitPrice = Double.parseDouble(rawPrice);
	            int qty = Integer.parseInt(productSelected.getQuantity().trim());
	            double total = unitPrice * qty;

	    %>
	        <p><strong>Total:</strong> R$ <%= String.format("%.2f", total) %></p>
	    <%
	        } catch (Exception e) {
	            out.println("<p style='color:red;'>Erro ao calcular total.</p>");
	        }
	    %>
		</div>
    </main>
    
    <footer>
   	  <jsp:include page="components/footer/footer.jsp"></jsp:include>
    </footer>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>