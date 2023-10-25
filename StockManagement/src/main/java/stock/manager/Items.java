package stock.manager;

public class Items extends AbstractStockItem {
    public Items(int itemNo , String itemName, String itemCode, int itemQuantity, String itemPhoto , String itemPrice) {
        super( itemNo , itemName, itemCode, itemQuantity, itemPhoto, itemPrice);
    }
}
