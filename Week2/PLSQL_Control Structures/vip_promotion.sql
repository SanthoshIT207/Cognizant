SET SERVEROUTPUT ON;

DECLARE
    CURSOR vip_cursor IS
        SELECT customer_id
        FROM customers
        WHERE balance > 10000
        FOR UPDATE;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Promoting Customers to VIP Status ---');

    FOR cust IN vip_cursor LOOP
        UPDATE customers
        SET isvip = 'TRUE'
        WHERE CURRENT OF vip_cursor;

        DBMS_OUTPUT.PUT_LINE('Customer ID ' || cust.customer_id || ' marked as VIP.');
    END LOOP;

END;
/
