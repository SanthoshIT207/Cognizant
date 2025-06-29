
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DiagnosticLogger {
    private static final Logger reportLogger = LoggerFactory.getLogger(DiagnosticLogger.class);

    public static void main(String[] args) {
        reportLogger.error("Critical failure encountered in subsystem");
        reportLogger.warn("Configuration might be outdated");
    }
}
