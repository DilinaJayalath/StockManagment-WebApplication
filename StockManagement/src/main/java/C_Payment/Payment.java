package C_Payment;

public class Payment {

	private int PaymentNo;
	private String CHName;
	private String Address; 
	private int CardNo;
	private int Pincode;
	private Double Amount;
	
	

	public Payment(int PaymentNo, String CHName, String Address, int CardNo, int Pincode, Double Amount) {
		super();
		this.CHName = CHName;
		this.PaymentNo = PaymentNo;
		this.Address = Address;
		this.CardNo = CardNo;
		this.Pincode = Pincode;
		this.Amount = Amount;
	}
	public String getCHName() {
		return CHName;
	}
	public void setCHName(String cHName) {
		CHName = cHName;
	}
	public int getPaymentNo() {
		return PaymentNo;
	}
	public void setPaymentNo(int paymentNo) {
		PaymentNo = paymentNo;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public int getCardNo() {
		return CardNo;
	}
	public void setCardNo(int cardNo) {
		CardNo = cardNo;
	}
	public int getPincode() {
		return Pincode;
	}
	public void setPincode(int pincode) {
		Pincode = pincode;
	}
	public Double getAmount() {
		return Amount;
	}
	public void setAmount(Double amount) {
		Amount = amount;
	}
	

	
}
