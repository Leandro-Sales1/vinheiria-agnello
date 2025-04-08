<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image" href="./assets/images/logo.png" />
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="cart.css">
    <title>Agnello</title>
</head>
<body>
	<jsp:include page="components/header/header.jsp"></jsp:include>
	
    <main>
    	
		<div class="product-container">
	        <div class="product-image">
	            <img src="${productSelected.image}" alt="${productSelected.title} image">
	        </div>
	        <div class="product-details">
	            <h1>${productSelected.title}</h1>
	            <h2 class="price">R$ ${productSelected.price}</h2>
	            
	            <!-- Star rating -->
	            <div class="stars">
	                <span>★ ★ ★ ★ ☆</span> <!-- You can generate dynamically if needed -->
	            </div>
	            
	            <p class="description">${productSelected.tag}</p>

	            <!-- Add to Cart -->
	            <form action="finalCart" method="post">
	            
	            	<!-- Quantity selector -->
		            <div class="quantityControl">
						<button type="button" onclick="decrease()">-</button>
		        		<input type="text" id="quantity" name="quantity" value="1" readonly>
		       			<button type="button" onclick="increase()">+</button>
		            </div>
	            
	            
	                <!-- Hidden fields to pass product -->
	                <input type="hidden" name="title" value="${productSelected.title}" />
	                <input type="hidden" name="image" value="${productSelected.image}" />
	                <input type="hidden" name="tag" value="${productSelected.tag}" />
	                <input type="hidden" name="price" value="${productSelected.price}" />
	                <button class="" type="submit">Fechar Pedido</button>
	            </form>
	            
	            <script>
				    let quantityInput = document.getElementById("quantity");
				
				    function increase() {
				        quantityInput.value = parseInt(quantityInput.value) + 1;
				    }
				
				    function decrease() {
				        let current = parseInt(quantityInput.value);
				        if (current > 1) {
				            quantityInput.value = current - 1;
				        }
				    }
				</script>
	        </div>
    	</div>
    </main>
    
    <footer>
   	  <jsp:include page="components/footer/footer.jsp"></jsp:include>
    </footer>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>