<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image" href="./assets/images/logo.png" />
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="index.css">
    <title>Check-out</title>
</head>
<body>
	<jsp:include page="components/header/header.jsp"></jsp:include>
	
	
    <main>
	    <h2>Resumo do Pedido</h2>
	    
	<!-- Verifica se a lista de produtos não está vazia -->
    <c:if test="${not empty products}">
        <div>
            <c:forEach var="product" items="${products}">
                <div class="product-summary">
               
	    <p><strong>Produto:</strong> ${product.title}</p>
	
                </div>
            </c:forEach>
        </div>
    </c:if>

    <c:if test="${empty products}">
        <p>O carrinho está vazio.</p>
    </c:if>
    </main>
    
    <footer>
   	  <jsp:include page="components/footer/footer.jsp"></jsp:include>
    </footer>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>