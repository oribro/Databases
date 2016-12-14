import os
import random
import sys

f = open(os.getcwd() + os.sep + "insert.sql", 'w')

expected = open(os.getcwd() + os.sep + "expected.txt", 'w')

players = ["1, \'Eliav\', \'Mor\', \'E\', 0, 0", "2, \'Nimrod\', \'Mor\', \'N\', 0, 0",
         "3, \'Itay\', \'Tagar\', \'I\', 0, 0", "4, \'Amoss\', \'Gropp\', \'A\', 0, 0",
         "5, \'Ori\', \'Korner\', \'K\', 0, 0", "6, \'Abuhay\', \'Abuny\', \'Chuck\', 0, 0",
         "7, \'Yaniv\', \'Swisa\', \'Y\', 0, 0", "8, \'Nadav\', \'Choen\', \'NC\', 0, 0",
         "9, \'Anaelle\', \'Benistri\', \'Bella\', 0 ,0"]
locations = ["100, \'Jerusalem\'", "101, \'Bnei-Brak\'", "102, \'New-York\'", "103, \'Amsterdam\'", "104, \'Tel-Aviv\'",
             "105, \'Haifa\'"]
players_rating = [0, 0, 0, 0, 0, 0, 0, 0, 0]
players_inactive = [0, 0, 0, 0, 0, 0, 0, 0, 0]


def insertPlayers():
    for player in players:
        f.write("insert into player values(" + player + ");\n")


def insertLocations():
    for location in locations:
        f.write("insert into location values(" + location + ");\n")


def insertMatches(n):
    for i in range(n):
        winnerId = random.randint(1, 9)
        loserId = random.randint(1, 9)
        while loserId == winnerId:
            loserId = random.randint(1, 9)
        if players_inactive[winnerId-1] == 1 or players_inactive[loserId-1] == 1:
            f.write("/** adding a match that needs to throw exception. */\n")

        if players_inactive[winnerId-1] == 0 and players_inactive[loserId-1] == 0:
            players_rating[winnerId - 1] += 1
            players_rating[loserId - 1] -= 1

        if players_rating[loserId-1] == -5:
            players_inactive[loserId - 1] = 1
        locationId = random.randint(100, 105)
        winnerScore = random.randint(0, 100)

        while winnerScore == 0:
            winnerScore = random.randint(0, 100)
        loserScore = winnerScore - 1
        f.write("insert into match values(" + str(i) + "," + str(winnerId) + "," + str(loserId) + "," + str(
        winnerScore) + "," + str(loserScore) + "," + str(locationId) + ", current_timestamp);\n")


    f.write("/** insert inactive player with rating - 1, and see if q5.sql will fix him to bix active.*/\n")
    f.write("insert into player values(10, \'God\', \'Jesus\', \'Alla\', -1, 1);\n")
    f.write("select *\nfrom player\norder by pid;\n")
    f.write("/** print tables after running q1.sql, q2.sql and a3.sql */\n")
    f.write("select *\nfrom location\norder by locid;\n")
    f.write("select *\nfrom match\norder by matchid;\n")
    f.write("select *\nfrom top\norder by pid;\n")
    f.write("/** Check q4.sql, clear location table and print it. */\n")
    f.write("delete from location;\nselect *\nfrom location\norder by locid;\n")

    expected.write("/** results of Players rating and Players inactive without 'God' (before using q5.sql) */\n")
    expected.write("pupil rating: " + str(players_rating) + "\n")
    expected.write("pupil inactive: " + str(players_inactive) + "\n")


if len(sys.argv) != 2 and int(sys.argv[1]) < 0:
    print("Wrong usage.")
    exit(0)
else:
    insertPlayers()
    insertLocations()
    insertMatches(int(sys.argv[1]))
    os.system("echo " + str("created insert.sql"))
    os.system("echo " + str("created expected.txt"))
f.close()
expected.close()


