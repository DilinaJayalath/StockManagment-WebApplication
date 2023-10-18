package stock.manager;

public class Items {
	
	private int itemNo;
	private String itemName;
	private String itemCode;
	private int itemQuantity;
	
	
	public Items(int itemNo, String itemName, String itemCode, int itemQuantity) {
		super();
		this.itemNo = itemNo;
		this.itemName = itemName;
		this.itemCode = itemCode;
		this.itemQuantity = itemQuantity;
		
	}


	public int getItemNo() {
		return itemNo;
	}


	
	public String getItemCode() {
		return itemCode;
	}


	public int getItemQuantity() {
		return itemQuantity;
	}


	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}


	public void setItemName(String itemName) {
		this.itemName = itemName;
	}


	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}


	public void setItemQuantity(int itemQuantity) {
		this.itemQuantity = itemQuantity;
	}


	public String getItemName() {
		return itemName;
	}




	
	

}
