CREATE TABLE orders (
  order_id NUMBER PRIMARY KEY,
  amount NUMBER
);

INSERT INTO orders VALUES (101, 15000);
INSERT INTO orders VALUES (102, 5000);
INSERT INTO orders VALUES (103, 12000);
INSERT INTO orders VALUES (104, 8000);
COMMIT;




DECLARE
  CURSOR c_orders IS
    SELECT amount
    FROM orders;
BEGIN
  FOR r_order IN c_orders LOOP
    IF r_order.amount > 10000 THEN
      DBMS_OUTPUT.PUT_LINE('High Value');
    END IF;
  END LOOP;
END;
/