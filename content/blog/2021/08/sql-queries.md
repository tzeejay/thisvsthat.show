+++
title = "Generating statistics from raw data"
description = "A brief intro into SQL queries, specifically PostgreSQL flavoured SQL. This is mostly for my stupid ass because otherwise I wouldn't be able to remember this"
date = "2021-08-02"
+++

I am going to be very honest with you. I don't post this to teach anybody anything, this is mostly so that my stupid ass will have something to reference in the future while updating the website because I can guarantee that I wont be able to remember any of these queries...

It may also be useful for others to checkout as a reference if they chose to import the data into a PostgreSQL instance.


## Leaderboard for all predictions given sorted by correct_percentage

~~~sql
WITH total_perc AS (
SELECT 
given_by, 
count(*) FILTER (WHERE races.winner = predictions.predicted_race_winner) AS correct_predictions,
count(*) AS total_predictions,
count(*) FILTER (WHERE races.winner = predictions.predicted_race_winner)*100/count(*) AS correct_percent
FROM predictions
JOIN races ON race = races.id
GROUP BY 1
)
SELECT row_number() over (order by correct_percent DESC nulls last) as id, * FROM total_perc
ORDER BY correct_percent DESC;
~~~

## Leaderboard for all predictions given sorted by correct_percentage excluding percentages of 100% and 0% (basically excluding everybody that was only in one video)

~~~sql
WITH total_perc AS (
SELECT 
given_by, 
count(*) FILTER (WHERE races.winner = predictions.predicted_race_winner) AS correct_predictions,
count(*) AS total_predictions,
count(*) FILTER (WHERE races.winner = predictions.predicted_race_winner)*100/count(*) AS correct_percent
FROM predictions
JOIN races ON race = races.id
GROUP BY 1
)
SELECT row_number() over (order by correct_percent DESC nulls last) as id, * FROM total_perc
WHERE correct_percent < 100 AND correct_percent > 0
ORDER BY correct_percent DESC;
~~~

## Leaderboard for all predictions given with more races entered than x% (replace x with 0.5 for 50% or 0.3 for 30% of appearances in all races)

~~~sql
WITH temp_table AS (
WITH races_half AS (
	SELECT count(*)*0.5 AS half FROM races
)
SELECT 
given_by, 
count(*) FILTER (WHERE races.winner = predictions.predicted_race_winner) AS correct_predictions,
count(*) AS total_predictions,
count(*) FILTER (WHERE races.winner = predictions.predicted_race_winner)*100/count(*) AS correct_percent,
(SELECT * FROM races_half)
FROM predictions
JOIN races ON race = races.id
GROUP BY 1
)
SELECT row_number() over (order by correct_percent DESC nulls last) as id, given_by, correct_predictions, total_predictions, correct_percent FROM temp_table
WHERE total_predictions > half
ORDER BY correct_percent DESC;
~~~
