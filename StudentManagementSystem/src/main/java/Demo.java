import java.util.*;
public class Demo {
	public static void main(String[] args) {
		ArrayList<String>cars=new ArrayList<String>();
		cars.add("Lambo");
		cars.add(0,"BMW");
		 cars.add("Volvo");
		 cars.add("RMW");
		 cars.add("Ford");
		 cars.add("Mazda");
		Collections.sort(cars);
		System.out.println(cars);
	}
	

}
