// File: TestLogger.java
public class TestLogger {
    public static void main(String[] args) {
        // Get Logger instance multiple times
        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();

        // Use logger
        logger1.log("First log message");
        logger2.log("Second log message");

        // Check if both logger references point to the same object
        if (logger1 == logger2) {
            System.out.println("Only one instance exists. Singleton works!");
        } else {
            System.out.println("Different instances exist. Singleton failed!");
        }
    }
}
