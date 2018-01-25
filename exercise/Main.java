
public class Main {

    public static void main(String[] args) {

        yuhan y = new yuhan();
        li l = new li();

        boolean pass = true;

        if (y.celsToFahrenheit(100) != 212.0) {
           // System.out.println("yuhan"+yuhan.celsToFahrenheit(100));
            pass = false;
            System.err.println("Yuhan failed.");
        }
        if (l.fahrToCelsius(212) != 100.0) {
            //System.out.println("li"+yuhan.celsToFahrenheit(100));
            pass = false;
            System.err.println("Li failed.");
        }

        if (pass)
            System.out.println("SUCCESS! - Challenge completed.");
        else
            System.err.println("FAIL. Errors exist");


    }
}

