---
layout: post
title: Visualizing Summer Travels
date: 2014-08-30 18:29:17-07:00
permalink: /2014/08/visualizing-summer-travels/
---

![projected-shapefile-gps-coordinates]({{ "/files/img/projected-shapefile-gps-coordinates.png" | relative_url }})

- [Part 2: interactive web maps with CartoDB]({{ "/2014/08/visualizing-summer-travels-with-cartodb/" | relative_url }})
- [Part 3: interactive javascript web maps with Leaflet]({{ "/2014/08/visualizing-summer-travels-part-3-leaflet/" | relative_url }})
- [Part 4: interactive tiled web maps with Mapbox and Tilemill]({{ "/2014/08/visualizing-summer-travels-part-4-mapbox-tilemill/" | relative_url }})
- [Part 5: visualizing data with Python and matplotlib]({{ "/2014/08/visualizing-summer-travels-part-5-python-matplotlib/" | relative_url }})
- [Part 6: projecting spatial data and making beautiful maps with Python]({{ "/2014/09/visualizing-summer-travels-part-6-projecting-spatial-data-python/" | relative_url }})

My Python code is available in
[this GitHub repo](https://github.com/gboeing/2014-summer-travels). I also did
some more involved work under the hood to prep the data and support these
visualizations. For example, in the following posts I reverse-geocoded the
spatial data set and reduced its size with clustering algorithms and the
Douglas-Peucker algorithm:

- [Reverse-geocoding the data set to get city and country data]({{ "/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/" | relative_url }})
- [Reducing the size of the data set with DBSCAN clustering]({{ "/2014/08/clustering-to-reduce-spatial-data-set-size/" | relative_url }})
- [Reducing the size of the data set with the Douglas-Peucker algorithm]({{ "/2014/08/reducing-spatial-data-set-size-with-douglas-peucker/" | relative_url }})

This series serves as an introduction and tutorial for these various
technologies and methods. It was a rewarding exercise to explore these different
web mapping platforms, write a reverse-geocoder, and practice clustering and
geometry simplification. Click the links through to the individual posts for
full details and lots of visualizations.

## Interactive maps

Here are some brief highlights. This interactive [CartoDB]({{ "/2014/08/visualizing-summer-travels-with-cartodb/" | relative_url }}) map displays
my location data set and provides city, country, and date/time information if
you hover over any point:

I also visualized this spatial data as an interactive map using the
[Leaflet]({{ "/2014/08/visualizing-summer-travels-part-3-leaflet/" | relative_url }}) javascript library, and
by rolling my own set of web map tiles then rendering them with [Tilemill and
Mapbox]({{ "/2014/08/visualizing-summer-travels-part-4-mapbox-tilemill/" | relative_url }}).

## Exploring the data set

Beyond mapping my GPS location points, I also visualized other aspects of this
data set. This [matplotlib]({{ "/2014/08/visualizing-summer-travels-part-5-python-matplotlib/" | relative_url }}) pie chart breaks out the cities I
visited, by their share of observations in the data set:

![matplotlib-pie-cities-by-share]({{ "/files/img/matplotlib-pie-cities-by-share.png" | relative_url }})

I also calculated the most isolated locations in my data set. These locations
are spatially isolated from other data points either because I flew in/out of
them, or because I didn't have cell service to transmit location data anywhere
else near them. This [matplotlib]({{ "/2014/09/visualizing-summer-travels-part-6-projecting-spatial-data-python/" | relative_url }}) image
plots a projected shapefile and my GPS location data to show these isolated
clusters:

![most-isolated-projected]({{ "/files/img/most-isolated-projected.png" | relative_url }})

There is much more in the full posts, along with full explanations of how I
developed everything and visualized different aspects of the trip.
