
public class Main {

	public static void main(String[] args) {

		yuhan y = new yuhan();
		li l = new li();

		boolean pass = true:

		if (yuhan.celsToFahrenheit(100) != 212) {
			pass = false;
			System.err.println("Yuhan failed.");
		}
		if (li.fahrToCelsius(212) != 100) {
			pass = false;
			System.err.println("Li failed.");
		}

		if (pass)
			System.out.println("SUCCESS! - Challenge completed.");
		else
			System.err.println("FAIL. Errors exist");


	}


