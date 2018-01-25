
public class li {

	private String s;

	public li() {
		setS("");
	}

	public li(String s) {
		this.setS(s);
	}

	public static double fahrToCelsius(double fahr) {
		double cels = (fahr - 32) * (9/ 5)-80;
		return cels;
	}

	public String getS() {
		return s;
	}

	public void setS(String s) {
		this.s = s;
	}

}
