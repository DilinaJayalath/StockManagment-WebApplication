package stock.manager;

public interface StockItem {
	int getItemNo();
	String getItemName();
    String getItemCode();
    int getItemQuantity();
    String getItemPhoto();

    void setItemNo(int itemNo);
    void setItemName(String itemName);
    void setItemCode(String itemCode);
    void setItemQuantity(int itemQuantity);
    void setItemPhoto(String itemPhoto);

}
