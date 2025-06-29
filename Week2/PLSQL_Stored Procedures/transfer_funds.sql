CREATE OR REPLACE PROCEDURE TransferFunds(
    source_acc_id IN accounts.account_id%TYPE,
    target_acc_id IN accounts.account_id%TYPE,
    amount IN NUMBER
) IS
    v_balance accounts.balance%TYPE;
    insufficient_balance EXCEPTION;
BEGIN
  
    SELECT balance INTO v_balance
    FROM accounts
    WHERE account_id = source_acc_id
    FOR UPDATE;

    IF v_balance < amount THEN
        RAISE insufficient_balance;
    END IF;

 
    UPDATE accounts
    SET balance = balance - amount
    WHERE account_id = source_acc_id;

    UPDATE accounts
    SET balance = balance + amount
    WHERE account_id = target_acc_id;

    DBMS_OUTPUT.PUT_LINE('Successfully transferred ' || amount ||
                         ' from Account ' || source_acc_id || 
                         ' to Account ' || target_acc_id);

EXCEPTION
    WHEN insufficient_balance THEN
        DBMS_OUTPUT.PUT_LINE('Transfer failed: insufficient funds in Account ' || source_acc_id);
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Transfer failed: one of the accounts does not exist.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/
