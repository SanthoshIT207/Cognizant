import java.util.Arrays;
import java.util.Comparator;

public class SearchUtility {

    // Linear Search: Search by product name
    public static Product linearSearch(Product[] products, String name) {
        for (Product product : products) {
            if (product.productName.equalsIgnoreCase(name)) {
                return product;
            }
        }
        return null;
    }

    // Binary Search: Assumes array is sorted by product name
    public static Product binarySearch(Product[] products, String name) {
        int left = 0;
        int right = products.length - 1;

        while (left <= right) {
            int mid = (left + right) / 2;
            int comparison = name.compareToIgnoreCase(products[mid].productName);

            if (comparison == 0) return products[mid];
            else if (comparison < 0) right = mid - 1;
            else left = mid + 1;
        }

        return null;
    }

    // Sort the product array by name
    public static void sortProductsByName(Product[] products) {
        Arrays.sort(products, Comparator.comparing(p -> p.productName.toLowerCase()));
    }
}
