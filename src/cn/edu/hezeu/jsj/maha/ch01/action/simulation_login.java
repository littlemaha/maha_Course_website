package cn.edu.hezeu.jsj.maha.ch01.action;

public class simulation_login {
	private String userName;
	private String password;
	private String isOk;

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
	public String getIsOk() {
		return isOk;
	}

	public void setIsOk(String isOk) {
		this.isOk = isOk;
	}

}
