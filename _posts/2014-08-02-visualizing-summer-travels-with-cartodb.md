---
layout: post
title: 'Visualizing Summer Travels Part 2: CartoDB'
date: 2014-08-02 18:30:08-07:00
permalink: /2014/08/visualizing-summer-travels-with-cartodb/
---

_This post is [part of a series]({{ "/2014/08/visualizing-summer-travels/" | relative_url }}) on
visualizing data from my summer travels._

I [recently discussed]({{ "/2014/07/visualizing-summer-travels-part-1-openpaths/" | relative_url }}) OpenPaths and my goals in visualizing location data
from my summer travels. In this post, I'll explore visualizing this dataset with
[CartoDB](https://cartodb.com/). The OpenPaths data from my summer travels,
which I'll be working with in these examples, is
[available here](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-full.csv)
and I discuss how I [reverse-geocoded it here]({{ "/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/" | relative_url }}).
CartoDB is a simple cloud-based tool for building web maps. You can import data
through their web-based dashboard and quickly turn it into a dynamic map or
visualization.

First, create an account and then go to your dashboard. Upload your location
dataset as a new table, then click "map" to quickly generate a simple, default
map of your dataset. The interactive map below displays my GPS location data
over these two months as a set of static points:

This map is useful for displaying where I was, but from a high-level view it
does not provide much other information. If you zoom in all the way to a place
where I spent a lot of time (such as Barcelona, for example), you will find far
more point data than you will in a place where I have only a single GPS point
while in transit between locations. How can we better represent duration and
paths through time and space?

## Time and Flows in CartoDB

This next map uses CartoDB's "torque" tool to create a dynamic visualization
that does a better job of displaying paths and durations. In 30 seconds and 512
animation steps, it cycles through the approximately 1,800 location coordinates
in my dataset. The dot pauses for a proportional amount of time in the locations
where I spent more time, and zips quickly through the point data when I was in
transit between locations.

These are two different ways of quickly and simply visualizing a location
dataset. CartoDB is good for producing a nice-looking map in a short amount of
time without requiring technical skills, but its customizability is in turn
somewhat limited. Next, I'll explore the [Leaflet]({{ "/2014/08/visualizing-summer-travels-part-3-leaflet/" | relative_url }}) javascript
library for mapping and visualizing this data, with a bit more for us to do
under the hood.
