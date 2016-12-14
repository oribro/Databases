CREATE OR REPLACE FUNCTION secondq() RETURNS TRIGGER AS $$
DECLARE
winnerInactive smallint;
loserInactive smallint;
BEGIN
SELECT inactive into winnerInactive
FROM Player
WHERE new.winnerId = pid;
SELECT inactive into loserInactive
FROM Player
WHERE new.loserId = pid;
IF winnerInactive = 1 or loserInactive = 1
THEN 
RAISE EXCEPTION 'Inactive players may not play';
END IF;
return new;
END
$$ LANGUAGE PLPGSQL;

CREATE TRIGGER secondqtrig
BEFORE INSERT ON Match
FOR EACH ROW
EXECUTE PROCEDURE secondq();
