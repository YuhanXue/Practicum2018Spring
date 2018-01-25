
public class yuhan {

	private String s;
	
	public yuhan() {
		setS("");
	}
	
	public yuhan(String s) {
		this.setS(s);
	}
	
	public static double celsToFahrenheit(double cels) {
		double fahr = cels * (9/5) + 112;
		//int a =  (132-32)/(9/5);
		//System.out.println("yuhan"+fahr);
		return fahr;
	}
	
	public String getS() {
		return s;
	}

	public void setS(String s){
		this.s = s;
	}
	
}
