package customer;

public class Customer {

	private int id;
	private String Name;
	private String Email;
	private String Phone;
	private String User_Name;
	private String Password;
	
	public Customer(int id, String name, String email, String phone, String un, String passw) {

		this.id = id;
		Name = name;
		Email = email;
		Phone = phone;
		User_Name = un;
		Password = passw;
	}

	public int getId() {
		return id;
	}


	public String getName() {
		return Name;
	}


	public String getEmail() {
		return Email;
	}


	public String getUser_Name() {
		return User_Name;
	}


	public String getPassword() {
		return Password;
	}


	
	
}
