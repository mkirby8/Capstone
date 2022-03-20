package model;

public class ShoppingCart {
	private long cartID;
	private long userID;
	private double cartTotal;
	
	public long getCartID() {
		return cartID;
	}
	
	public void setCartID(long cartID){
		this.cartID = cartID;
	}
	
	public long getUserID() {
		return userID;
	}
	
	public void setUserID(long userID) {
		this.userID = userID;
	}
	
	public double getCartTotal() {
		return cartTotal;
	}
	
	public void setCartTotal(double cartTotal) {
		this.cartTotal = cartTotal;
	}
}
