SET SERVEROUTPUT ON;

DECLARE
    CURSOR due_loan_cursor IS
        SELECT l.loan_id, c.name, l.due_date
        FROM loans l
        JOIN customers c ON l.customer_id = c.customer_id
        WHERE l.due_date BETWEEN SYSDATE AND SYSDATE + 30;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Sending Loan Due Reminders ---');

    FOR loan IN due_loan_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: Loan ID ' || loan.loan_id || 
                             ' for ' || loan.name || 
                             ' is due on ' || TO_CHAR(loan.due_date, 'DD-MON-YYYY'));
    END LOOP;

END;
/
