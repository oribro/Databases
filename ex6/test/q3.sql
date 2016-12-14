
CREATE OR REPLACE FUNCTION thirdq() RETURNS TRIGGER AS $$
DECLARE
maxRating integer;
BEGIN
SELECT max(rating) INTO maxRating FROM Player;
DELETE FROM Top;
INSERT INTO Top (SELECT pid FROM Player
WHERE rating = maxRating);
return null;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER thirdqtrig
AFTER INSERT OR UPDATE ON Player
FOR EACH ROW
EXECUTE PROCEDURE thirdq();


