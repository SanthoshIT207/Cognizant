CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    dept_id IN employees.department_id%TYPE,
    bonus_percent IN NUMBER
) IS
BEGIN
    UPDATE employees
    SET salary = salary + (salary * bonus_percent / 100)
    WHERE department_id = dept_id;

    DBMS_OUTPUT.PUT_LINE('Bonus of ' || bonus_percent || '% granted to Department ID: ' || dept_id);
END;
/
