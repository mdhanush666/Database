
SET AUTOCOMMIT = OFF;

SELECT * FROM workers;

COMMIT;
DELETE FROM workers;

rollback;