BEGIN TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 500
WHERE AccountID = 101;

UPDATE Accounts
SET Balance = Balance + 500
WHERE AccountID = 102;

IF @@ERROR = 0
    COMMIT;
ELSE
    ROLLBACK;
