
import static org.mockito.Mockito.*;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import static org.junit.jupiter.api.Assertions.*;

public class MyServiceTest {
    @Test
    public void checkDataFromMockApi() {
        ExternalApi simulatedApi = Mockito.mock(ExternalApi.class);
        when(simulatedApi.getData()).thenReturn("Simulated Content");

        MyService dataFetcher = new MyService(simulatedApi);
        String output = dataFetcher.fetchData();

        assertEquals("Simulated Content", output);
    }
}
