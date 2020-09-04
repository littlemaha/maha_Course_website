package cn.edu.hezeu.jsj.maha.javaBean;

public class LoginAction {
	private String userName;
	private String password;
	private String isOk;
	
	public String getIsOk() {
		return isOk;
	}

	public void setIsOk(String isOk) {
		this.isOk = isOk;
	}

	public String execute(){//ºËÐÄ
		if("admin".equals(userName) && "123456".equals(password)){
			isOk = "µÇÂ¼³É¹¦";
			return "success";//Âß¼­ÊÓÍ¼
		} else {
			return "failure";//Âß¼­ÊÓÍ¼
		}
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
