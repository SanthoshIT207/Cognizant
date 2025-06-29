CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS
BEGIN
    -- Add 1% interest to balances in savings accounts
    UPDATE accounts
    SET balance = balance + (balance * 0.01)
    WHERE account_type = 'SAVINGS';

    DBMS_OUTPUT.PUT_LINE('1% interest applied to all savings accounts.');
END;
/
