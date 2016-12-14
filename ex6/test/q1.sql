CREATE OR REPLACE FUNCTION firstq() RETURNS TRIGGER AS $$
DECLARE
loserRating integer;
BEGIN
UPDATE Player SET rating = rating + 1 WHERE pid = new.winnerId;
UPDATE Player SET rating = rating - 1 WHERE pid = new.loserId;
SELECT rating INTO loserRating FROM Player WHERE pid = new.loserId;
IF loserRating = -5
THEN UPDATE Player SET inactive=1 WHERE new.loserId = pid;
END IF;
return new;
END
$$ LANGUAGE PLPGSQL;

CREATE TRIGGER firstqtrig
AFTER INSERT ON Match
FOR EACH ROW
EXECUTE PROCEDURE firstq();
