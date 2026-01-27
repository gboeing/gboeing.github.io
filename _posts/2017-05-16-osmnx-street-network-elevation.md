---
layout: post
title: OSMnx and Street Network Elevation Data
date: 2017-05-16 19:45:28-07:00
permalink: /2017/05/osmnx-street-network-elevation/
---

_Check out the [journal article]({{ site.url }}{{ site.baseurl
}}/publications/osmnx-complex-street-networks/) about OSMnx._

OSMnx can now download street network elevation data for anywhere in the world.
In one line of code it downloads the elevation in meters of each network node,
and in one more line of code it can calculate every street (i.e., edge) grade.
Here is the complete street network of San Francisco, California, with nodes
colored according to their elevation:

[![OSMnx street network elevation data for San Francisco, California to
calculate street grade and steepness]({{ site.url }}{{ site.baseurl
}}/files/img/osmnx-sf-elevation-street-network.png)]({{ site.url }}{{
site.baseurl }}/files/img/osmnx-sf-elevation-street-network.png)

Here we find that the average street grade in San Francisco is 4.0% and the
median street grade is 2.6%. OSMnx uses the Google Maps Elevation API to
determine the elevation of each node in the network, given their latitude-
longitude coordinates. For full details and demonstration, check out
[this notebook](https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/12-node-elevations-edge-grades.ipynb)
in the OSMnx [GitHub repo](https://github.com/gboeing/osmnx) or read
[the documentation](https://osmnx.readthedocs.io/en/stable/osmnx.html#module-osmnx.elevation).
