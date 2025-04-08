package br.com.vinheiriaAgnello.classes;

public class ProductAndQuantity {
	private Product product;
    private String quantity;

    public ProductAndQuantity(Product product, String quantity) {
        this.product = product;
        this.quantity = quantity;
    }

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
    
}
