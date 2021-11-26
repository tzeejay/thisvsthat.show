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
| 2    | "Alex Andonian "      | 1                     | 1                   | 100               |
| 3    | "Cole Powelson"       | 1                     | 1                   | 100               |
| 4    | "Gary King Jr"        | 1                     | 1                   | 100               |
| 5    | "Alex Grimm"          | 2                     | 2                   | 100               |
| 6    | "Alex Hernandez"      | 1                     | 1                   | 100               |
| 7    | "Emelia Hartford"     | 1                     | 1                   | 100               |
| 8    | "Charlie Ashby"       | 1                     | 1                   | 100               |
| 9    | "Ron Zaras"           | 37                    | 54                  | 68                |
| 10   | "Darren Parsons"      | 2                     | 3                   | 66                |
| 11   | "Zac Mertens"         | 13                    | 20                  | 65                |
| 12   | "Suppy"               | 17                    | 27                  | 62                |
| 13   | "Brian Scotto"        | 36                    | 59                  | 61                |
| 14   | "John Naderi"         | 29                    | 48                  | 60                |
| 15   | "Hertrech Eugene Jr." | 27                    | 45                  | 60                |
| 16   | "John Chase"          | 15                    | 25                  | 60                |
| 17   | "Micah Diaz"          | 20                    | 35                  | 57                |
| 18   | "Vinny Anatra"        | 36                    | 67                  | 53                |
| 19   | "Dan Sommer"          | 32                    | 61                  | 52                |
| 20   | "Larry Chen"          | 3                     | 9                   | 33                |
| 21   | "Nick Iannotti"       | 0                     | 1                   | 0                 |
| 22   | "Bryce Menzies"       | 0                     | 1                   | 0                 |
| 23   | "Sean Smith"          | 0                     | 1                   | 0                 |
| 24   | "Sammy Sammy"         | 0                     | 1                   | 0                 |
| 25   | "Rhys Millen"         | 0                     | 1                   | 0                 |
| 26   | "Gary King Jr."       | 0                     | 1                   | 0                 |
| 27   | "Rob Dahm"            | 0                     | 1                   | 0                 |
| 28   | "Kevin Lo"            | 0                     | 1                   | 0                 |
| 29   | "Blake Wilkey"        | 0                     | 1                   | 0                 |

</div>

<div class="o-main-hoonigan-stats__corrected">

### Corrected to exclude 100% and 0% correct-ness

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 37                    | 54                  | 68                |
| 2    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 3    | "Zac Mertens"         | 13                    | 20                  | 65                |
| 4    | "Suppy"               | 17                    | 27                  | 62                |
| 5    | "Brian Scotto"        | 36                    | 59                  | 61                |
| 6    | "John Naderi"         | 29                    | 48                  | 60                |
| 7    | "Hertrech Eugene Jr." | 27                    | 45                  | 60                |
| 8    | "John Chase"          | 15                    | 25                  | 60                |
| 9    | "Micah Diaz"          | 20                    | 35                  | 57                |
| 10   | "Vinny Anatra"        | 36                    | 67                  | 53                |
| 11   | "Dan Sommer"          | 32                    | 61                  | 52                |
| 12   | "Larry Chen"          | 3                     | 9                   | 33                |

</div>

<div class="o-main-hoonigan-stats__40-perc">

### Only include Hoonigans that had an attendance of >=40%

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 37                    | 54                  | 68                |
| 2    | "Brian Scotto"        | 36                    | 59                  | 61                |
| 3    | "John Naderi"         | 29                    | 48                  | 60                |
| 4    | "Hertrech Eugene Jr." | 27                    | 45                  | 60                |
| 5    | "Micah Diaz"          | 20                    | 35                  | 57                |
| 6    | "Vinny Anatra"        | 36                    | 67                  | 53                |
| 7    | "Dan Sommer"          | 32                    | 61                  | 52                |

</div>

<div class="o-main-hoonigan-stats__70-perc">

### Only include Hoonigans that had an attendance of >=70%

| "id" | "given_by"     | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | -------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"    | 37                    | 54                  | 68                |
| 2    | "Brian Scotto" | 36                    | 59                  | 61                |
| 3    | "Vinny Anatra" | 36                    | 67                  | 53                |
| 4    | "Dan Sommer"   | 32                    | 61                  | 52                |

</div>

<div class="o-main-hoonigan-playlist-wrap">
	<h3>Watch This vs. That Episodes</h3>
	<a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank"><img src="/img/yt_logo_rgb_light.png" alt="Youtube Logo"></a>
</div>