---
layout: post
title: Visualizing Summer Travels
date: 2014-08-30 18:29:17-07:00
permalink: /2014/08/visualizing-summer-travels/
---

![projected-shapefile-gps-coordinates]({{ site.url }}{{ site.baseurl
}}/files/img/projected-shapefile-gps-coordinates.png)

- [Part 2: interactive web maps with CartoDB]({{ site.url }}{{ site.baseurl
  }}/2014/08/visualizing-summer-travels-with-cartodb/ "Visualizing Summer
  Travels Part 2: CartoDB")
- [Part 3: interactive javascript web maps with Leaflet]({{ site.url }}{{
  site.baseurl }}/2014/08/visualizing-summer-travels-part-3-leaflet/
  "Visualizing Summer Travels Part 3: Leaflet")
- [Part 4: interactive tiled web maps with Mapbox and Tilemill]({{ site.url
  }}{{ site.baseurl
  }}/2014/08/visualizing-summer-travels-part-4-mapbox-tilemill/ "Visualizing
  Summer Travels Part 4: Mapbox + Tilemill")
- [Part 5: visualizing data with Python and matplotlib]({{ site.url }}{{
  site.baseurl }}/2014/08/visualizing-summer-travels-part-5-python-matplotlib/
  "Visualizing Summer Travels Part 5: Python + Matplotlib")
- [Part 6: projecting spatial data and making beautiful maps with Python]({{
  site.url }}{{ site.baseurl
  }}/2014/09/visualizing-summer-travels-part-6-projecting-spatial-data-python/
  "Visualizing Summer Travels Part 6: Projecting Spatial Data in Python")

My Python code is available in
[this GitHub repo](https://github.com/gboeing/2014-summer-travels). I also did
some more involved work under the hood to prep the data and support these
visualizations. For example, in the following posts I reverse-geocoded the
spatial data set and reduced its size with clustering algorithms and the
Douglas-Peucker algorithm:

- [Reverse-geocoding the data set to get city and country data]({{ site.url
  }}{{ site.baseurl
  }}/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/
  "Reverse Geocode a Set of Lat-Long Coordinates to City + Country")
- [Reducing the size of the data set with DBSCAN clustering]({{ site.url }}{{
  site.baseurl }}/2014/08/clustering-to-reduce-spatial-data-set-size/
  "Clustering to Reduce Spatial Data Set Size")
- [Reducing the size of the data set with the Douglas-Peucker algorithm]({{
  site.url }}{{ site.baseurl
  }}/2014/08/reducing-spatial-data-set-size-with-douglas-peucker/ "Reducing
  Spatial Data Set Size with Douglas-Peucker")

This series serves as an introduction and tutorial for these various
technologies and methods. It was a rewarding exercise to explore these different
web mapping platforms, write a reverse-geocoder, and practice clustering and
geometry simplification. Click the links through to the individual posts for
full details and lots of visualizations.

## Interactive maps

Here are some brief highlights. This interactive [CartoDB]({{ site.url }}{{
site.baseurl }}/2014/08/visualizing-summer-travels-with-cartodb/) map displays
my location data set and provides city, country, and date/time information if
you hover over any point:

I also visualized this spatial data as an interactive map using the
[Leaflet]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing-summer-travels-part-3-leaflet/) javascript library, and
by rolling my own set of web map tiles then rendering them with [Tilemill and
Mapbox]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing-summer-travels-part-4-mapbox-tilemill/).

## Exploring the data set

Beyond mapping my GPS location points, I also visualized other aspects of this
data set. This [matplotlib]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing-summer-travels-part-5-python-matplotlib/ "Visualizing
Summer Travels Part 5: Python + Matplotlib") pie chart breaks out the cities I
visited, by their share of observations in the data set:

![matplotlib-pie-cities-by-share]({{ site.url }}{{ site.baseurl
}}/files/img/matplotlib-pie-cities-by-share.png)

I also calculated the most isolated locations in my data set. These locations
are spatially isolated from other data points either because I flew in/out of
them, or because I didn't have cell service to transmit location data anywhere
else near them. This [matplotlib]({{ site.url }}{{ site.baseurl
}}/2014/09/visualizing-summer-travels-part-6-projecting-spatial-data-python/
"Visualizing Summer Travels Part 6: Projecting Spatial Data in Python") image
plots a projected shapefile and my GPS location data to show these isolated
clusters:

![most-isolated-projected]({{ site.url }}{{ site.baseurl
}}/files/img/most-isolated-projected.png)

There is much more in the full posts, along with full explanations of how I
developed everything and visualized different aspects of the trip.
