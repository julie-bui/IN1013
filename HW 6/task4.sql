-- 1

SELECT T1.cust_name
FROM restBill T1
INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no
WHERE T1.bill_total > 450.00
AND T2.headwaiter = (
    SELECT staff_no
    FROM restStaff
    WHERE first_name = 'Charles'
);


-- 2

SELECT T1.first_name, T1.surname
FROM restStaff T1
INNER JOIN restBill T2 ON T1.staff_no = T2.waiter_no
WHERE T1.headwaiter IS NOT NULL
AND T2.cust_name LIKE 'Nerida%'
AND T2.bill_date = 160111;


-- 3

SELECT cust_name, bill_total
FROM restBill
WHERE bill_total = 
(SELECT MIN(bill_total) 
FROM restBill);


-- 4

SELECT T1.first_name, T1.surname
FROM restStaff T1
LEFT JOIN restBill T2 ON T1.staff_no = T2.waiter_no
WHERE T2.bill_no IS NULL;


-- 5 

SELECT T1.cust_name, T1.bill_total, T2.first_name, T2.surname, T3.room_name
FROM restBill T1
INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no
INNER JOIN restRest_table T3 ON T1.table_no = T3.table_no
WHERE T1.bill_total = 
(SELECT MAX(bill_total)
FROM restBill T1);

