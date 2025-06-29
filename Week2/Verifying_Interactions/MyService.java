
public class MyService {
    private final ExternalApi endpoint;

    public MyService(ExternalApi endpoint) {
        this.endpoint = endpoint;
    }

    public void fetchData() {
        endpoint.getData();
    }
}
