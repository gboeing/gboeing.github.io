---
layout: post
title: OSMnx Features Round-Up
date: 2018-03-31 11:04:41-07:00
permalink: /2018/03/osmnx-features-roundup/
---

OSMnx is a Python package for quickly and easily downloading, modeling,
analyzing, and visualizing street networks and other spatial data from
OpenStreetMap. Here's a quick round-up of recent updates to [OSMnx]({{ "/2016/11/osmnx-python-street-networks/" | relative_url }}). I'll try
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
  Complex Street Networks]({{ "/publications/osmnx-complex-street-networks/" | relative_url }})
- [A Multi-Scale Analysis of 27,000 Urban Street Networks: Every US City, Town,
  Urbanized Area, and Zillow Neighborhood]({{ "/publications/multiscale-analysis-street-networks/" | relative_url }})
- [Urban Spatial Order: Street Network Orientation, Configuration, and
  Entropy]({{ "/publications/urban-spatial-order-entropy/" | relative_url }})
- [Planarity and Street Network Representation in Urban Form Analysis]({{ "/publications/planarity-street-network-representation/" | relative_url }})
- [Spatial Information and the Legibility of Urban Form: Big Data in Urban
  Morphology]({{ "/publications/spatial-information-urban-morphology/" | relative_url }})
- [Street Network Models and Measures for Every U.S. City, County, Urbanized
  Area, Census Tract, and Zillow-Defined Neighborhood]({{ "/publications/street-networks-models-measures/" | relative_url }})
- [Urban Street Network Analysis in a Computational Notebook]({{ "/publications/street-network-computational-notebook/" | relative_url }})
- [Methods and Measures for Analyzing Complex Street Networks and Urban
  Form]({{ "/publications/dissertation/" | relative_url }})
- [Exploring Urban Form Through OpenStreetMap Data: A Visual Introduction]({{ "/publications/exploring-urban-form-openstreetmap/" | relative_url }})
- [The Morphology and Circuity of Walkable and Drivable Street Networks]({{ "/publications/morphology-circuity-street-networks/" | relative_url }})

And here are some blog posts running through features, findings, and how-to:

- [OSMnx: Python for Street Networks]({{ "/2016/11/osmnx-python-street-networks/" | relative_url }})
- [What's New with OSMnx]({{ "/2020/06/whats-new-with-osmnx/" | relative_url }})
- [What's New With OSMnx, Part 2]({{ "/2020/07/whats-new-with-osmnx-part-2/" | relative_url }})
- [OSMnx Summer Wrap-Up]({{ "/2020/09/osmnx-summer-wrap-up/" | relative_url }})
- [Urban Street Network Orientation]({{ "/2019/09/urban-street-network-orientation/" | relative_url }})
- [Square-Mile Street Network Visualization]({{ "/2017/01/square-mile-street-network-visualization/" | relative_url }})
- [Urban Form Figure-Ground Diagrams]({{ "/2017/03/urban-form-figure-ground/" | relative_url }})
- [Urban Form Analysis with OpenStreetMap Data]({{ "/2017/04/urban-form-analysis-openstreetmap/" | relative_url }})
- [Urban Street Network Centrality]({{ "/2018/01/urban-street-network-centrality/" | relative_url }})
- [Isochrone Maps with OSMnx + Python]({{ "/2017/08/isochrone-maps-osmnx-python/" | relative_url }})
- [OSMnx and Street Network Elevation Data]({{ "/2017/05/osmnx-street-network-elevation/" | relative_url }})
- [Street Network Orientation]({{ "/2018/02/street-network-orientation/" | relative_url }})
- [Comparing City Street Orientations]({{ "/2018/07/comparing-city-street-orientations/" | relative_url }})
- [City Street Orientations around the World]({{ "/2018/07/city-street-orientations-world/" | relative_url }})
- [New Article: OSMnx in CEUS]({{ "/2017/10/new-article-osmnx-ceus/" | relative_url }})
- [R-tree Spatial Indexing with Python]({{ "/2016/10/r-tree-spatial-index-python/" | relative_url }})
- [Network-Based Spatial Clustering]({{ "/2018/04/network-based-spatial-clustering/" | relative_url }})
- [New Article: Urban Street Networks in EP-B]({{ "/2018/08/epb-street-networks-article/" | relative_url }})
- [New Chapter: Street Network Morphology]({{ "/2019/01/chapter-street-network-morphology/" | relative_url }})
- [New Article: Planar Models of Street Networks]({{ "/2018/11/planar-models-street-networks/" | relative_url }})
- [US Street Network Models and Measures]({{ "/2019/03/us-street-network-models-measures/" | relative_url }})
- [Street Network Analysis in a Docker Container]({{ "/2019/02/osmnx-docker-container/" | relative_url }})

Finally, you can check out the OSMnx
[documentation](https://osmnx.readthedocs.io/) or the usage
[examples](https://github.com/gboeing/osmnx-examples) for more info.
