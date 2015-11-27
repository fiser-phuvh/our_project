package controller;
import com.opensymphony.xwork2.ActionSupport;
public class TestRadioIter extends ActionSupport {
	int a[]={1,2,3,4,5,6,7};
	public int[] getA() {
		return a;
	}
	public void setA(int[] a) {
		this.a = a;
	}
	public String execute(){
		return SUCCESS;
	}
}
