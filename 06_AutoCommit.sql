-- Step (1)
SET autocommit = 0;

-- Step (2)
DELETE FROM users WHERE id=1;

-- Step (3) ROLLBACK or COMMIT
ROLLBACK;

