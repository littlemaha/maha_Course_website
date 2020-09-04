package cn.edu.hezeu.jsj.maha.javaBean;

public class login_javaBean {
	private String userName;
	private String password;
	
	public boolean isUser(String userName,String password){
		if("admin".equals(userName)&&"123456".equals(password)){//此处的默认值应为从数据库得到
			return true;
		} else {
			return false;
		}
	}
	
	public login_javaBean(){};
	public login_javaBean(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "validation_login_javabean [password=" + password
				+ ", userName=" + userName + "]";
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
