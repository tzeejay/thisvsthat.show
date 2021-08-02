+++
title = "Hello World"
description = "A poor attempt at trying to explain myself and what the hell I am doing here"
date = 2021-08-02
+++

This vs. That stats! What a dumb, but very fun idea of mine...  
First of all I want to once again get out of the way that I am not affiliated with Hoonigan in any way and do not claim ownership or copyright or trademarks of anything, hoping that I wont get sued this way and will be allowed to continue providing this record of data. This is an innocent attempt at keeping the internet a weird and fun place to explore.  
I do not intend on using this domain to host any hateful or damaging content in any relation to Hoonigan or any of it's employees specifically, nor do I intend to host anything else other than this website showing some statistics.
The domain was simply free and I figured I build some fun for myself and others to enjoy.

Having said all of that, I believe that only two kinds of people are going to visit this website:

1. Those that ended up here accidentally
2. Those that actually had these questions as well but weren't sure where to start or how to answer them

I hope you enjoy this little project of mine either way.    
The collective efforts to keep us petrol sniffing idiots entertained in a safe manner while a pandemic was raging uncontrollably around the world was one of the things that kept me sane to be very honest with you. I looked forward to new episodes of unexpected races and tons of banter on Monday evenings and kept trying to predict which driver + car combination was going to win. This website is a small attempt of mine to provide something, anything, in return to everybody involved at Hoonigan.


### (Non nerdy version) How I went about this
I rewatched every episode (as of writing this it's 52) and skipped around to extract the information I was looking for. Specifically I collected the episode title, Youtube URL and the publish date. I also collected the car details (the accuracy of the provided data is hit or miss) and which car was predicted by whom for each race as well as the winner for each race. Most of this data was straight forward to collect but there are one or two (if memory serves) episodes which were mostly "let's have some fun" where I had to make a choice about what the information was going to look like.
As I was going through the episodes I kept trying to predict the winner myself though I have never included myself in the dataset, as this isn't about me and there would be no video proof that I wasn't cheating in any way.


### (Nerdy version) How I went about this
The non nerdy version already has a few base details but to get a little more into the weeds, this website is built with [Hugo](https://gohugo.io) as a static website site. There is no executable code anywhere around here, just plain ol' boring HTML + CSS files served by a web server like it's 1999. I am not a friend of the modern web and it's brute force inefficiency approach to solving problems. Constraints always lead to smarter and objectively better solutions in my opinion and by staying on this path it will also allow me to host this website on a [Raspberry Pi](https://www.raspberrypi.org/).  
The collected data was entered by hand into a locally running PostgreSQL 12 database thanks to the help of [Postico](https://eggerapps.at/postico/) on my MacBook Pro. I will try to regularly provide tar bundles containing CSV exports of all the data as well as the output of `pg_dump` so that other people can reconstruct this information 1:1 wherever they like and run queries for themselves.  
My idea behind it was that the CSV should be able to get the info into something like Excel and the PG dump will obviously give you an exact copy of how I am interacting with all of this.  
All the information will be open source and available on Github, though for the time being I will consider my MacBook Pro the source of truth. 
There is no fancy anything here really, I export the query results out of Postico as a .csv and use `mdt` ([link](https://github.com/monochromegane/mdt)) on my MacBook Pro to get [Markdown](https://daringfireball.net/projects/markdown/) tables which I then paste into this project's index.md file.  
I use Panic's excellent [Nova](https://nova.app) text editor to get all of this done easily and deploy this website via a Github CI Action which rsyncs the generated collection of .html, .xml and .css files onto my web server.

I know that given the data, parts of this or the entirety could be automated but I wanted to keep it super minimal effort to maintain in the long run. If I get sick of it or annoyed I am sure that I will automate those things. After all it's all just 0s and 1s so I can make them do anything.