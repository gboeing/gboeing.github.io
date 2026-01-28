---
layout: post
title: Urban Street Network Orientation
date: 2019-09-09 17:38:02-07:00
permalink: /2019/09/urban-street-network-orientation/
---

My new article, [Urban Spatial Order: Street Network Orientation,
Configuration, and Entropy][1], has just been published in one of my favorite
journals: _Applied Network Science_ (download [free PDF][1]). This study
explores the spatial signatures of urban evolution and central planning. It
examines street network orientation, connectivity, granularity, and entropy in
100 cities around the world using OpenStreetMap data and [OSMnx][2] for modeling
and visualization:

![City street network grid orientations, order, disorder, entropy, rose plot,
polar histogram made with Python, OSMnx, OpenStreetMap, matplotlib.][5]

So, who's got a grid and who doesn't? Each of the cities above is represented by
a polar histogram (aka rose diagram) depicting how its streets orient. Each
bar's direction represents the compass bearings of the streets (in that
histogram bin) and its length represents the relative frequency of streets with
those bearings. The cities above are in alphabetical order. Here they are again,
re-sorted from most-ordered/gridded city (Chicago) to most-disordered
(Charlotte):

![City street network grid orientations, order, disorder, entropy, rose plot,
polar histogram made with Python, OSMnx, OpenStreetMap, matplotlib.][6]

Note that these are cities proper (municipalities), not wider metro areas or
urban agglomerations. Some cities, like Seattle, Denver, and Minneapolis, have
an offset downtown with a relatively small number of streets, but the rest of
the city's much larger volume of streets swamps the histogram's relative
frequencies. Above, we can see that Chicago is the most grid-like city here and
Charlotte is the least. To illustrate this more clearly, in Manhattan for
example, we can easily see the angled, primarily orthogonal street grid in its
polar histogram:

![Manhattan, New York City, New York and Boston, Massachusetts street network,
bearing, orientation from OpenStreetMap mapped with OSMnx and Python][8]

Unlike most American cities that have one or two primary street grids organizing
city circulation, Boston's streets are more evenly distributed in every
direction. Although it features a grid in some neighborhoods like the Back Bay
and South Boston, these grids tend to not be aligned with one another, resulting
in a mish-mash of competing orientations. If you're going north and then take a
right turn, you might know that you are immediately heading east, but it's hard
to know where you're eventually really heading in the long run. What Boston
lacks in legible circulation patterns, it makes up for in other Lynchian
elements (paths, edges, districts, nodes, landmarks) that help make it an
"imageable" city for locals and visitors.

This study measures the entropy (or disordered-ness) of street bearings in each
street network, along with each city's typical street segment length, average
circuity, average node degree, and the network's proportions of four- way
intersections and dead-ends. It also develops a new indicator of
orientation-order that quantifies how a city's street network follows the
geometric ordering logic of a single grid. These indicators, taken in concert,
reveal the extent and nuance of the grid.

Across these study sites, US/Canadian cities have an average orientation-order
nearly thirteen-times greater than that of European cities, alongside nearly
double the average proportion of four-way intersections. Meanwhile, these
European cities' streets on average are 42% more circuitous than those of the
US/Canadian cities. North American cities are far more grid-like than cities in
the rest of the world and exhibit far less orientation entropy and street
circuity. We can see this with a cluster analysis to explore similarities and
differences among these study sites in multiple dimensions (full methodological
details [in paper][1]):

![Cluster analysis of urban street networks via hierarchical agglomerative
clustering: OpenStreetMap, OSMnx, Python, scikit-learn, matplotlib][7]

The clustering dendrogram above shows how different cities' street networks
group together in similarity. We can also visualize this in two dimensions using
t-SNE, a manifold learning approach for nonlinear dimensionality reduction. Here
is a scatterplot of cities in two dimensions via t-SNE, with cluster colors
corresponding to those above (triangles represent US/Canadian cities and circles
represent other cities):

![t-SNE visualization of urban street network clusters via OpenStreetMap,
OSMnx, Python, scikit-learn, matplotlib][9]

Most of the North American cities lie near each other in three adjacent clusters
(red, orange, and blue), which contain grid-like—and almost exclusively North
American—cities. The orange cluster represents relatively dense, gridded cities
like Chicago, Portland, Vancouver, and Manhattan. The blue cluster contains
less-perfectly gridded US cities, typified by San Francisco and Washington
(plus, interestingly, Buenos Aires). The red cluster represents sprawling but
relatively low-entropy cities like Los Angeles, Phoenix, and Las Vegas.

Sprawling, high-entropy Charlotte is in a separate cluster (alongside Honolulu)
dominated by cities that developed at least in part under the auspices of 20th
century communism, including Moscow, Kiev, Warsaw, Prague, Berlin, Kabul,
Pyongyang, and Ulaanbaatar. Beijing and Shanghai are alone in their own cluster,
more dissimilar from the other study sites. The dark gray cluster comprises the
three cities with the most circuitous networks: Caracas, Hong Kong, and
Sarajevo. While the US cities tend to group together in the red, orange, and
blue clusters, the other world regions' cities tend to distribute more evenly
across the green, purple, and light gray clusters.

For more information on my methodology and findings, check out the [open-
access article][1], or check out [OSMnx][2] for the Python tool used for these
analyses and visualizations. Some of my preliminary work on this (and links to
source code) appears in two [blog][4] [posts][3] from last summer.

[1]: https://doi.org/10.1007/s41109-019-0189-1
[2]: {{ "/2016/11/osmnx-python-street-networks/" | relative_url }}
[3]: {{ "/2018/07/city-street-orientations-world/" | relative_url }}
[4]: {{ "/2018/07/comparing-city-street-orientations/" | relative_url }}
[5]: {{ "/files/img/city-street-network-polar-histograms-alpha-933x1024.jpg" | relative_url }}
[6]: {{ "/files/img/city-street-network-polar-histograms-entropy-933x1024.jpg" | relative_url }}
[7]: {{ "/files/img/cluster-city-street-networks-560x1024.png" | relative_url }}
[8]: {{ "/files/img/manhattan-boston-street-network-orientation-1024x678.jpg" | relative_url }}
[9]: {{ "/files/img/tsne-cluster-street-networks-1024x638.png" | relative_url }}
