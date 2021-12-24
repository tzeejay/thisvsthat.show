+++
title = "Hoonigan This vs. That"
Description = "A series about racing this vs. that"
date = "2021-07-31"
+++

<div class="o-main-intro">
	<h1>Have you ever asked yourself which one of the Hoonigans is best at predicting the race winner on <a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank">This vs. That</a> ?</h1>
</div>
<div class="o-main-second">
	<h1>You most likely haven't, but in case you're curious about it now, I figured it would be fun to collect the information in a sane & standardised way. That way one is able to answer the same questions over time with a changing dataset as new <a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank">This vs. That</a> episodes are released.</h1>
</div>

<div class="o-main-hoonigans-stats">
<div class="o-main-hoonigan-stats__naive">

### The most naïve approach: Calculate percentage how many times each one was correct in their prediction.

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Seth Frye"           | 1                     | 1                   | 100               |
| 2    | "Charlie Ashby"       | 1                     | 1                   | 100               |
| 3    | "Lia Block"           | 1                     | 1                   | 100               |
| 4    | "Alex Hernandez"      | 1                     | 1                   | 100               |
| 5    | "Alex Grimm"          | 2                     | 2                   | 100               |
| 6    | "Cole Powelson"       | 1                     | 1                   | 100               |
| 7    | "Alex Andonian "      | 1                     | 1                   | 100               |
| 8    | "Gary King Jr"        | 1                     | 1                   | 100               |
| 9    | "Emelia Hartford"     | 1                     | 1                   | 100               |
| 10   | "Ron Zaras"           | 43                    | 60                  | 71                |
| 11   | "Darren Parsons"      | 2                     | 3                   | 66                |
| 12   | "Hertrech Eugene Jr." | 34                    | 52                  | 65                |
| 13   | "Suppy"               | 19                    | 30                  | 63                |
| 14   | "Brian Scotto"        | 41                    | 66                  | 62                |
| 15   | "John Chase"          | 17                    | 28                  | 60                |
| 16   | "John Naderi"         | 29                    | 48                  | 60                |
| 17   | "Zac Mertens"         | 14                    | 24                  | 58                |
| 18   | "Vinny Anatra"        | 43                    | 74                  | 58                |
| 19   | "Micah Diaz"          | 20                    | 35                  | 57                |
| 20   | "Dan Sommer"          | 36                    | 67                  | 53                |
| 21   | "Larry Chen"          | 3                     | 9                   | 33                |
| 22   | "Sammy Sammy"         | 0                     | 1                   | 0                 |
| 23   | "Rhys Millen"         | 0                     | 1                   | 0                 |
| 24   | "Bryce Menzies"       | 0                     | 1                   | 0                 |
| 25   | "Blake Wilkey"        | 0                     | 1                   | 0                 |
| 26   | "Nick Iannotti"       | 0                     | 1                   | 0                 |
| 27   | "Rob Dahm"            | 0                     | 1                   | 0                 |
| 28   | "Gary King Jr."       | 0                     | 1                   | 0                 |
| 29   | "Kevin Lo"            | 0                     | 1                   | 0                 |
| 30   | "Sean Smith"          | 0                     | 1                   | 0                 |

</div>

<div class="o-main-hoonigan-stats__corrected">

### Corrected to exclude 100% and 0% correct-ness

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 43                    | 60                  | 71                |
| 2    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 3    | "Hertrech Eugene Jr." | 34                    | 52                  | 65                |
| 4    | "Suppy"               | 19                    | 30                  | 63                |
| 5    | "Brian Scotto"        | 41                    | 66                  | 62                |
| 6    | "John Naderi"         | 29                    | 48                  | 60                |
| 7    | "John Chase"          | 17                    | 28                  | 60                |
| 8    | "Vinny Anatra"        | 43                    | 74                  | 58                |
| 9    | "Zac Mertens"         | 14                    | 24                  | 58                |
| 10   | "Micah Diaz"          | 20                    | 35                  | 57                |
| 11   | "Dan Sommer"          | 36                    | 67                  | 53                |
| 12   | "Larry Chen"          | 3                     | 9                   | 33                |

</div>

<div class="o-main-hoonigan-stats__40-perc">

### Only include Hoonigans that had an attendance of >=40%

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 43                    | 60                  | 71                |
| 2    | "Hertrech Eugene Jr." | 34                    | 52                  | 65                |
| 3    | "Brian Scotto"        | 41                    | 66                  | 62                |
| 4    | "John Naderi"         | 29                    | 48                  | 60                |
| 5    | "Vinny Anatra"        | 43                    | 74                  | 58                |
| 6    | "Micah Diaz"          | 20                    | 35                  | 57                |
| 7    | "Dan Sommer"          | 36                    | 67                  | 53                |

</div>

<div class="o-main-hoonigan-stats__70-perc">

### Only include Hoonigans that had an attendance of >=70%

| "id" | "given_by"     | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | -------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"    | 43                    | 60                  | 71                |
| 2    | "Brian Scotto" | 41                    | 66                  | 62                |
| 3    | "Vinny Anatra" | 43                    | 74                  | 58                |
| 4    | "Dan Sommer"   | 36                    | 67                  | 53                |

</div>

<div class="o-main-hoonigan-playlist-wrap">
	<h3>Watch This vs. That Episodes</h3>
	<a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank"><img src="/img/yt_logo_rgb_light.png" alt="Youtube Logo"></a>
</div>