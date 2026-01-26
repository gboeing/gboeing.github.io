---
layout: post
title: OSMnx Summer Wrap-Up
date: 2020-09-08 11:19:42-07:00
permalink: /2020/09/osmnx-summer-wrap-up/
---

[OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx-python-street-networks/) underwent a major overhaul this
summer, with the development of several new [features]({{ site.url }}{{
site.baseurl }}/2018/03/osmnx-features-roundup/), improvements, and
optimizations. This project concluded yesterday with the release of v0.16.0.

This post briefly summarizes what's changed since the previous mid-summer
updates. It covers the new _k_ shortest paths solver, auto-selecting the first
polygon when geocoding, better conversion of graph types, and the new geometries
module that lets you flexibly download any OSM geospatial objects as a geopandas
GeoDataFrame.

First, check out those two [previous]({{ site.url }}{{ site.baseurl
}}/2020/06/whats- new-with-osmnx/) [updates]({{ site.url }}{{ site.baseurl
}}/2020/07/whats-new-with- osmnx-part-2/) covering what was new along the way,
including topological intersection consolidation, automatic max speed imputation
and travel time calculation, querying historical OSM snapshots by date, improved
visualization and plotting, better graph simplification, a new geocoder module,
and API streamlining and efficiency improvements throughout. Here's what's new
since then...

## New geometries module

The footprints and pois modules have been deprecated in the current release and
will be removed in a future release. They have been replaced by the new
[geometries](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.geometries)
module, which is a more flexible and powerful replacement enabling users to
download any geospatial objects from OSM as a GeoDataFrame.

The geometries module uses the same tag:value querying logic as the deprecated
pois module did. Those deprecated modules' functions, such as pois_from_place()
or footprints_from_place(), are replaced by the geometries module's new
[geometries_from_place()](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.geometries.geometries_from_place)
(and equivalent) functions. For example, to download all the building footprints
in some place as a GeoDataFrame:

```python
gdf = ox.geometries_from_place(place, tags={'building':True})
```

Or, to get all local amenities, objects tagged landuse = either retail or
commercial, and objects tagged highway = bus_stop:

```python
tags = {'amenity':True, 'landuse':['retail','commercial'],
'highway':'bus_stop'}
gdf = ox.geometries_from_place(place, tags)
```

## Auto-select first polygon when geocoding

In the past, OSMnx's geocode_to_gdf() function would geocode queries to the
first result provided by Nominatim, regardless of its geometry type. This often
caused (somewhat confusing) extra work when trying to get place boundaries: if
the first result was a point, the user would have to increment the which_result
argument until it found the first polygon.

In the latest release, OSMnx by default now auto-selects the first polygon or
multipolygon geometry when
[geocoding](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.geocoder.geocode_to_gdf)
to a GeoDataFrame:

```python
gdf = ox.geocode_to_gdf('Alameda, California')
```

If you want to retrieve the _first_ geocoding result, regardless of its geometry
type, pass a which_result argument:

```python
gdf = ox.geocode_to_gdf('Alameda, California', which_result=1)
```

Use which_result similarly to retrieve any specific result.

## Solve _k_ shortest paths

The latest release of OSMnx includes a new
[shortest_path](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.utils_graph.shortest_path)
convenience function and a new
[k_shortest_paths](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.utils_graph.k_shortest_paths)
function to solve _k_ shortest paths from an origin to a destination:

```python
routes = ox.k_shortest_paths(G, origin, destination, k=30,
weight='travel_time')
```

The code above will return the 30 shortest paths by travel time between some
origin and destination.

## Better DiGraph conversion

Finally, the latest OSMnx release includes a new
[get_digraph](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.utils_graph.get_digraph)
function to correctly convert a MultiDiGraph to a DiGraph by choosing between
parallel edges to minimizing some weight attribute value:

```python
ox.utils_graph.get_digraph(G, weight='length')
```

This function is useful for algorithms that cannot handle parallel edges in the
graph. See also the similar
[get_undirected](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.utils_graph.get_undirected)
function to convert a MultiDiGraph to a MultiGraph by maintaining parallel edges
only when their geometries differ (which is important in modeling a street
network).

## Conclusion

For more information, check out the [two]({{ site.url }}{{ site.baseurl
}}/2020/06/whats-new-with-osmnx/) [previous]({{ site.url }}{{ site.baseurl
}}/2020/07/whats-new-with-osmnx-part-2/) mid- summer updates on this project's
progress and changes. Also see the current OSMnx
[documentation](https://osmnx.readthedocs.io) and
[usage examples](https://github.com/gboeing/osmnx-examples).
