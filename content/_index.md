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
| 10   | "Ron Zaras"           | 41                    | 59                  | 69                |
| 11   | "Darren Parsons"      | 2                     | 3                   | 66                |
| 12   | "Hertrech Eugene Jr." | 31                    | 50                  | 62                |
| 13   | "Zac Mertens"         | 14                    | 23                  | 60                |
| 14   | "Suppy"               | 18                    | 30                  | 60                |
| 15   | "John Naderi"         | 29                    | 48                  | 60                |
| 16   | "Brian Scotto"        | 39                    | 64                  | 60                |
| 17   | "John Chase"          | 16                    | 27                  | 59                |
| 18   | "Micah Diaz"          | 20                    | 35                  | 57                |
| 19   | "Vinny Anatra"        | 40                    | 72                  | 55                |
| 20   | "Dan Sommer"          | 35                    | 65                  | 53                |
| 21   | "Larry Chen"          | 3                     | 9                   | 33                |
| 22   | "Blake Wilkey"        | 0                     | 1                   | 0                 |
| 23   | "Sammy Sammy"         | 0                     | 1                   | 0                 |
| 24   | "Nick Iannotti"       | 0                     | 1                   | 0                 |
| 25   | "Kevin Lo"            | 0                     | 1                   | 0                 |
| 26   | "Sean Smith"          | 0                     | 1                   | 0                 |
| 27   | "Rhys Millen"         | 0                     | 1                   | 0                 |
| 28   | "Rob Dahm"            | 0                     | 1                   | 0                 |
| 29   | "Gary King Jr."       | 0                     | 1                   | 0                 |
| 30   | "Bryce Menzies"       | 0                     | 1                   | 0                 |

</div>

<div class="o-main-hoonigan-stats__corrected">

### Corrected to exclude 100% and 0% correct-ness

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 41                    | 59                  | 69                |
| 2    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 3    | "Hertrech Eugene Jr." | 31                    | 50                  | 62                |
| 4    | "John Naderi"         | 29                    | 48                  | 60                |
| 5    | "Zac Mertens"         | 14                    | 23                  | 60                |
| 6    | "Brian Scotto"        | 39                    | 64                  | 60                |
| 7    | "Suppy"               | 18                    | 30                  | 60                |
| 8    | "John Chase"          | 16                    | 27                  | 59                |
| 9    | "Micah Diaz"          | 20                    | 35                  | 57                |
| 10   | "Vinny Anatra"        | 40                    | 72                  | 55                |
| 11   | "Dan Sommer"          | 35                    | 65                  | 53                |
| 12   | "Larry Chen"          | 3                     | 9                   | 33                |

</div>

<div class="o-main-hoonigan-stats__40-perc">

### Only include Hoonigans that had an attendance of >=40%

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 41                    | 59                  | 69                |
| 2    | "Hertrech Eugene Jr." | 31                    | 50                  | 62                |
| 3    | "John Naderi"         | 29                    | 48                  | 60                |
| 4    | "Brian Scotto"        | 39                    | 64                  | 60                |
| 5    | "Micah Diaz"          | 20                    | 35                  | 57                |
| 6    | "Vinny Anatra"        | 40                    | 72                  | 55                |
| 7    | "Dan Sommer"          | 35                    | 65                  | 53                |

</div>

<div class="o-main-hoonigan-stats__70-perc">

### Only include Hoonigans that had an attendance of >=70%

| "id" | "given_by"     | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | -------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"    | 41                    | 59                  | 69                |
| 2    | "Brian Scotto" | 39                    | 64                  | 60                |
| 3    | "Vinny Anatra" | 40                    | 72                  | 55                |
| 4    | "Dan Sommer"   | 35                    | 65                  | 53                |

</div>

<div class="o-main-hoonigan-playlist-wrap">
	<h3>Watch This vs. That Episodes</h3>
	<a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank"><img src="/img/yt_logo_rgb_light.png" alt="Youtube Logo"></a>
</div>