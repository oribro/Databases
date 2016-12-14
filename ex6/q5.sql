CREATE OR REPLACE FUNCTION reactivate() RETURNS VOID AS $$
BEGIN
UPDATE Player SET rating = rating + 2 WHERE inactive = 1;
UPDATE Player SET inactive = 0 WHERE inactive = 1 AND rating >= 0;
END
$$ LANGUAGE PLPGSQL;


