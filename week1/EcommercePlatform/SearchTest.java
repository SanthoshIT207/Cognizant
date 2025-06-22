public class SearchTest {
    public static void main(String[] args) {
        Product[] products = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Shampoo", "Personal Care"),
            new Product(103, "Book", "Stationery"),
            new Product(104, "Keyboard", "Electronics"),
            new Product(105, "Shoes", "Footwear")
        };

        // 🔍 Linear Search
        System.out.println("=== Linear Search ===");
        Product result1 = SearchUtility.linearSearch(products, "Book");
        System.out.println(result1 != null ? result1 : "Product not found");

        // 🔍 Binary Search
        System.out.println("\n=== Binary Search ===");
        SearchUtility.sortProductsByName(products);  // Sorting before binary search
        Product result2 = SearchUtility.binarySearch(products, "Book");
        System.out.println(result2 != null ? result2 : "Product not found");
    }
}
