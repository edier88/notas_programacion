
SELECT date_part('YEAR', NOW());

SELECT date_part('MONTH', NOW());

SELECT date_part('hour', TIMESTAMP '2020-05-19 12:30:40') h,
date_part('minute', TIMESTAMP '2020-05-19 12:30:40') m,
date_part('second',TIMESTAMP '2020-05-19 12:30:40') s;
