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
| 1    | "Charlie Ashby"       | 1                     | 1                   | 100               |
| 2    | "Cole Powelson"       | 1                     | 1                   | 100               |
| 3    | "Gary King Jr"        | 1                     | 1                   | 100               |
| 4    | "Emelia Hartford"     | 1                     | 1                   | 100               |
| 5    | "Alex Andonian "      | 1                     | 1                   | 100               |
| 6    | "Suppy"               | 13                    | 18                  | 72                |
| 7    | "Ron Zaras"           | 34                    | 50                  | 68                |
| 8    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 9    | "Micah Diaz"          | 15                    | 24                  | 62                |
| 10   | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 11   | "Vinny Anatra"        | 33                    | 54                  | 61                |
| 12   | "Zac Mertens"         | 11                    | 18                  | 61                |
| 13   | "Brian Scotto"        | 33                    | 55                  | 60                |
| 14   | "John Naderi"         | 22                    | 37                  | 59                |
| 15   | "John Chase"          | 13                    | 23                  | 56                |
| 16   | "Dan Sommer"          | 26                    | 48                  | 54                |
| 17   | "Larry Chen"          | 3                     | 9                   | 33                |
| 18   | "Nick Iannotti"       | 0                     | 1                   | 0                 |
| 19   | "Bryce Menzies"       | 0                     | 1                   | 0                 |
| 20   | "Sean Smith"          | 0                     | 1                   | 0                 |
| 21   | "Sammy Sammy"         | 0                     | 1                   | 0                 |
| 22   | "Gary King Jr."       | 0                     | 1                   | 0                 |
| 23   | "Rob Dahm"            | 0                     | 1                   | 0                 |
| 24   | "Blake Wilkey"        | 0                     | 1                   | 0                 |

</div>

<div class="o-main-hoonigan-stats__corrected">

### Corrected to exclude 100% and 0% correct-ness

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Suppy"               | 13                    | 18                  | 72                |
| 2    | "Ron Zaras"           | 34                    | 50                  | 68                |
| 3    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 4    | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 5    | "Micah Diaz"          | 15                    | 24                  | 62                |
| 6    | "Zac Mertens"         | 11                    | 18                  | 61                |
| 7    | "Vinny Anatra"        | 33                    | 54                  | 61                |
| 8    | "Brian Scotto"        | 33                    | 55                  | 60                |
| 9    | "John Naderi"         | 22                    | 37                  | 59                |
| 10   | "John Chase"          | 13                    | 23                  | 56                |
| 11   | "Dan Sommer"          | 26                    | 48                  | 54                |
| 12   | "Larry Chen"          | 3                     | 9                   | 33                |

</div>

<!-- <div class="o-main-hoonigan-stats__30-perc">

### Only include Hoonigans that had an attendance of >=30%

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 33                    | 48                  | 68                |
| 2    | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 3    | "Brian Scotto"        | 33                    | 53                  | 62                |
| 4    | "Micah Diaz"          | 14                    | 23                  | 60                |
| 5    | "John Naderi"         | 20                    | 34                  | 58                |
| 6    | "Vinny Anatra"        | 30                    | 51                  | 58                |
| 7    | "John Chase"          | 12                    | 21                  | 57                |
| 8    | "Dan Sommer"          | 25                    | 45                  | 55                |

</div> -->

<div class="o-main-hoonigan-stats__40-perc">

### Only include Hoonigans that had an attendance of >=40%

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 34                    | 50                  | 68                |
| 2    | "Hertrech Eugene Jr." | 23                    | 37                  | 62                |
| 3    | "Vinny Anatra"        | 33                    | 54                  | 61                |
| 4    | "Brian Scotto"        | 33                    | 55                  | 60                |
| 5    | "John Naderi"         | 22                    | 37                  | 59                |
| 6    | "Dan Sommer"          | 26                    | 48                  | 54                |

</div>

<div class="o-main-hoonigan-stats__70-perc">

### Only include Hoonigans that had an attendance of >=70%

| "id" | "given_by"     | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | -------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"    | 34                    | 50                  | 68                |
| 2    | "Vinny Anatra" | 33                    | 54                  | 61                |
| 3    | "Brian Scotto" | 33                    | 55                  | 60                |
| 4    | "Dan Sommer"   | 26                    | 48                  | 54                |

</div>

<div class="o-main-hoonigan-playlist-wrap">
	<h3>Watch This vs. That Episodes</h3>
	<a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank"><img src="/img/yt_logo_rgb_light.png" alt="Youtube Logo"></a>
</div>