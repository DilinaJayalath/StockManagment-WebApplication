package stock.manager;

public abstract class AbstractStockItem implements StockItem {
	private int itemNo;
    private String itemName;
    private String itemCode;
    private int itemQuantity;
    private String itemPhoto;
    private String itemPrice;

    // Constructor
    public AbstractStockItem( int itemNo ,String itemName, String itemCode, int itemQuantity, String itemPhoto , String itemPrice) {
    	this.itemNo = itemNo;
        this.itemName = itemName;
        this.itemCode = itemCode;
        this.itemQuantity = itemQuantity;
        this.itemPhoto = itemPhoto;
        this.itemPrice = itemPrice;
        
    }
    
    public AbstractStockItem( String itemName, String itemCode, int itemQuantity, String itemPrice) {
  
        this.itemName = itemName;
        this.itemCode = itemCode;
        this.itemQuantity = itemQuantity;
        this.itemPrice = itemPrice;
        
    }

    @Override
    public String getItemName() {
        return itemName;
    }

    public int getItemNo() {
		return itemNo;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	@Override
    public String getItemCode() {
        return itemCode;
    }

    @Override
    public int getItemQuantity() {
        return itemQuantity;
    }

    @Override
    public String getItemPhoto() {
        return itemPhoto;
    }

    @Override
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    @Override
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    @Override
    public void setItemQuantity(int itemQuantity) {
        this.itemQuantity = itemQuantity;
    }

    @Override
    public void setItemPhoto(String itemPhoto) {
        this.itemPhoto = itemPhoto;
    }
}
