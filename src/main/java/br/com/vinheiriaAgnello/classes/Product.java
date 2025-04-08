package br.com.vinheiriaAgnello.classes;

public class Product {

	private String title;
    private String image;
    private String tag;
    private String price;
    private String id;
    

    public Product(String title, String image, String tag, String price, String id) {
        this.title = title;
        this.image = image;
        this.tag =tag;
        this.price = price;
        this.id = id;
    }

    public String gettitle() {
        return title;
    }

    public String getimage() {
        return image;
    }

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}