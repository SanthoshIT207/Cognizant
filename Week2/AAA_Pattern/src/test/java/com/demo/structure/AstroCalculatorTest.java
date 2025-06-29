package com.demo.structure;

import org.junit.Before;
import org.junit.After;
import org.junit.Test;
import static org.junit.Assert.*;

public class AstroCalculatorTest {

    private AstroCalculator astroUnit;

    @Before
    public void initiateTestResource() {
        System.out.println("🛠 Setting up test environment...");
        astroUnit = new AstroCalculator();
    }

    @After
    public void cleanupTestResource() {
        System.out.println("🧹 Cleaning up after test execution...");
        astroUnit = null;
    }

    @Test
    public void galaxyAddition_returnsExpectedSum() {
        int nebula = 12;
        int supernova = 8;
    int constellation = astroUnit.galacticAdd(nebula, supernova);

        assertEquals(20, constellation);
    }

    @Test
    public void isOrbitStable_returnsTrueForEven() {
        
        int rotation = 14;

        boolean status = astroUnit.isOrbitStable(rotation);

        assertTrue(status);
    }
}
