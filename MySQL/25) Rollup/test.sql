SELECT * FROM payments;

SELECT cusID,Amount FROM payments;
SELECT cusID,SUM(Amount)AS Amount FROM payments GROUP BY cusID WITH ROLLUP;