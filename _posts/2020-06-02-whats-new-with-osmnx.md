---
layout: post
title: What's New with OSMnx, Part 1
date: 2020-06-02 16:33:53-07:00
permalink: /2020/06/whats-new-with-osmnx/
---

There have been some major changes to OSMnx in the past couple months. I'll
review them briefly here, demonstrate some usage examples, then reflect on a
couple upcoming improvements on the horizon. First, what's new:

- new
  [consolidate_intersections](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.simplification.consolidate_intersections)
  function with topological option
- new
  [speed](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.speed)
  module to impute missing street speeds and calculate travel times for all
  edges
- generalized
  [POIs](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.pois)
  module to query with a flexible tags dict
- you can now query OSM by date
- you can now save graph as a
  [geopackage](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.io.save_graph_geopackage)
  file
- clean up and streamline the OSMnx [API](https://osmnx.readthedocs.io/)

A few other changes clean up argument usage for consistency (e.g., all saving
functions now have a consistent
[filepath](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.io)
parameter and all "dist" or "distance" parameters have been replaced with a
consistent
[dist](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.graph)
parameter). Modules have been [refactored](https://osmnx.readthedocs.io/) as
well. You can see a list of changes in the
[change log](https://github.com/gboeing/osmnx/blob/master/CHANGELOG.md) and
[this issue](https://github.com/gboeing/osmnx/issues/526).

## Topological Intersection Consolidation

Many real-world street networks feature complex intersections and traffic
circles, resulting in a cluster of graph nodes where there is really just one
true intersection as we would think of it in transportation or urban design.
Similarly, divided roads are often represented by separate centerline edges: the
intersection of two divided roads thus creates 4 nodes, representing where each
edge intersects a perpendicular edge, but these 4 nodes represent a single
intersection in the real world. Traffic circles similarly create a cluster of
nodes where each street's edge intersects the roundabout.

OSMnx can
[consolidate](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.simplification.consolidate_intersections)
nearby intersections and now optionally rebuild the graph's topology to
reconnect edges to the newly consolidated nodes.

```python
import osmnx as ox
G = ox.project_graph(ox.graph_from_place('San Francisco, California, USA',
network_type='drive'))
G2 = ox.consolidate_intersections(G, tolerance=10, rebuild_graph=True,
dead_ends=True)
```

![OSMnx intersection consolidation to merge nearby nodes together and rebuild
graph topology by reconnecting edges to new merged node]({{ "/files/img/osmnx-consolidate_intersections-300x241.png" | relative_url }})

If we plot a portion of this network (above), notice how the traffic circles'
many (red) nodes are merged into a new single centroid node (black), with edge
geometries extended to connect to it. Similar consolidation occurs at the
intersection of the divided road in the upper- right.

Running `consolidate_intersections` with `rebuild_graph=True` may yield somewhat
(but not very) different intersection counts/densities compared to
`rebuild_graph=False`. The difference lies in that the latter just merges
buffered node points that overlap, whereas the former checks the topology of the
overlapping node buffers before merging them. This prevents topologically remote
but spatially proximate nodes from being merged. For example:

- A street intersection may lie directly below a freeway overpass's intersection
  with an on-ramp. We would not want to merge these together and connnect their
  edges: they are distinct junctions in the system of roads.
- In a residential neighborhood, a bollarded street may create a dead-end
  immediately next to an intersection or traffic circle. We would not want to
  merge this dead-end with the intersection and connect their edges.

These examples illustrate (two-dimensional) _geometric proximity but topological
remoteness_.

Accordingly in certain situations we may expect higher intersection counts when
using `rebuild_graph=True` because it is more cautious with merging in these
cases. The trade-off is that it has higher time complexity than
`rebuild_graph=False`. For best results, the tolerance argument should be
adjusted to approximately match street design standards in the specific street
network, and you should always use a projected graph to work in meaningful and
consistent units like meters. You can also specify if you do not want dead- ends
returned in the list of cleaned intersections.

## Speed and Travel Time

The new `add_edge_speeds` function adds edge speeds (km/hour) to a graph as new
`speed_kph` edge attributes. It imputes free-flow travel speeds for all edges
based on mean `maxspeed` value of edges per highway type. This mean- imputation
can obviously be imprecise, so the caller can override it by passing in a
`hwy_speeds` dict and/or a `fallback` argument to correspond to local speed
limit standards.

This allows you to easily calculate shortest-path routes that minimize travel
time (blue) rather than distance (red):

![Calculate shortest path routes that minimize distance or travel time by
imputing missing street speeds with OSMnx]({{ "/files/img/osmnx-route-travel-time.png" | relative_url }})

See the
[documentation](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.speed)
for details and this
[notebook](https://github.com/gboeing/osmnx-examples/blob/v0.13.0/notebooks/02-routing-speed-time.ipynb)
for a usage example.

## Generalized POIs Queries

_Update: as of v0.16.0, the pois module and functionality has been incorporated
into and superseded by the new geometries module:[more info]({{ "/2020/09/osmnx-summer-wrap-up/" | relative_url }})._

The pois (points of interest) module now takes a flexible `tags` dict in all of
its OpenStreetMap queries, allowing you to query for any spatial entities. You
are no longer limited to just amenities only. For example:

```python
# get everything tagged amenity,
# and everything with landuse = retail or commercial,
# and everything with highway = bus_stop
tags = {'amenity' : True,
'landuse' : ['retail', 'commercial'],
'highway' : 'bus_stop'}
gdf = ox.pois_from_place('Piedmont, CA, USA', tags)
gdf.shape
```

See
[documentation](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.pois)
for details or this
[notebook](https://github.com/gboeing/osmnx-examples/blob/v0.13.0/notebooks/00-osmnx-features-demo.ipynb)
for a usage example.

## Query OSM by Date

You can now query OpenStreetMap data as of a certain date, using the
`custom_settings` parameter. For example, to query the database as of 28 October
2019 at 7:20 PM, you can use:

```python
cs = '[out:json][timeout:180][date:"2019-10-28T19:20:00Z"]'
gdf = ox.pois_from_address(some_address, tags={"amenity": "school"},
custom_settings=cs)
```

This allows you to explore historical snapshots of the data set.

## Save graph as GeoPackage

OSMnx can save your graph to disk as an ESRI shapefile, GraphML file, .osm
formatted XML file, and now
[GeoPackage](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.io.save_graph_geopackage).
Shapefiles have a lot of limitations, so GeoPackage saving offers a superior
modern file format for subsequent GIS work.

## Streamlined API

Over time, the OSMnx API and top-level namespace had become cluttered and
increasingly unintuitive. Many of its modules had similarly grown unwieldy and
its functional organization needed a rethink. The newly redesigned API:

- only imports the primary user functions from the various modules into the
  `ox.` namespace (comprising the vast majority of end-user use cases)
- allows all other less-common user functions to be accessed via
  `ox.module_name.function_name()`
- makes all internal functions private/hidden

This makes package usage, documentation, code hinting, and code completion more
simple, streamlined, and straightforward - but note that it is not 100%
backwards compatible. For details, see the
[change log](https://github.com/gboeing/osmnx/blob/master/CHANGELOG.md), the
[documentation](https://osmnx.readthedocs.io/), and the updated usage
[examples](https://github.com/gboeing/osmnx-examples/). In particular, these
changes are discussed in
[this issue](https://github.com/gboeing/osmnx/issues/526).

## Looking ahead

The next release will remove three deprecated functions: `graph_from_file`
(replaced in v0.13.0 by `graph_from_xml`), `clean_intersections` (replaced in
v0.13.0 by `consolidate_intersections`), and `gdfs_to_graph` (replaced in
v0.13.0 by `graph_from_gdfs`). It will also remove the old clunky
`infrastructure` parameter in favor of a streamlined, flexible `custom_filter`
parameter for all the `ox.graph_from_whatever` functions.

Subsequent releases this summer will continue this project and improve plotting
and color handling, geocoding, settings/config, graph simplification, and speed
and memory efficiency throughout. Looking further ahead, I intend to eventually
merge the pois and footprints modules, which have become approximately
redundant.

For more info, check out the [documentation](https://osmnx.readthedocs.io/), the
usage [examples](https://github.com/gboeing/osmnx-examples), or the OSMnx
features [round-up]({{ "/2018/03/osmnx-features-roundup/" | relative_url }}).
