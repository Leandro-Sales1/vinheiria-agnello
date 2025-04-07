package br.com.vinheiriaAgnello.classes;

public class Products {

	private String title;
    private String image;
    private String tag;
    private String price;

    public Products(String title, String image, String tag, String price) {
        this.title = title;
        this.image = image;
        this.tag =tag;
        this.price = price;
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
}