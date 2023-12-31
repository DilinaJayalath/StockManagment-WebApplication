package supplier;

public abstract class AbstractSupplier implements supplier {
    private int spId;
    private String spName;
    private String spEmail;
    private String spPhone;
    private String spCategories;
    
    

    // Create overload Constructor
    public AbstractSupplier(int spId, String spName, String spEmail, String spPhone, String spCategories) {
        this.spId = spId;
        this.spName = spName;
        this.spEmail = spEmail;
        this.spPhone = spPhone;
        this.spCategories = spCategories;
    }
    
    
    
    //implements Supplier interface

	public int getSpId() {
		return spId;
	}

	public void setSpId(int spId) {
		this.spId = spId;
	}

	public String getSpName() {
		return spName;
	}

	public void setSpName(String spName) {
		this.spName = spName;
	}

	public String getSpEmail() {
		return spEmail;
	}

	public void setSpEmail(String spEmail) {
		this.spEmail = spEmail;
	}

	public String getSpPhone() {
		return spPhone;
	}

	public void setSpPhone(String spPhone) {
		this.spPhone = spPhone;
	}

	public String getSpCategories() {
		return spCategories;
	}

	public void setSpCategories(String spCategories) {
		this.spCategories = spCategories;
	}
}