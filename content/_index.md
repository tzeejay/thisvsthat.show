+++
title = "Hoonigan This vs. That"
Description = "A series about racing this vs. that"
date = "2021-07-31"
+++

<div class="o-main-intro">
	<h1>Have you ever asked yourself which one of the Hoonigans is best at predicting the race winner on This vs. That ?</h1>
</div>
<div class="o-main-second">
	<h1>You most likely haven't, but in case you're curious about it now, I figured it would be fun to collect the information in a sane & standardised way. That way one is able to answer the same questions over time with a changing dataset as new This vs. That episodes are released.</h1>
</div>

<div class="o-main-hoonigans-stats">
<div class="o-main-hoonigan-stats__naive">

### The most naïve approach: Calculate percentage how many times each one was correct in their prediction.

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Cole Powelson"       | 1                     | 1                   | 100               |
| 2    | "Gary King Jr"        | 1                     | 1                   | 100               |
| 3    | "Emelia Hartford"     | 1                     | 1                   | 100               |
| 4    | "Alex Andonian "      | 1                     | 1                   | 100               |
| 5    | "Charlie Ashby"       | 1                     | 1                   | 100               |
| 6    | "Ron Zaras"           | 31                    | 46                  | 67                |
| 7    | "Suppy"               | 10                    | 15                  | 66                |
| 8    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 9    | "Zac Mertens"         | 9                     | 14                  | 64                |
| 10   | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 11   | "Micah Diaz"          | 13                    | 21                  | 61                |
| 12   | "Brian Scotto"        | 31                    | 51                  | 60                |
| 13   | "Vinny Anatra"        | 29                    | 49                  | 59                |
| 14   | "John Chase"          | 12                    | 21                  | 57                |
| 15   | "John Naderi"         | 19                    | 33                  | 57                |
| 16   | "Dan Sommer"          | 24                    | 44                  | 54                |
| 17   | "Larry Chen"          | 3                     | 9                   | 33                |
| 18   | "Nick Iannotti"       | 0                     | 1                   | 0                 |
| 19   | "Bryce Menzies"       | 0                     | 1                   | 0                 |
| 20   | "Sean Smith"          | 0                     | 1                   | 0                 |
| 21   | "Gary King Jr."       | 0                     | 1                   | 0                 |
| 22   | "Rob Dahm"            | 0                     | 1                   | 0                 |
| 23   | "Blake Wilkey"        | 0                     | 1                   | 0                 |

</div>

<div class="o-main-hoonigan-stats__corrected">

### Corrected to exclude 100% and 0% correct-ness

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 31                    | 46                  | 67                |
| 2    | "Suppy"               | 10                    | 15                  | 66                |
| 3    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 4    | "Zac Mertens"         | 9                     | 14                  | 64                |
| 5    | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 6    | "Micah Diaz"          | 13                    | 21                  | 61                |
| 7    | "Brian Scotto"        | 31                    | 51                  | 60                |
| 8    | "Vinny Anatra"        | 29                    | 49                  | 59                |
| 9    | "John Naderi"         | 19                    | 33                  | 57                |
| 10   | "John Chase"          | 12                    | 21                  | 57                |
| 11   | "Dan Sommer"          | 24                    | 44                  | 54                |
| 12   | "Larry Chen"          | 3                     | 9                   | 33                |

</div>

<div class="o-main-hoonigan-stats__30-perc">

### Only include Hoonigans that had an attendance of >=30%

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 31                    | 46                  | 67                |
| 2    | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 3    | "Micah Diaz"          | 13                    | 21                  | 61                |
| 4    | "Brian Scotto"        | 31                    | 51                  | 60                |
| 5    | "Vinny Anatra"        | 29                    | 49                  | 59                |
| 6    | "John Naderi"         | 19                    | 33                  | 57                |
| 7    | "John Chase"          | 12                    | 21                  | 57                |
| 8    | "Dan Sommer"          | 24                    | 44                  | 54                |

</div>

<div class="o-main-hoonigan-stats__40-perc">

### Only include Hoonigans that had an attendance of >=40%

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 31                    | 46                  | 67                |
| 2    | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 3    | "Brian Scotto"        | 31                    | 51                  | 60                |
| 4    | "Vinny Anatra"        | 29                    | 49                  | 59                |
| 5    | "John Naderi"         | 19                    | 33                  | 57                |
| 6    | "Dan Sommer"          | 24                    | 44                  | 54                |

</div>

<div class="o-main-hoonigan-stats__70-perc">

### Only include Hoonigans that had an attendance of >=70%

| "id" | "given_by"     | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | -------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"    | 31                    | 46                  | 67                |
| 2    | "Brian Scotto" | 31                    | 51                  | 60                |
| 3    | "Vinny Anatra" | 29                    | 49                  | 59                |
| 4    | "Dan Sommer"   | 24                    | 44                  | 54                |

</div>