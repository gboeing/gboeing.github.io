---
layout: post
title: Isochrone Maps with OSMnx + Python
date: 2017-08-02 21:43:38-07:00
permalink: /2017/08/isochrone-maps-osmnx-python/
---

_Check out the [journal article]({{ "/publications/osmnx-complex-street-networks/" | relative_url }}) about OSMnx._

How far can you travel on foot in 15 minutes? Urban planners use isochrone maps
to show spatial horizons (i.e., isolines) that are equal in time. Isochrones
depict areas according to how long it takes to arrive there from some point.
These visualizations are particularly useful in transportation planning as they
reveal what places are accessible within a set of time horizons.

We can create isochrone maps for anywhere in the world automatically with Python
and its [OSMnx]({{ "/2016/11/osmnx-python-street-networks/" | relative_url }}) package:

![OSMnx map of isochrone isolines in Berkeley California's street network]({{ "/files/img/osmnx-isochrone-lines-berkeley.png" | relative_url }})

This travel time map shows how far we can walk in 5, 10, 15, 20, and 25 minutes
from an origin point in downtown Berkeley, given an average walking speed of 4.5
km/hour (about 2.8 miles/hour). We can also visualize this by which _points_
along the network we can reach within 5, 10, 15, 20, and 25 minutes:

![OSMnx map of isochrone points in Berkeley California's street network]({{ "/files/img/osmnx-isochrone-points-berkeley.png" | relative_url }})

You can create your own travel time maps for any city in the world by following
[this example](https://github.com/gboeing/osmnx-examples/blob/v0.13.0/notebooks/13-isolines-isochrones.ipynb)
in the [OSMnx usage examples](https://github.com/gboeing/osmnx-examples) GitHub
repo. [OSMnx]({{ "/2016/11/osmnx-python-street-networks/" | relative_url }}) is a Python package for easily
downloading, analyzing, and visualizing OpenStreetMap street networks anywhere
in the world. Installation instructions are
[on GitHub](https://github.com/gboeing/osmnx).

If you're interested in routing, travel times, and imputing road speeds, make
sure to check out OSMnx's new [speed]({{ "/2020/06/whats-new-with-osmnx/" | relative_url }}) module.
