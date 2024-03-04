-- this will NOT work because of ON DELETE NO ACTION
-- because users table depend on it
-- but WILL WORK with ON DELETE CASCADE
-- in this case, it will delete the address AND the user
-- that depends on it
DELETE FROM addresses 
WHERE id = 2;