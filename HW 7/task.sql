-- 1

CREATE VIEW samsBills
AS SELECT T1.first_name, T1.surname, T2.bill_date, T2.cust_name, T2.bill_total
FROM restStaff T1
INNER JOIN restBill T2 ON T1.staff_no = T2.waiter_no
WHERE T1.staff_no = 4;

-- 2

SELECT first_name, surname, bill_date, cust_name, bill_total
FROM samsBills
WHERE bill_total > 400;

-- 3

CREATE VIEW roomTotals AS 
SELECT T1.room_name, SUM(T2.bill_total) AS total_sum
FROM restRest_Table T1
INNER JOIN restBill T2 ON T2.table_no = T1.table_no
GROUP BY T1.room_name;

SELECT * FROM roomTotals; 

-- 4

CREATE VIEW teamTotals AS 
SELECT T1.room_name, SUM(T2.bill_total) AS total_sum
FROM restRest_Table T1
INNER JOIN restBill T2 ON T2.table_no = T1./

CREATE VIEW teamTotals AS
SELECT CONCAT(T1.first_name, ' ', T1.surname) AS headwaiter_name, SUM(T3.bill_total) AS total_sum
FROM restStaff T1
INNER JOIN restRoom_management T2 ON T1.staff_no = T2.headwaiter
INNER JOIN restBill T3 ON T3.table_no IN (
SELECT table_no FROM restRest_table WHERE room_name = T2.room_name)
GROUP BY T1.staff_no;

SELECT * FROM teamTotals;


