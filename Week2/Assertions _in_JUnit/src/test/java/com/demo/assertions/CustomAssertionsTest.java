package com.demo.assertions;

import org.junit.Test;
import static org.junit.Assert.*;

public class CustomAssertionsTest {

    @Test
    public void validateAssertionsBehavior() {
        int quantumSum = 7 + 8;
        assertEquals(15, quantumSum);

        boolean isCosmicGreater = 10 > 3;
        assertTrue(isCosmicGreater);

        boolean isNebulaSmaller = 2 > 10;
        assertFalse(isNebulaSmaller);

        String phantomString = null;
        assertNull(phantomString);

        Object stellarObject = new Object();
        assertNotNull(stellarObject);
    }
}
