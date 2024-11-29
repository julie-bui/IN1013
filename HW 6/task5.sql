-- 1

SELECT T1.first_name, T1.surname, T2.bill_date, COUNT(T2.bill_no) AS num_bills
FROM restStaff T1
INNER JOIN restBill T2 ON T1.staff_no = T2.waiter_no
GROUP BY T1.first_name, T1.surname, T2.bill_date
HAVING COUNT(T2.bill_no) >= 2;


-- 2

SELECT room_name, COUNT(table_no) AS table_count
FROM restRest_table 
WHERE no_of_seats > 6
GROUP BY room_name;


-- 3

SELECT T1.room_name, SUM(T2.bill_total) AS total_bill_amount
FROM restBill T2
INNER JOIN restRest_table T1 ON T2.table_no = T1.table_no
GROUP BY T1.room_name;

-- 4

SELECT T1.first_name, T1.surname, SUM(T2.bill_total) AS total_bill_waiters
FROM restBill T2
INNER JOIN restStaff T1 ON T2.waiter_no = T1.staff_no
GROUP BY T1.first_name, T1.surname
ORDER BY total_bill_waiters DESC;

-- 5

SELECT cust_name, AVG(bill_total) AS average_bill
FROM restBill
GROUP BY cust_name;
HAVING AVG(bill_total) > 400.00;

-- 6

SELECT T1.first_name, T1.surname, COUNT(T2.bill_total) AS num_bill_waiters
FROM restBill T2
INNER JOIN restStaff T1 ON T2.waiter_no = T1.staff_no
GROUP BY T1.first_name, T1.surname, T2.bill_date
HAVING num_bill_waiters;




