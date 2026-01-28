---
layout: post
title: Street Network Orientation
date: 2018-02-28 16:57:21-08:00
permalink: /2018/02/street-network-orientation/
---

[OSMnx][3] is a Python [package][1] for easily downloading and analyzing street
networks anywhere in the world. Among other analyses, we can use it to explore
street network orientation. That is, what are the bearings and spatial
orientations of the streets in the network? All of the code for this example is
in this [GitHub notebook][2]. First we use OSMnx to download the street network
of Moraga, California, a small town in the hills just east of Berkeley:

![Moraga, California street network OSMnx OpenStreetMap Python][4]

OSMnx automatically calculates all of the streets' bearings. Specifically it
calculates the compass bearing from each directed edge's origin node _u_ to its
destination node _v_. Now we can visualize these bearings, binned together as a
histogram to get a sense of the relative frequency of the streets' spatial
orientations. Or better yet, we can project that histogram as a polar plot to
match the compass bearings:

![Moraga, California street network orientation edge bearings polar plot OSMnx
OpenStreetMap Python][5]

In the polar plot above, it's easy to see how Moraga's street orientations are
scattered in all directions, much as we'd expect given its winding, dendritic
street network pattern. By contrast, we can download the street network of Santa
Monica, California, a small city surrounded by western Los Angeles:

![Santa Monica, California street network OSMnx OpenStreetMap Python][6]

We can easily see that Santa Monica has a more orthogonal, grid-like street
network than Moraga does. This is clearly reflected in its polar plot:

![Santa Monica, California street network orientation edge bearings polar plot
OSMnx OpenStreetMap Python][7]

In this polar plot, Santa Monica's orthogonal grid is clearly visible in the
clustering of its streets' compass bearings. We can further use these clustered
(or not clustered) bearings to calculate indicators of the urban form, such as
how grid-like or non-grid-like different cities' or neighborhoods' street
networks are. For more, check out this [example notebook][2], read this
[overview of OSMnx][3], or get OSMnx [from GitHub][1].

[1]: https://github.com/gboeing/osmnx
[2]: https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/15-calculate-visualize-edge-bearings.ipynb
[3]: {{ "/2016/11/osmnx-python-street-networks/" | relative_url }}
[4]: {{ "/files/img/moraga-california-street-network-osmnx-870x1024.png" | relative_url }}
[5]: {{ "/files/img/moraga-california-street-network-polar-plot-1000x1024.png" | relative_url }}
[6]: {{ "/files/img/santa-monica-california-street-network-osmnx-1024x877.png" | relative_url }}
[7]: {{ "/files/img/santa-monica-california-street-network-polar-plot-1000x1024.png" | relative_url }}
