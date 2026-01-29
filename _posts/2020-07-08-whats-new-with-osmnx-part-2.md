---
layout: post
title: What's New With OSMnx, Part 2
date: 2020-07-08 18:13:37-07:00
permalink: /2020/07/whats-new-with-osmnx-part-2/
---

This is a follow-up to last month's [post][20] discussing the many new features,
improvements, and optimizations made to OSMnx this summer. As this major
improvement project now draws to a close, I will summarize what's new(er) here.
Long story short: there are a bunch of new features and everything in the
package has been streamlined and optimized to be easier to use, faster, and more
memory efficient.

First off, if you haven't already, read the previous [post][20] about new
features including topological intersection consolidation, automatic max speed
imputation and travel time calculation, generalized points-of-interest queries,
querying OSM by date, and API streamlining. _This_ post covers new changes since
then, including improved visualization and plotting, improved graph
simplification, the new geocoder module, and other miscellaneous improvements.

## Improved visualization

The [plot][10] module and all plotting functions have been streamlined for
easier usage, optimized for faster performance with a smaller memory footprint,
and enhanced with new features. The [usage examples][3] and particularly [this
notebook][2] demonstrate new visualization functionality.

Plotting default arguments have been improved for easier attractive plots. Some
function parameters were deprecated in a previous release and removed in the
current release to streamline usability. The plot_shape function was also
deprecated and eventually removed, as its functionality can be recreated in a
single line by just calling the gdf.plot function.

Additionally, the [plot_graph_route][16] function now accepts kwargs to pass
along to [plot_graph][15], and the [plot_graph_routes][17] function now accepts
kwargs to pass along to plot_graph_route, simplifying all of their usage. The
plot_graph_routes function also can now take a list of colors to visualize each
route separately.

```python
# get a graph
G = ox.graph_from_place('Piedmont, CA, USA', network_type='drive')

# impute missing edge speeds and calculate free-flow travel times
G = ox.add_edge_speeds(G)
G = ox.add_edge_travel_times(G)

# calculate 3 shortest paths minimizing travel time
wt = 'travel_time'
route1 = nx.shortest_path(G, list(G)[10], list(G)[-10], weight=wt)
route2 = nx.shortest_path(G, list(G)[0], list(G)[-1], weight=wt)
route3 = nx.shortest_path(G, list(G)[-100], list(G)[100], weight=wt)

# plot the 3 routes
routes = [route1, route2, route3]
colors = ['r', 'y', 'c']
fig, ax = ox.plot_graph_routes(G, routes, route_colors=colors, node_size=0)
```

![OSMnx plot_graph_routes with multiple colors to plot multiple shortest paths
in a street network][22]

Color handling in the plot module has also been substantially improved. For
example, the [get_edge_colors_by_attr][13] and [get_node_colors_by_attr][14]
functions now can either:

1. bin attribute values into equal-sized quantiles
1. bin attribute values into equal-spaced bins
1. linearly map a matplotlib [colormap][6] to each node/edge based on its
   attribute value

## New geocoder module

The new [geocoder][9] module consolidates all of OSMnx's geocoding functionality
in one place. This includes the [geocode][11] function. It also replaces the
gdf_from_place and gdf_from_places functions with a new flexible
[geocode_to_gdf][12] function. The old gdf_from_place/s functions and their
boundaries module have been deprecated with a user warning and will be removed
in a future release.

## Improved graph simplification

OSMnx now [simplifies graphs][18] better, faster, and with a smaller memory
footprint. Previously, it used a recursive topological simplification algorithm
that could fail on extremely long rural roads by exceeding the system's maximum
recursion depth. Now, it can simplify indefinitely long road segments. It also
by default now removes isolated self-contained rings that have no endpoints.

## Other improvements

In addition to the speed and memory optimizations described above, additional
efficiency improvements have been made to the project_graph, graph_to_gdfs, and
graph_from_gdfs functions in particular, all of which are faster and leaner now.
These functions are used internally in many parts of the codebase, which
amplifies these speed/memory improvements.

Additionally, OSMnx's [elevation][8] module previously could only use the Google
Maps Elevation API. Now it allows multiple elevation API providers, including
AirMap. Finally, a previous release deprecated the timeout, memory,
custom_settings, and max_query_area_size parameters in all the
graph_from_whatever functions, making everything a bit less cluttered. These
parameters are now configurable instead via the config function and the settings
module.

## Looking ahead

An upcoming release will include the following new features:

- a new k_shortest_paths function to solve _k_ shortest paths from an origin to
  a destination
- a new shortest_path convenience function
- a new get_digraph function to correctly convert MultiDiGraph to DiGraph

Finally, looking further ahead, I intend to eventually merge the pois and
footprints modules, which have become approximately [redundant][4]. For more
info on the many OSMnx improvements and changes this summer, check out the
[documentation][7], the usage [examples][1], or the OSMnx features
[round-up][19]. In particular, API changes are discussed in [this issue][5].

_Update: this summer project has now concluded and been released. [More
info][21]._

<!-- markdownlint-disable MD013 -->
[1]: https://github.com/gboeing/osmnx-examples
[2]: https://github.com/gboeing/osmnx-examples/blob/v0.15.1/notebooks/15-advanced-plotting.ipynb
[3]: https://github.com/gboeing/osmnx-examples/tree/v0.15.1/
[4]: https://github.com/gboeing/osmnx/issues/478
[5]: https://github.com/gboeing/osmnx/issues/526
[6]: https://matplotlib.org/3.2.2/tutorials/colors/colormaps.html
[7]: https://osmnx.readthedocs.io/
[8]: https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.elevation
[9]: https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.geocoder
[10]: https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.plot
[11]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.geocoder.geocode
[12]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.geocoder.geocode_to_gdf
[13]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.plot.get_edge_colors_by_attr
[14]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.plot.get_node_colors_by_attr
[15]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.plot.plot_graph
[16]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.plot.plot_graph_route
[17]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.plot.plot_graph_routes
[18]: https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.simplification.simplify_graph
[19]: {{ "/2018/03/osmnx-features-roundup/" | relative_url }}
[20]: {{ "/2020/06/whats-new-with-osmnx/" | relative_url }}
[21]: {{ "/2020/09/osmnx-summer-wrap-up/" | relative_url }}
[22]: {{ "/files/img/osmnx-plot-graph-routes-colors.png" | relative_url }}
