---
layout: post
title: OSMnx 1.0 Is Here
date: 2021-01-01 13:30:24-08:00
permalink: /2021/01/osmnx-v1-is-here/
---

Happy new year! After five years of development and over 2,000 code commits from
dozens of contributors, [OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx- python-street-networks/) v1.0 has officially been released.
This has been a long labor of love and I'm thrilled to see it reach this
milestone.

Much has changed in recent months with new features added and a few things
deprecated. Most of this development occurred in a major overhaul over the
summer, which I covered at the time in [three]({{ site.url }}{{ site.baseurl
}}/2020/09/osmnx-summer-wrap-up/) [previous]({{ site.url }}{{ site.baseurl
}}/2020/07/whats-new-with-osmnx-part-2/) [posts]({{ site.url }}{{ site.baseurl
}}/2020/06/whats-new-with-osmnx/). Among these dozens of enhancements were major
speed and efficiency improvements throughout the package, better visualization,
a new geometries module for retrieving any geospatial objects from OSM,
topological intersection consolidation, and much more. I encourage you to read
those posts to familiarize yourself with what's new.

Since then, several final
[enhancements](https://github.com/gboeing/osmnx/blob/master/CHANGELOG.md) have
been made and now released in v1.0.0. Many functions are much faster now,
including intersection consolidation which is up to 50× faster on very large
graphs. You can also query for a place by its OSM ID using the geocoder module.
Finally, note that OSMnx now caches server responses by default to both make
code faster and to be a "good neighbor" to the server. This can be configured if
necessary using the config function.

So, if you haven't already, download the latest release and enjoy a faster and
more powerful OSMnx. For more details, check out the current OSMnx
[documentation](https://osmnx.readthedocs.io) and
[usage examples](https://github.com/gboeing/osmnx-examples).
