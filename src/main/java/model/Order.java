package model;



public class Order {
	private int orderID;
	private String username;
	private double orderTotal;
	
	public int getOrderID() {
		return orderID;
	}
	
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	public double getOrderTotal() {
		return orderTotal;
	}
	
	public void setOrderTotal(double orderTotal) {
		this.orderTotal = orderTotal;
	}
}
