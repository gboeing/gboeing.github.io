---
layout: post
title: Mapping Your Google Location History with Python
date: 2016-06-21 20:25:59-07:00
permalink: /2016/06/mapping-google-location-history-python/
---

I recently wrote
about visualizing my [Foursquare check-in history]({{ site.url }}{{
site.baseurl }}/2016/04/visualize-foursquare-history/) and it inspired me to map
my entire Google location history data - about 1.2 million GPS coordinates from
my Android phone between 2012 and 2016. I used Python and its pandas,
matplotlib, and basemap libraries. The Python code is available in
[this notebook](https://github.com/gboeing/data-visualization/blob/master/location-history/google-location-history-simple.ipynb)
in this
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/location-history),
and it's simple to re-use to visualize your own location history.

Just download your JSON file
[from Google](https://accounts.google.com/ServiceLogin?service=backup) then run
the code. First I load the JSON file and parse the latitude, longitude, and
timestamp with pandas. Then I map my worldwide data set:

![Map of my Google location history data worldwide, 2012-2016]({{ site.url
}}{{ site.baseurl
}}/files/img/google_location_history_world_map-1024x627.png)

Python and basemap are great for quickly making attractive maps of large
geospatial data sets. The map above shows all 1.2 million GPS points in my
Google location history, with the Kavrayskiy VII map projection. Next, I define
a transverse Mercator projection for California and plot a zoomed-in view of my
location history:

![Map of my Google GPS location history data in California, made with Python
matplotlib basemap]({{ site.url }}{{ site.baseurl
}}/files/img/google_location_history_cal_map-831x1024.png)

You can see most of my time is spent around the Bay Area, with additional trips
around and across California. Lake Tahoe is the little loop in Northern
California along the border with Nevada, and Joshua Tree is the big loop east of
Los Angeles. It would be nice if there were annotations, so let's define a
transverse Mercator projection centered on the San Francisco Bay Area and map an
even more zoomed-in view of my location history:

![Map of my Google GPS location history data in the San Francisco Bay Area of
Northern California, made with Python matplotlib basemap]({{ site.url }}{{
site.baseurl
}}/files/img/google_location_history_sf_bay_map-1-831x1024.png)

This map's annotations for San Francisco, Berkeley, and San Jose are all done in
pure Python. Check out the IPython
[notebook](https://github.com/gboeing/data-visualization/blob/master/location-history/google-location-history-simple.ipynb)
with my code in this
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/location-history)
and feel free to re-purpose it to map your own Google location history. You
might also be interested in [mapping everywhere you've ever been]({{ site.url
}}{{ site.baseurl }}/2016/06/mapping-everywhere-ever-been/), analyzing your
[Foursquare check-in history]({{ site.url }}{{ site.baseurl
}}/2016/04/visualize-foursquare-history/), or our [course at UC Berkeley]({{
site.url }}{{ site.baseurl }}/2015/08/urban-informatics-visualization-berkeley/)
that teaches these skills and tools.
