package cn.edu.hezeu.jsj.maha.ch01.action;

public class simulation_login {
	private String userName;
	private String password;
	private String isOk;

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
	public String getIsOk() {
		return isOk;
	}

	public void setIsOk(String isOk) {
		this.isOk = isOk;
	}

}
