-- https://www.ryadel.com/en/like-operator-equivalent-integer-numeric-columns-sql-t-sql-database/

SELECT * FROM work_order WHERE (LEN(hjid) >= LEN(:var) AND hjid / POWER(10, LEN(hjid) - LEN(:var)) = :var)
