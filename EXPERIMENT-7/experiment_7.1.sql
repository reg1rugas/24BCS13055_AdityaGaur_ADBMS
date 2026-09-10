CREATE TABLE staff (
  id NUMBER PRIMARY KEY,
  name VARCHAR2(100),
  salary NUMBER
);

INSERT INTO staff VALUES (1, 'Alice Smith', 150000);
INSERT INTO staff VALUES (2, 'Bob Jones', 120000);
INSERT INTO staff VALUES (3, 'Charlie Brown', 95000);
INSERT INTO staff VALUES (4, 'Diana Prince', 135000);
INSERT INTO staff VALUES (5, 'Ethan Hunt', 110000);
INSERT INTO staff VALUES (6, 'Fiona Glenanne', 80000);
COMMIT;

DECLARE
  CURSOR c_top_staff IS
    SELECT name, salary
    FROM staff
    ORDER BY salary DESC
    FETCH FIRST 5 ROWS ONLY;
BEGIN
  FOR r_staff IN c_top_staff LOOP
    DBMS_OUTPUT.PUT_LINE('Name: ' || r_staff.name || ' | Salary: ' || r_staff.salary);
  END LOOP;
END;
/