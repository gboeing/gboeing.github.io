---
layout: post
title: 'OSMnx: Python for Street Networks'
date: 2016-11-01 12:32:23-07:00
permalink: /2016/11/osmnx-python-street-networks/
---

_If you use OSMnx in your work, please cite the [journal article]({{ site.url
}}{{ site.baseurl }}/publications/osmnx-paper/)._

_Note that this blog post is not updated with every new release of OSMnx. For
the latest, see the official [documentation](https://osmnx.readthedocs.org) and
usage [examples](https://github.com/gboeing/osmnx-examples)._

[OSMnx](https://github.com/gboeing/osmnx) is a Python package to retrieve,
model, analyze, and visualize street networks from OpenStreetMap. Users can
download and model walkable, drivable, or bikeable urban networks with a single
line of Python code, and then easily analyze and visualize them. You can just as
easily download and work with amenities/points of interest, building footprints,
elevation data, street bearings/orientations, and network routing. If you use
OSMnx in your work, please download/cite the [paper here]({{ site.url }}{{
site.baseurl }}/publications/osmnx-paper/).

In a single line of code, OSMnx lets you download, model, and visualize the
street network for, say, Modena Italy:

```python
import osmnx as ox
ox.plot_graph(ox.graph_from_place('Modena, Italy'))
```

![OSMnx: Modena Italy networkx street network in Python from
OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/modena-italy-street-network-300x283.png)

## Installing OSMnx

OSMnx is [on GitHub](https://github.com/gboeing/osmnx) and you can
[install it](https://osmnx.readthedocs.io/en/stable/#installation) with conda.
If you're interested in OSMnx but don't know where to begin, check out this
guide to [getting started with Python]({{ site.url }}{{ site.baseurl
}}/2017/02/python-getting-started/).

## OSMnx features

Check out the [documentation](https://osmnx.readthedocs.org) and usage
[examples](https://github.com/gboeing/osmnx-examples) for details on using each
of the following features:

- Download street networks anywhere in the world with a single line of code
- Download other infrastructure types, place boundaries, building footprints,
  and points of interest
- Download by city name, polygon, bounding box, or point/address + network
  distance
- Download drivable, walkable, bikeable, or all street networks
- Download node elevations and calculate edge grades (inclines)
- Impute missing speeds and calculate graph edge travel times
- Simplify and correct the network's topology to clean-up nodes and consolidate
  intersections
- Fast map-matching of points, routes, or trajectories to nearest graph edges or
  nodes
- Save networks to disk as shapefiles, GeoPackages, and GraphML
- Save/load street network to/from a local .osm xml file
- Conduct topological and spatial analyses to automatically calculate dozens of
  indicators
- Calculate and visualize street bearings and orientations
- Calculate and visualize shortest-path routes that minimize distance, travel
  time, elevation, etc
- Visualize street network as a static map or interactive leaflet web map
- Visualize travel distance and travel time with isoline and isochrone maps
- Plot figure-ground diagrams of street networks and/or building footprints

## How to use OSMnx

There are many usage examples and tutorials in the
[examples repo](https://github.com/gboeing/osmnx-examples). I'll demonstrate 5
basic use cases for OSMnx in this post:

1. Automatically download administrative place boundaries and shapefiles
1. Download and model street networks
1. Correct and simplify network topology
1. Save street networks to disk as shapefiles, GraphML, or SVG
1. Analyze street networks: routing, visualization, and calculating network
   stats

### 1. Get administrative place boundaries and shapefiles

To acquire administrative boundary GIS data, one must typically track down
shapefiles online and download them. But what about for bulk or automated
acquisition and analysis? There must be an easier way than clicking through
numerous web pages to download shapefiles one at a time. With OSMnx, you can
download place shapes from OpenStreetMap (as geopandas GeoDataFrames) in one
line of Python code - and project them to UTM (zone calculated automatically)
and visualize in just one more line of code:

```python
import osmnx as ox
city = ox.geocode_to_gdf('Berkeley, California')
ax = ox.project_gdf(city).plot()
_ = ax.axis('off')
```

![OSMnx Berkeley city boundaries from OpenStreetMap]({{ site.url }}{{
site.baseurl }}/files/img/berkeley-city-boundaries-300x209.png)

You can just as easily get other place types, such as neighborhoods, boroughs,
counties, states, or nations - any place geometry in OpenStreetMap:

```python
place1 = ox.geocode_to_gdf('Manhattan, New York City, New York, USA')
place2 = ox.geocode_to_gdf('Cook County, Illinois')
place3 = ox.geocode_to_gdf('Iowa, USA')
place4 = ox.geocode_to_gdf('Bolivia')
```

Or you can pass multiple places into a single query to save a single shapefile
or geopackage from their geometries. You can do this with cities, states,
countries or any other geographic entities:

```python
places = ox.geocode_to_gdf(['Botswana', 'Zambia', 'Zimbabwe'])
places = ox.project_gdf(places)
ax = places.plot()
_ = ax.axis('off')
```

![OSMnx: Botswana, Zambia, Zimbabwe national borders from OpenStreetMap]({{
site.url }}{{ site.baseurl
}}/files/img/zambia-zimbabwe-botswana-borders-264x300.png)

### 2. Download and model street networks

To acquire street network GIS data, one must typically track down Tiger/Line
roads from the US census bureau, or individual data sets from other countries or
cities. But what about for bulk, automated analysis? And what about informal
paths and pedestrian circulation that Tiger/Line ignores? And what about street
networks outside the United States? OSMnx handles all of these uses.

OSMnx lets you download street network data and build topologically-corrected
street networks, project and plot the networks, and save the street network as
SVGs, GraphML files, or shapefiles for later use. The street networks are
directed and preserve one-way directionality. You can download a street network
by providing OSMnx any of the following (demonstrated in the examples below):

- a bounding box
- a lat-long point plus a distance
- an address plus a distance
- a polygon of the desired street network's boundaries
- a place name or list of place names

You can also specify several different network types:

- 'drive' - get drivable public streets (but not service roads)
- 'drive_service' - get drivable public streets, including service roads
- 'walk' - get all streets and paths that pedestrians can use (this network type
  ignores one-way directionality)
- 'bike' - get all streets and paths that cyclists can use
- 'all' - download all (non-private) OSM streets and paths
- 'all_private' - download all OSM streets and paths, including private-access
  ones

You can download and construct street networks in a single line of code using
these various techniques:

#### 2a) street network from bounding box

This gets the drivable street network within some lat-long bounding box, in a
single line of Python code, then projects it to UTM, then plots it:

```python
G = ox.graph_from_bbox(37.79, 37.78, -122.41, -122.43, network_type='drive')
G_projected = ox.project_graph(G)
ox.plot_graph(G_projected)
```

![OSMnx: San Francisco street network in Python from OpenStreetMap]({{
site.url }}{{ site.baseurl }}/files/img/sf-street-network-bbox-300x183.png)

You can get different types of street networks by passing a _network_type_
argument, including driving, walking, biking networks (and more).

#### 2b) street network from lat-long point

This gets the street network within 0.75 km (along the network) of a latitude-
longitude point:

```python
G = ox.graph_from_point((37.79, -122.41), dist=750, network_type='all')
ox.plot_graph(G)
```

![OSMnx: San Francisco street network in Python from OpenStreetMap]({{
site.url }}{{ site.baseurl
}}/files/img/sf-street-network-point-284x300.png)

You can also specify a distance in cardinal directions around the point, instead
of along the network.

#### 2c) street network from address

This gets the street network within 1 km (along the network) of the Empire State
Building:

```python
G = ox.graph_from_address('350 5th Ave, New York, New York',
network_type='drive')
ox.plot_graph(G)
```

![OSMnx: New York street network in Python from OpenStreetMap]({{ site.url
}}{{ site.baseurl }}/files/img/empire-state-network-address-300x291.png)

You can also specify a distance in cardinal directions around the address,
instead of along the network.

#### 2d) street network from polygon

Just load a shapefile with geopandas, then pass its shapely geometry to OSMnx.
This gets the street network of the Mission District in San Francisco:

```python
G = ox.graph_from_polygon(mission_shape, network_type='drive')
ox.plot_graph(G)
```

![OSMnx: San Francisco Mission District street network in Python from
OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/sf-mission-street-network-264x300.png)

#### 2e) street network from place name

Here's where OSMnx shines. Pass it any place name for which OpenStreetMap has
boundary data, and it automatically downloads and constructs the street network
within that boundary. Here, we create the driving network within the city of Los
Angeles:

```python
G = ox.graph_from_place('Los Angeles, California', network_type='drive')
ox.plot_graph(G)
```

![OSMnx: Los Angeles street network in Python from OpenStreetMap]({{
site.url }}{{ site.baseurl
}}/files/img/los-angeles-street-network-907x1024.png)

You can just as easily request a street network within a borough, county, state,
or other geographic entity. You can also pass a list of places (such as several
neighboring cities) to create a unified street network within them. This list of
places can include strings and/or structured key:value place queries:

```python
places = ['Los Altos, California, USA',
{'city':'Los Altos Hills', 'state':'California'},
'Loyola, California']
G = ox.graph_from_place(places, network_type='drive')
ox.plot_graph(G)
```

![OSMnx: Silicon Valley street network in Python from OpenStreetMap]({{
site.url }}{{ site.baseurl
}}/files/img/silicon-valley-street-network-300x248.png)

#### 2f) street networks from all around the world

In general, US street network data is fairly easy to come by thanks to
Tiger/Line shapefiles. OSMnx makes it _easier_ by making it available with a
single line of code, and _better_ by supplementing it with all the additional
data from OpenStreetMap. However, you can also get street networks from anywhere
in the world - places where such data might otherwise be inconsistent,
difficult, or impossible to come by:

```python
G = ox.graph_from_place('Modena, Italy')
ox.plot_graph(G)
```

![OSMnx: Modena Italy networkx street network in Python from
OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/modena-italy-street-network-300x283.png)

```python
G = ox.graph_from_place('Belgrade, Serbia')
ox.plot_graph(G)
```

![OSMnx: Belgrade Serbia networkx street network in Python from
OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/belgrade-serbia-street-network-254x300.png)

```python
G = ox.graph_from_address('Maputo, Mozambique', distance=3000)
ox.plot_graph(G)
```

![OSMnx: Maputo Mozambique networkx street network in Python from
OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/maputo-mozambique-street-network-300x229.png)

```python
G = ox.graph_from_address('Bab Bhar, Tunis, Tunisia', distance=3000)
ox.plot_graph(G)
```

![OSMnx: Tunis Tunisia networkx street network in Python from
OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/tunis-tunisia-street-network-300x282.png)

### 3. Correct and simplify network topology

Note: you can also [topologically consolidate]({{ site.url }}{{ site.baseurl
}}/2020/06/whats-new-with-osmnx/) nearby intersections.

Simplification is done by OSMnx automatically under the hood, but we can break
it out to see how it works. OpenStreetMap nodes can be weird: they include
intersections, but they also include all the points along a single street
segment where the street curves. The latter are not nodes in the graph theory
sense, so we remove them algorithmically and consolidate the set of edges
between "true" network nodes into a single edge.

When we first download and construct the street network from OpenStreetMap, it
looks something like this:

![OSMnx: Arizona suburb before simplifying - networkx street network in
Python from OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/az-simplify-all.png)

We want to simplify this network to only retain the nodes that represent the
junction of multiple streets. OSMnx does this automatically. First it identifies
all non-intersection nodes:

![OSMnx: Arizona suburb before simplifying - networkx street network in
Python from OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/az-simplify-both.png)

And then it removes them, but faithfully maintains the spatial geometry of the
street segment between the true intersection nodes:

![OSMnx: Arizona suburb after simplifying - networkx street network in Python
from OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/az-simplify-strict.png)

Above, all the non-intersection nodes have been removed, all the true
intersections (junctions of multiple streets) remain in blue, and self-loop
nodes are in purple. There are two simplification modes: strict and non- strict.
In strict mode (above), OSMnx considers two-way intersections to be
topologically identical to a single street that bends around a curve. If you
want to retain these intersections when the incident edges have different OSM
IDs, use non-strict mode:

![OSMnx: Arizona suburb after simplifying - networkx street network in Python
from OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/az-simplify-non-strict.png)

### 4. Save street networks to disk

OSMnx can save the street network to disk as a GraphML file to work with later
in Gephi or networkx. Or it can save the network (such as this one, for the New
York urbanized area) as ESRI shapefiles or GeoPackages to work with in any GIS:

![QGIS: New York street network from OpenStreetMap]({{ site.url }}{{
site.baseurl }}/files/img/new-york-street-network-qgis-1024x555.png)

OSMnx can also save street networks as SVG files for design work in Adobe
Illustrator:

![Adobe Illustrator: Piedmont California street network SVG from
OpenStreetMap]({{ site.url }}{{ site.baseurl
}}/files/img/piedmont-california-street-network-illustrator-svg-1024x614.jpg)

You can then load any network you saved as GraphML back into OSMnx to calculate
network stats, solve routes, or visualize it.

### 5. Analyze street networks

Since this is the whole purpose of working with street networks, I'll break
analysis out in depth in a future dedicated post. But I'll summarize some basic
capabilities briefly here. OSMnx is built on top of NetworkX, geopandas, and
matplotlib, so you can easily analyze networks and calculate spatial network
statistics:

```python
G = ox.graph_from_place('Santa Monica, California', network_type='walk')
basic_stats = ox.basic_stats(G)
print(basic_stats['circuity_avg'])
extended_stats = ox.extended_stats(G, bc=True)
print(extended_stats['betweenness_centrality_avg'])
```

The stats are broken up into two primary functions: basic and extended. The
extended stats function also has optional parameters to run additional advanced
measures.

You can also calculate and plot shortest-path routes between points, taking
one-way streets into account:

```python
G = ox.graph_from_place('Piedmont, CA, USA', network_type='drive')
route = nx.shortest_path(G, orig, dest)
fig, ax = ox.plot_graph_route(G, route, route_linewidth=6, node_size=0,
bgcolor='k')
```

![OSMnx: routing along a street network with networkx and OpenStreetMap]({{
site.url }}{{ site.baseurl }}/files/img/osmnx-route-distance.png)

You can impute missing edge speeds and calculate edge travel times (see
[example](https://github.com/gboeing/osmnx-examples/blob/v0.13.0/notebooks/02-routing-speed-time.ipynb))
to contrast shortest paths by distance (red) vs by travel time (blue):

![Calculate shortest path routes that minimize distance or travel time by
imputing missing street speeds with OSMnx]({{ site.url }}{{ site.baseurl
}}/files/img/osmnx-route-travel-time.png)

You can also visualize the compass [orientation]({{ site.url }}{{ site.baseurl
}}/2019/09/urban-street-network-orientation/) of street networks around the
world:

![City street network grid orientations, order, disorder, entropy, rose plot,
polar histogram made with Python, OSMnx, OpenStreetMap, matplotlib.]({{
site.url }}{{ site.baseurl
}}/files/img/city-street-network-polar-histograms-alpha-273x300.jpg)

Allan Jacobs famously compared several cities' urban forms through figure-ground
diagrams of 1 square mile of each's street network in his book _Great Streets_.
We can [re-create this]({{ site.url }}{{ site.baseurl
}}/2017/01/square-mile-street-network-visualization/) automatically and
computationally with OSMnx:

![OSMnx: Figure-ground diagrams of one square mile of each street network,
from OpenStreetMap, made in Python with matplotlib, geopandas, and NetworkX]({{
site.url }}{{ site.baseurl
}}/files/img/square-mile-street-networks-1024x822.jpg)

These figure-ground diagrams are created completely with OSMnx.

## Conclusion

OSMnx lets you download spatial geometries and model, project, visualize, and
analyze real-world street networks. It allows you to automate the data
collection and computational analysis of street networks for powerful and
consistent research, transportation planning, and urban design. OSMnx is built
on top of NetworkX, matplotlib, and geopandas for rich network analytic
capabilities, beautiful and simple visualizations, and [fast spatial
queries]({{ site.url }}{{ site.baseurl }}/2016/10/r-tree-spatial-index-python/)
with r-tree, kd-tree, and ball-tree indexes.

OSMnx is open-source and [on GitHub](https://github.com/gboeing/osmnx). You can
download/cite the [paper here]({{ site.url }}{{ site.baseurl
}}/publications/osmnx-paper/).
