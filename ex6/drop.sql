DROP TRIGGER IF EXISTS fourthqtrig ON Location;
DROP TRIGGER IF EXISTS thirdqtrig ON Player;
DROP TRIGGER IF EXISTS secondqtrig ON Match;
DROP TRIGGER IF EXISTS firstqtrig ON Match;
DROP FUNCTION IF EXISTS reactivate();
DROP FUNCTION IF EXISTS fourthq();
DROP FUNCTION IF EXISTS thirdq();
DROP FUNCTION IF EXISTS secondq();
DROP FUNCTION IF EXISTS firstq();

DROP TABLE Location;
DROP TABLE Top;
DROP TABLE Match;
DROP TABLE Player CASCADE;
