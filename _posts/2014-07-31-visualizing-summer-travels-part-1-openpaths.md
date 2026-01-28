---
layout: post
title: 'Visualizing Summer Travels Part 1: OpenPaths'
date: 2014-07-31 18:09:52-07:00
permalink: /2014/07/visualizing-summer-travels-part-1-openpaths/
---

_This post is [part of a series][5] on visualizing data from my summer travels._

Oscar Levant once said that "happiness isn't something you experience; it's
something you remember." We humans have a way of constructing and reconstructing
experiences and memories through the methods by which we recall them. The
endlessly repeated anecdote from your vacation in Italy eventually becomes
emblematic of the larger trip. The photograph on the wall from your wedding day
becomes a synecdoche for the entire event.

I spent the past two months in Europe and documented my travels through a set of
photographs which have become emblematic, for me, of packages of experiences
from different places. However, they are often skewed and selective, telling
only one deliberate perspective of a wider, richer experience. Another way to
remember and reminisce about one's travels is through maps. Where did I go? What
path did I take? How did the parts of the trip fit together? The answers to
these questions are useful in revealing another perspective of the larger
experience.

## Data Collection with OpenPaths

To that end, I am exploring several web mapping techniques to visualizing where
I went and what paths I followed this summer. My location data comes from
OpenPaths. This app uploads location data from your mobile device to their web
site at a customizable frequency interval. You own your data. It is secure and
protected and no one else can access it unless you explicitly grant them
permission. Researchers can share project proposals with you, but it's up to you
to decide on a case by case basis if you'll donate your anonymized location data
to their cause. Furthermore, you can work with your dataset through the
OpenPaths API or export it as a CSV file, etc.

I traveled through Europe with my unlocked Android phone (a Nexus 4, which works
globally on GSM networks) on T-Mobile's [Simple Choice][2] plan, which includes
unlimited free international data roaming in its $50/month price tag. The plan
covers most European nations other than Albania and the former Yugoslav states,
which I did travel through.

This means that OpenPaths was able to upload my GPS location data regularly
throughout my trip, via cellular data, except while in these Balkan countries.
There, my location data was only uploaded while I was connected to WiFi. The
dataset I'll be mapping contains approximately 1,800 time-stamped lat-long
coordinate points and is [available here][1]. I discuss how I [reverse-geocoded
it here][3].

## Goals and Next Steps

I'll subsequently explore how to visualize this location data with two goals in
mind. First, which tools and techniques work well for posterity's sake? How can
I remember and explore where I went and what I did on this trip, using location
data? The second goal is to play with web mapping tools and evaluate them
against each other. This learning experience can help inform the upcoming Urban
Informatics and Visualization course at UC Berkeley this fall semester, for
which I am the grad student instructor. Let's [dig in][4].

[1]: https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-full.csv
[2]: https://www.t-mobile.com/simple-choice-international-plans.html
[3]: {{ "/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/" | relative_url }}
[4]: {{ "/2014/08/visualizing-summer-travels-with-cartodb/" | relative_url }}
[5]: {{ "/2014/08/visualizing-summer-travels/" | relative_url }}
