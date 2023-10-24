
package supplier;

public interface supplier {
    int getSpId();
    String getSpName();
    String getSpEmail();
    String getSpPhone();
    String getSpCategories();

    void setSpName(String spName);
    void setSpEmail(String spEmail);
    void setSpPhone(String spPhone);
    void setSpCategories(String spCategories);
}