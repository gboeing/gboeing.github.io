---
layout: post
title: OSMnx v1.1 Released
date: 2021-05-04 04:30:42-07:00
permalink: /2021/05/osmnx-v1-1-released/
---

OSMnx v1.1.0 has been released. It includes several new features, bug fixes, and
performance enhancements. I encourage you to upgrade and take advantage of
everything new. I'll summarize some of the key improvements in this post.

You can now use OSMnx to attach node elevations from local raster files, using
the new
[add_node_elevations_raster](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.elevation.add_node_elevations_raster)
function. This can take either a single raster file or a list of raster files
(for example, the complete set of ASTER or SRTM DEM tiles). If you pass OSMnx a
list of raster files, it automatically creates a virtual raster VRT, composed of
the rasters at those filepaths, for efficient querying. By default, it uses all
available CPUs for multiprocessing but you can configure this with an argument.
As a frame of reference, OSMnx can now add elevations to every node in a
mid-sized city like Oakland, California in under 1 second.

OSMnx v1.1 also includes a new
[plot_orientation](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.bearing.plot_orientation)
function to plot [polar histograms]({{ "/2019/09/urban-street-network-orientation/" | relative_url }}) of street network orientation, and
an
[orientation_entropy](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.bearing.orientation_entropy)
function to calculate the [entropy]({{ "/publications/urban-spatial-order-entropy/" | relative_url }}) of street network bearings. It
also now exposes all of its individual street network stats functions in the
stats module for easier use.

The new
[sample_points](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.utils_geo.sample_points)
function allows you to randomly sample points constrained to a spatial graph.
Unlike typical spatially uniform random sampling, this method accounts for the
graph's geometry. And unlike equal-length edge segmenting, it guarantees uniform
randomness.

OSMnx v1.1 includes new
[nearest_nodes](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.distance.nearest_nodes)
and
[nearest_edges](https://osmnx.readthedocs.io/en/stable/osmnx.html#osmnx.distance.nearest_edges)
functions in the distance module for simpler, faster nearest node/edge search
(and deprecates the old node/edge search functions in their favor). It also
vectorizes the add_edge_lengths, add_edge_grades, calculate_bearing, and
add_edge_bearings functions for faster operation. Finally, v1.1 multi-indexes
the GeoDataFrames returned from the geometries module by element type and osmid,
for data structures more consistent with the rest of the package.

For more, check out the [documentation](https://osmnx.readthedocs.io/) and
[usage examples](https://github.com/gboeing/osmnx-examples/) for demonstrations
of everything.
