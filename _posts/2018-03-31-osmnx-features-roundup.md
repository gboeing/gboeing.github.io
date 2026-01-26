---
layout: post
title: OSMnx Features Round-Up
date: 2018-03-31 11:04:41-07:00
permalink: /2018/03/osmnx-features-roundup/
---

OSMnx is a Python package for quickly and easily downloading, modeling,
analyzing, and visualizing street networks and other spatial data from
OpenStreetMap. Here's a quick round-up of recent updates to [OSMnx]({{
site.url }}{{ site.baseurl }}/2016/11/osmnx-python-street-networks/). I'll try
to keep this up to date as a single reference source. A lot of new features have
appeared in the past few months, and people have been asking about what's new
and what's possible. You can:

- Download and model street networks or other networked infrastructure anywhere
  in the world with a single line of code
- Download any other spatial geometries, place boundaries, building footprints,
  or points of interest as a GeoDataFrame
- Download by city name, polygon, bounding box, or point/address + network
  distance
- Download drivable, walkable, bikeable, or all street networks
- Download node elevations and calculate edge grades (inclines)
- Impute missing speeds and calculate graph edge travel times
- Simplify and correct the network's topology to clean-up nodes and consolidate
  intersections
- Fast map-matching of points, routes, or trajectories to nearest graph edges or
  nodes
- Save networks to disk as shapefiles, geopackages, and GraphML
- Save/load street network to/from a local .osm xml file
- Conduct topological and spatial analyses to automatically calculate dozens of
  indicators
- Calculate and visualize street bearings and orientations
- Calculate and visualize shortest-path routes that minimize distance, travel
  time, elevation, etc
- Visualize street networks as a static map or interactive leaflet web map
- Visualize travel distance and travel time with isoline and isochrone maps
- Plot figure-ground diagrams of street networks and building footprints

Here are some research projects and publications using OSMnx for spatial network
analysis:

- [OSMnx: New Methods for Acquiring, Constructing, Analyzing, and Visualizing
  Complex Street Networks]({{ site.url }}{{ site.baseurl
  }}/publications/osmnx-complex-street-networks/)
- [A Multi-Scale Analysis of 27,000 Urban Street Networks: Every US City, Town,
  Urbanized Area, and Zillow Neighborhood]({{ site.url }}{{ site.baseurl
  }}/publications/multiscale-analysis-street-networks/)
- [Urban Spatial Order: Street Network Orientation, Configuration, and
  Entropy]({{ site.url }}{{ site.baseurl
  }}/publications/urban-spatial-order-entropy/)
- [Planarity and Street Network Representation in Urban Form Analysis]({{
  site.url }}{{ site.baseurl
  }}/publications/planarity-street-network-representation/)
- [Spatial Information and the Legibility of Urban Form: Big Data in Urban
  Morphology]({{ site.url }}{{ site.baseurl
  }}/publications/spatial-information-urban-morphology/)
- [Street Network Models and Measures for Every U.S. City, County, Urbanized
  Area, Census Tract, and Zillow-Defined Neighborhood]({{ site.url }}{{
  site.baseurl }}/publications/street-networks-models-measures/)
- [Urban Street Network Analysis in a Computational Notebook]({{ site.url }}{{
  site.baseurl }}/publications/street-network-computational-notebook/)
- [Methods and Measures for Analyzing Complex Street Networks and Urban
  Form]({{ site.url }}{{ site.baseurl }}/publications/dissertation/)
- [Exploring Urban Form Through OpenStreetMap Data: A Visual Introduction]({{
  site.url }}{{ site.baseurl
  }}/publications/exploring-urban-form-openstreetmap/)
- [The Morphology and Circuity of Walkable and Drivable Street Networks]({{
  site.url }}{{ site.baseurl
  }}/publications/morphology-circuity-street-networks/)

And here are some blog posts running through features, findings, and how-to:

- [OSMnx: Python for Street Networks]({{ site.url }}{{ site.baseurl
  }}/2016/11/osmnx-python-street-networks/)
- [What's New with OSMnx]({{ site.url }}{{ site.baseurl
  }}/2020/06/whats-new-with-osmnx/)
- [What's New With OSMnx, Part 2]({{ site.url }}{{ site.baseurl
  }}/2020/07/whats-new-with-osmnx-part-2/)
- [OSMnx Summer Wrap-Up]({{ site.url }}{{ site.baseurl
  }}/2020/09/osmnx-summer-wrap-up/)
- [Urban Street Network Orientation]({{ site.url }}{{ site.baseurl
  }}/2019/09/urban-street-network-orientation/)
- [Square-Mile Street Network Visualization]({{ site.url }}{{ site.baseurl
  }}/2017/01/square-mile-street-network-visualization/)
- [Urban Form Figure-Ground Diagrams]({{ site.url }}{{ site.baseurl
  }}/2017/03/urban-form-figure-ground/)
- [Urban Form Analysis with OpenStreetMap Data]({{ site.url }}{{ site.baseurl
  }}/2017/04/urban-form-analysis-openstreetmap/)
- [Urban Street Network Centrality]({{ site.url }}{{ site.baseurl
  }}/2018/01/urban-street-network-centrality/)
- [Isochrone Maps with OSMnx + Python]({{ site.url }}{{ site.baseurl
  }}/2017/08/isochrone-maps-osmnx-python/)
- [OSMnx and Street Network Elevation Data]({{ site.url }}{{ site.baseurl
  }}/2017/05/osmnx-street-network-elevation/)
- [Street Network Orientation]({{ site.url }}{{ site.baseurl
  }}/2018/02/street-network-orientation/)
- [Comparing City Street Orientations]({{ site.url }}{{ site.baseurl
  }}/2018/07/comparing-city-street-orientations/)
- [City Street Orientations around the World]({{ site.url }}{{ site.baseurl
  }}/2018/07/city-street-orientations-world/)
- [New Article: OSMnx in CEUS]({{ site.url }}{{ site.baseurl
  }}/2017/10/new-article-osmnx-ceus/)
- [R-tree Spatial Indexing with Python]({{ site.url }}{{ site.baseurl
  }}/2016/10/r-tree-spatial-index-python/)
- [Network-Based Spatial Clustering]({{ site.url }}{{ site.baseurl
  }}/2018/04/network-based-spatial-clustering/)
- [New Article: Urban Street Networks in EP-B]({{ site.url }}{{ site.baseurl
  }}/2018/08/epb-street-networks-article/)
- [New Chapter: Street Network Morphology]({{ site.url }}{{ site.baseurl
  }}/2019/01/chapter-street-network-morphology/)
- [New Article: Planar Models of Street Networks]({{ site.url }}{{
  site.baseurl }}/2018/11/planar-models-street-networks/)
- [US Street Network Models and Measures]({{ site.url }}{{ site.baseurl
  }}/2019/03/us-street-network-models-measures/)
- [Street Network Analysis in a Docker Container]({{ site.url }}{{
  site.baseurl }}/2019/02/osmnx-docker-container/)

Finally, you can check out the OSMnx
[documentation](https://osmnx.readthedocs.io/) or the usage
[examples](https://github.com/gboeing/osmnx-examples) for more info.
