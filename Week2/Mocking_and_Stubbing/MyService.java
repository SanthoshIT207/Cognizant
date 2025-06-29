
public class MyService {
    private final ExternalApi apiClient;

    public MyService(ExternalApi apiClient) {
        this.apiClient = apiClient;
    }

    public String fetchData() {
        return apiClient.getData();
    }
}
