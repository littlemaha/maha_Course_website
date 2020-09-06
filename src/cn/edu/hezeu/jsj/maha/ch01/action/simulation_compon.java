package cn.edu.hezeu.jsj.maha.ch01.action;

public class simulation_compon {
	private int one;
	private int xuan;
	private int two;
	private int sole;
	
	public String execute(){//ºËĞÄ
		
		if(xuan == 1){
			sole = one + two;
			return "ass";//Âß¼­ÊÓÍ¼
		} 
		if(xuan == 2){
			sole = one - two;		
			return "ass";//Âß¼­ÊÓÍ¼
				} 
		if(xuan == 3){
			sole = one * two;
			return "ass";//Âß¼­ÊÓÍ¼
		} 
		if(xuan == 4){
			sole = one / two;
			return "ass";//Âß¼­ÊÓÍ¼
		} 
		return "ass";
	}
	
	public int getSole() {
		return sole;
	}

	public void setSole(int sole) {
		this.sole = sole;
	}

	public int getOne() {
		return one;
	}
	public void setOne(int one) {
		this.one = one;
	}
	public int getXuan() {
		return xuan;
	}
	public void setXuan(int xuan) {
		this.xuan = xuan;
	}
	public int getTwo() {
		return two;
	}
	public void setTwo(int two) {
		this.two = two;
	}
	
	

}
