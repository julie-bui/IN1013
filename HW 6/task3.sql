-- 1

SELECT cust_name, waiter_no, T2.staff_no, first_name, surname
FROM restBill T1
INNER JOIN restStaff T2
WHERE T1.waiter_no = T2.staff_no 
AND T1.cust_name 
LIKE "Tanya Singh";

-- 2

SELECT room_name, room_date, T2.first_name
FROM restRoom_management T1
INNER JOIN restStaff T2
WHERE T1.headwaiter = T2.staff_no AND T2.first_name LIKE "Charles" AND T1.room_name LIKE "Green";


-- 3

SELECT first_name, surname
FROM restStaff
WHERE headwaiter = (
    SELECT headwaiter
    FROM restStaff
    WHERE first_name = 'Zoe' AND surname = 'Ball'
)
AND NOT (first_name = 'Zoe' AND surname = 'Ball');


-- 4

SELECT cust_name, bill_total, T2.first_name, surname 
FROM restBill T1
INNER JOIN restStaff T2
WHERE T1.waiter_no = T2.staff_no 
ORDER BY bill_total DESC;

-- 5 

SELECT first_name, surname
FROM restStaff T1
INNER JOIN restBill T2
WHERE T1.staff_no = T2.waiter_no
AND T2.bill_no = 14 
UNION
SELECT first_name, surname
FROM restStaff T1
INNER JOIN restBill T2
WHERE T1.staff_no = T2.waiter_no
AND T2.bill_no = 17;

-- 6

SELECT first_name, surname
FROM restStaff T1
INNER JOIN restRoom_management T2
WHERE T1.staff_no = T2.headwaiter
AND T2.room_name LIKE "Blue" AND T2.room_date LIKE 160312;









