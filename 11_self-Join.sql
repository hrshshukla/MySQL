
SELECT 
    a.id,
    a.name as user_name,
    b.name as reffered_by
FROM users a
INNER JOIN users b
ON a.reffereceId = b.id;



-- For each users "a" in users:
--     For each users "b" in users:
--         If a.reffereceId = b.id:
--             Add (a, b) to result
