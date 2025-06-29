SET SERVEROUTPUT ON;

DECLARE
    CURSOR senior_cursor IS
        SELECT customer_id, loan_interest_rate
        FROM customers
        WHERE age > 60
        FOR UPDATE;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Applying Interest Rate Discount for Seniors ---');

    FOR cust IN senior_cursor LOOP
        UPDATE customers
        SET loan_interest_rate = loan_interest_rate - 1
        WHERE CURRENT OF senior_cursor;

        DBMS_OUTPUT.PUT_LINE('Discount applied for Customer ID: ' || cust.customer_id);
    END LOOP;

END;
/
