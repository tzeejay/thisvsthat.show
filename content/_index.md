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
| 2    | "Alex Grimm"          | 1                     | 1                   | 100               |
| 3    | "Alex Andonian "      | 1                     | 1                   | 100               |
| 4    | "Charlie Ashby"       | 1                     | 1                   | 100               |
| 5    | "Emelia Hartford"     | 1                     | 1                   | 100               |
| 6    | "Gary King Jr"        | 1                     | 1                   | 100               |
| 7    | "Alex Hernandez"      | 1                     | 1                   | 100               |
| 8    | "Cole Powelson"       | 1                     | 1                   | 100               |
| 9    | "Ron Zaras"           | 37                    | 54                  | 68                |
| 10   | "Darren Parsons"      | 2                     | 3                   | 66                |
| 11   | "Zac Mertens"         | 13                    | 20                  | 65                |
| 12   | "Suppy"               | 13                    | 20                  | 65                |
| 13   | "Hertrech Eugene Jr." | 24                    | 39                  | 61                |
| 14   | "Brian Scotto"        | 36                    | 59                  | 61                |
| 15   | "John Chase"          | 15                    | 25                  | 60                |
| 16   | "Micah Diaz"          | 17                    | 28                  | 60                |
| 17   | "Vinny Anatra"        | 35                    | 61                  | 57                |
| 18   | "John Naderi"         | 24                    | 42                  | 57                |
| 19   | "Dan Sommer"          | 30                    | 55                  | 54                |
| 20   | "Larry Chen"          | 3                     | 9                   | 33                |
| 21   | "Nick Iannotti"       | 0                     | 1                   | 0                 |
| 22   | "Bryce Menzies"       | 0                     | 1                   | 0                 |
| 23   | "Sean Smith"          | 0                     | 1                   | 0                 |
| 24   | "Sammy Sammy"         | 0                     | 1                   | 0                 |
| 25   | "Rhys Millen"         | 0                     | 1                   | 0                 |
| 26   | "Gary King Jr."       | 0                     | 1                   | 0                 |
| 27   | "Rob Dahm"            | 0                     | 1                   | 0                 |
| 28   | "Blake Wilkey"        | 0                     | 1                   | 0                 |

</div>

<div class="o-main-hoonigan-stats__corrected">

### Corrected to exclude 100% and 0% correct-ness

| "id" | "given_by"            | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | --------------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"           | 37                    | 54                  | 68                |
| 2    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 3    | "Suppy"               | 13                    | 20                  | 65                |
| 4    | "Zac Mertens"         | 13                    | 20                  | 65                |
| 5    | "Hertrech Eugene Jr." | 24                    | 39                  | 61                |
| 6    | "Brian Scotto"        | 36                    | 59                  | 61                |
| 7    | "Micah Diaz"          | 17                    | 28                  | 60                |
| 8    | "John Chase"          | 15                    | 25                  | 60                |
| 9    | "John Naderi"         | 24                    | 42                  | 57                |
| 10   | "Vinny Anatra"        | 35                    | 61                  | 57                |
| 11   | "Dan Sommer"          | 30                    | 55                  | 54                |
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
| 1    | "Ron Zaras"           | 37                    | 54                  | 68                |
| 2    | "Brian Scotto"        | 36                    | 59                  | 61                |
| 3    | "Hertrech Eugene Jr." | 24                    | 39                  | 61                |
| 4    | "Micah Diaz"          | 17                    | 28                  | 60                |
| 5    | "John Naderi"         | 24                    | 42                  | 57                |
| 6    | "Vinny Anatra"        | 35                    | 61                  | 57                |
| 7    | "Dan Sommer"          | 30                    | 55                  | 54                |

</div>

<div class="o-main-hoonigan-stats__70-perc">

### Only include Hoonigans that had an attendance of >=70%

| "id" | "given_by"     | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | -------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"    | 37                    | 54                  | 68                |
| 2    | "Brian Scotto" | 36                    | 59                  | 61                |
| 3    | "Vinny Anatra" | 35                    | 61                  | 57                |
| 4    | "Dan Sommer"   | 30                    | 55                  | 54                |

</div>

<div class="o-main-hoonigan-playlist-wrap">
	<h3>Watch This vs. That Episodes</h3>
	<a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank"><img src="/img/yt_logo_rgb_light.png" alt="Youtube Logo"></a>
</div>