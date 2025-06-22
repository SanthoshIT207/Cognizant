public class FinancialForecast {

    // Recursive method to compute future value
    public static double futureValue(double presentValue, double rate, int years) {
        // Base case: no years left
        if (years == 0) {
            return presentValue;
        }
        // Recursive step
        return futureValue(presentValue, rate, years - 1) * (1 + rate);
    }

    public static void main(String[] args) {
        double presentValue = 10000;  // Rs.10,000
        double growthRate = 0.08;     // 8% annual growth
        int years = 5;

        double result = futureValue(presentValue, growthRate, years);
        System.out.printf("Future value after %d years = ₹%.2f\n", years, result);
    }
}
