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
| 10   | "Suppy"               | 16                    | 24                  | 66                |
| 11   | "Darren Parsons"      | 2                     | 3                   | 66                |
| 12   | "Zac Mertens"         | 13                    | 20                  | 65                |
| 13   | "Brian Scotto"        | 36                    | 59                  | 61                |
| 14   | "John Chase"          | 15                    | 25                  | 60                |
| 15   | "Micah Diaz"          | 19                    | 32                  | 59                |
| 16   | "Hertrech Eugene Jr." | 25                    | 42                  | 59                |
| 17   | "John Naderi"         | 27                    | 46                  | 58                |
| 18   | "Vinny Anatra"        | 36                    | 65                  | 55                |
| 19   | "Dan Sommer"          | 31                    | 58                  | 53                |
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
| 2    | "Suppy"               | 16                    | 24                  | 66                |
| 3    | "Darren Parsons"      | 2                     | 3                   | 66                |
| 4    | "Zac Mertens"         | 13                    | 20                  | 65                |
| 5    | "Brian Scotto"        | 36                    | 59                  | 61                |
| 6    | "John Chase"          | 15                    | 25                  | 60                |
| 7    | "Micah Diaz"          | 19                    | 32                  | 59                |
| 8    | "Hertrech Eugene Jr." | 25                    | 42                  | 59                |
| 9    | "John Naderi"         | 27                    | 46                  | 58                |
| 10   | "Vinny Anatra"        | 36                    | 65                  | 55                |
| 11   | "Dan Sommer"          | 31                    | 58                  | 53                |
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
| 3    | "Micah Diaz"          | 19                    | 32                  | 59                |
| 4    | "Hertrech Eugene Jr." | 25                    | 42                  | 59                |
| 5    | "John Naderi"         | 27                    | 46                  | 58                |
| 6    | "Vinny Anatra"        | 36                    | 65                  | 55                |
| 7    | "Dan Sommer"          | 31                    | 58                  | 53                |

</div>

<div class="o-main-hoonigan-stats__70-perc">

### Only include Hoonigans that had an attendance of >=70%

| "id" | "given_by"     | "correct_predictions" | "total_predictions" | "correct_percent" |
| ---- | -------------- | --------------------- | ------------------- | ----------------- |
| 1    | "Ron Zaras"    | 37                    | 54                  | 68                |
| 2    | "Brian Scotto" | 36                    | 59                  | 61                |
| 3    | "Vinny Anatra" | 36                    | 65                  | 55                |
| 4    | "Dan Sommer"   | 31                    | 58                  | 53                |

</div>

<div class="o-main-hoonigan-playlist-wrap">
	<h3>Watch This vs. That Episodes</h3>
	<a href="https://www.youtube.com/playlist?list=PLhU72li4fhIca_hXD0v8PFHRahreBuPJa" target="_blank"><img src="/img/yt_logo_rgb_light.png" alt="Youtube Logo"></a>
</div>