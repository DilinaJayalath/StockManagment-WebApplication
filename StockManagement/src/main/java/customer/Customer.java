package customer;

public class Customer {

	private int id;
	private String Name;
	private String Email;
	private String Phone;
	private String User_Name;
	private String Password;
	private String type;
	
	public Customer(int id, String name, String email, String phone, String un, String passw , String type) {

		this.id = id;
		Name = name;
		Email = email;
		Phone = phone;
		User_Name = un;
		Password = passw;
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getUser_Name() {
		return User_Name;
	}

	public void setUser_Name(String user_Name) {
		User_Name = user_Name;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}


	
}
