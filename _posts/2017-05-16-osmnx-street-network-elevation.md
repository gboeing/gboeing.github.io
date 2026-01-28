---
layout: post
title: OSMnx and Street Network Elevation Data
date: 2017-05-16 19:45:28-07:00
permalink: /2017/05/osmnx-street-network-elevation/
---

_Check out the [journal article][5] about OSMnx._

OSMnx can now download street network elevation data for anywhere in the world.
In one line of code it downloads the elevation in meters of each network node,
and in one more line of code it can calculate every street (i.e., edge) grade.
Here is the complete street network of San Francisco, California, with nodes
colored according to their elevation:

![OSMnx street network elevation data for San Francisco, California to
calculate street grade and steepness][4]

Here we find that the average street grade in San Francisco is 4.0% and the
median street grade is 2.6%. OSMnx uses the Google Maps Elevation API to
determine the elevation of each node in the network, given their latitude-
longitude coordinates. For full details and demonstration, check out [this
notebook][2] in the OSMnx [GitHub repo][1] or read [the documentation][3].

[1]: https://github.com/gboeing/osmnx
[2]: https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/12-node-elevations-edge-grades.ipynb
[3]: https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.elevation
[4]: {{ "/files/img/osmnx-sf-elevation-street-network.png" | relative_url }}
[5]: {{ "/publications/osmnx-complex-street-networks/" | relative_url }}
