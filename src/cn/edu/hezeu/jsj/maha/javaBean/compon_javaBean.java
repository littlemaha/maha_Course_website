package cn.edu.hezeu.jsj.maha.javaBean;

public class compon_javaBean {
	private int one;
	private int two;
	private int xuan;
	public int result(int one , int two , int xuan){
		if(xuan == 1){
			return one + two;
		}
		if(xuan == 2){
			return one - two;
		}
		if(xuan == 3){
			return one * two;
		}else{return one / two;}
	}
	
	public int getOne() {
		return one;
	}
	public void setOne(int one) {
		this.one = one;
	}
	public int getTwo() {
		return two;
	}
	public void setTwo(int two) {
		this.two = two;
	}
	public int getXuan() {
		return xuan;
	}
	public void setXuan(int xuan) {
		this.xuan = xuan;
	}
	@Override
	public String toString() {
		return "compon_javabean [one=" + one + ", two=" + two + ", xuan="
				+ xuan + "]";
	}
	public compon_javaBean(int one, int two, int xuan) {
		super();
		this.one = one;
		this.two = two;
		this.xuan = xuan;
	}
	public compon_javaBean(){}
}
