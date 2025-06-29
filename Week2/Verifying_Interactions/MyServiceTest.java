import static org.mockito.Mockito.*;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

public class MyServiceTest {
    @Test
    public void confirmMethodInvocationWithSpecificArguments() {
        ExternalApi dummyApi = Mockito.mock(ExternalApi.class);
        MyService retrievalService = new MyService(dummyApi);

        retrievalService.fetchData();

        verify(dummyApi).getData();
    }
}
