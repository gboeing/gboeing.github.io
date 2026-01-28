---
layout: post
title: Mapping Everywhere I've Ever Been in My Life
date: 2016-06-27 16:39:10-07:00
permalink: /2016/06/mapping-everywhere-ever-been/
---

I recently wrote about visualizing my [Foursquare check-in history]({{ "/2016/04/visualize-foursquare-history/" | relative_url }}) and mapping
my [Google location history]({{ "/2016/06/mapping-google-location-history-python/" | relative_url }}), and it inspired me to mount
a more substantial project: mapping everywhere I've ever been in my life (!!).
I've got 4 years of Foursquare check-ins and Google location history data. For
everything pre-smart phone, I typed up a simple spreadsheet of places I'd
visited in the past and then geocoded it with the Google Maps API. All my Python
and Leaflet code is available in
[this GitHub repo](https://github.com/gboeing/data-visualization/tree/master/location-history)
and is easy to re-purpose to visualize your own location history.

I'll show the maps first, then run through the process I followed, below. First
off, I used Python and matplotlib basemap to create this map of everywhere I've
ever been:

![Location History World Map, data from Foursquare and Google, made with Python
matplotlib basemap]({{ "/files/img/location_history_world_map-1-1024x622.png" | relative_url }})

I also made an interactive web map with Leaflet that you can zoom into and click
any point for details:

## Overview of the data and process

I downloaded, processed, combined, and mapped my location history data from
three sources:

1. My Google location history
1. My Foursquare/Swarm check-ins
1. A simple spreadsheet of pre-smart phone travels

As for the process itself, here is an overview of the steps (described in detail
in the following sections):

1. Download and process my [Foursquare/Swarm check-in history]({{ "/2016/04/visualize-foursquare-history/" | relative_url }})
1. Download my [Google location history]({{ "/2016/06/mapping-google-location-history-python/" | relative_url }}) from their Takeout site
1. [Cluster]({{ "/2014/08/clustering-to-reduce-spatial-data-set-size/" | relative_url }}) my Google location
   data set to reduce its size (for Leaflet)
1. [Reverse-geocode]({{ "/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/" | relative_url }})
   this reduced Google location history data set
1. Create a simple spreadsheet of pre-smart phone travels, then geocode it
1. Combine the Foursquare check-in history, the Google location history, and the
   previous travels data and then map it with Python and Leaflet.

That's the overview. Here are the details...

## Foursquare and Google location data

First, I downloaded my entire Foursquare/Swarm check-in history from their API,
wrangled it, and analyzed it with Python and matplotlib, as described in [this
post]({{ "/2016/04/visualize-foursquare-history/" | relative_url }}).
I looked at the countries, cities, venues, and venue categories that I have
checked-into the most often. Then I analyzed my check-in history over time by
visualizing the check-ins per month, per day of the week, and per hour of the
day.

![Visualizing Foursquare/Swarm check-in history: most common countries checked
into]({{ "/files/img/foursquare_common_countries.png" | relative_url }})

Next I downloaded my Google location history from the Google
[Takeout](https://accounts.google.com/ServiceLogin?service=backup) site. It
contains approximately 1.2 million GPS coordinates from my Android phone between
2012 and 2016. This huge JSON file works great as-is for mapping and visualizing
in its entirety with Python, as I describe in [this post]({{ "/2016/06/mapping-google-location-history-python/" | relative_url }}). I mapped my
worldwide Google location history, as well as closer looks at California and the
San Francisco Bay Area.

![Mapping everywhere I've ever been: a small map of my Google location history
data in the San Francisco Bay Area, 2012-2016]({{ "/files/img/google_location_history_sf_bay_map-small-brdr.jpg" | relative_url }})

## Clustering and reverse-geocoding

For this current project, I wanted to additionally visualize my Google location
history data as an interactive Leaflet web map, but I can't do that with 1.2
million data points in a 300mb data file. But most of these GPS coordinates are
redundant, such as hundreds of thousands of duplicate points at my house
accumulating over time.

So, I drastically reduced the size of this Google location history data set with
DBSCAN clustering, using the code in
[this notebook](https://github.com/gboeing/data-visualization/blob/master/location-history/google-location-history-cluster.ipynb).
And see this prior blog post on [reducing spatial data with clustering]({{ "/2014/08/clustering-to-reduce-spatial-data-set-size/" | relative_url }}) for full details.
Clustering cut my data set down from 1.2 million points to the 3,500 most
spatially-representative points (that's a 99.7% reduction). Not only are 3,500
points easily mapped in JavaScript with Leaflet, but they're also easily
reverse-geocoded to get the neighborhood, city, state, and country for each data
point, without spending weeks making a million API calls.

Accordingly, [I reverse-geocoded]({{ "/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/" | relative_url }}) each
point in my cluster-reduced Google location history data set with the Google
Maps reverse- geocoding API, using the code in
[this notebook](https://github.com/gboeing/data-visualization/blob/master/location-history/google-location-history-reverse-geocode.ipynb).
I added local caching of results so you only have to call the API once ever for
a given set of coordinates. This makes repeated runs of the notebook nearly
instantaneous (and no repeated API calls to count against your daily quota).

## Putting it all together and mapping it

Finally, I created a simple spreadsheet of my pre-smart phone travels with
columns for the place's name, the city, country, and date. I geocoded this
spreadsheet using the Google Maps geocoding API with the code in
[this notebook](https://github.com/gboeing/data-visualization/blob/master/location-history/previous-travels-history-geocode.ipynb).
Then I put all three processed data sets together: the Foursquare check-in
history, the Google location history, and the previous travels. I mapped the
combined location history data with Python's matplotlib basemap toolkit and
saved my data as GeoJSON for Leaflet web mapping - all using the code in
[this notebook](https://github.com/gboeing/data-visualization/blob/master/location-history/visualize-location-history.ipynb).
The final product can be seen at the beginning of this post.

My entire project is in this
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/location-history).
Feel free to re-purpose it to visualize your own location history. You might
also be interested in:

- Simply mapping your [Google location history]({{ "/2016/06/mapping-google-location-history-python/" | relative_url }}) with Python
- Visualizing and mapping your [Foursquare check-in history]({{ "/2016/04/visualize-foursquare-history/" | relative_url }})
- [Clustering to reduce]({{ "/2014/08/clustering-to-reduce-spatial-data-set-size/" | relative_url }}) spatial data set size
- [Reverse-geocoding]({{ "/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/" | relative_url }})
  latitude-longitude to city + country
- Exporting [pandas DataFrames to GeoJSON]({{ "/2015/10/exporting-python-data-geojson/" | relative_url }})
- Our [course at UC Berkeley]({{ "/2015/08/urban-informatics-visualization-berkeley/" | relative_url }}) that teaches these
  skills and tools
