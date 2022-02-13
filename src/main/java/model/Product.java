package model;

public class Product {
	private long productID;
	private String productName;
	private String size;
	private String category;
	private double price;
	private String description;
	
	public long getProductID() {
		return productID;
	}
	
	public void setProductID(long productID) {
		this.productID = productID;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getSize() {
		return size;
	}
	
	public void setSise(String size) {
		this.size = size;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
}
