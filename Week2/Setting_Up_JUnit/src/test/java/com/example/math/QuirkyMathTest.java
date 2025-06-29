package com.example.math;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class QuirkyMathTest {

    private QuirkyMath quantumCalculator;

    @Before
    public void initializeQuantumCalculator() {
        quantumCalculator = new QuirkyMath();
    }

    @Test
    public void amalgamate_addsTwoValuesCorrectly() {
        int result = quantumCalculator.amalgamate(5, 37);
        Assert.assertEquals(42, result);
    }

    @Test
    public void isParapetEven_returnsTrueForEven() {
        Assert.assertTrue(quantumCalculator.isParapetEven(24));
    }

    @Test
    public void isParapetEven_returnsFalseForOdd() {
        Assert.assertFalse(quantumCalculator.isParapetEven(13));
    }
}
