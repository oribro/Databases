/** drop tables */
\i drop.sql;

/** create tables */
\i create.sql;

/** load q1-q4 */
\i q1.sql;
\i q2.sql;
\i q3.sql;
\i q4.sql;

/** insert db and print tables */
\i insert.sql;

/** run q5 */
\i q5.sql;

/** print player table after q5 */
select *
from player
order by pid;

