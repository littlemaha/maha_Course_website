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

	public String execute(){//����
		if("admin".equals(userName) && "123456".equals(password)){
			isOk = "��¼�ɹ�";
			return "success";//�߼���ͼ
		} else {
			return "failure";//�߼���ͼ
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
