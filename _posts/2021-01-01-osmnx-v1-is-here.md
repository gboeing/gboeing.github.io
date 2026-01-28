---
layout: post
title: OSMnx 1.0 Is Here
date: 2021-01-01 13:30:24-08:00
permalink: /2021/01/osmnx-v1-is-here/
---

Happy new year! After five years of development and over 2,000 code commits from
dozens of contributors, [OSMnx][4] v1.0 has officially been released. This has
been a long labor of love and I'm thrilled to see it reach this milestone.

Much has changed in recent months with new features added and a few things
deprecated. Most of this development occurred in a major overhaul over the
summer, which I covered at the time in [three][7] [previous][6] [posts][5].
Among these dozens of enhancements were major speed and efficiency improvements
throughout the package, better visualization, a new geometries module for
retrieving any geospatial objects from OSM, topological intersection
consolidation, and much more. I encourage you to read those posts to familiarize
yourself with what's new.

Since then, several final [enhancements][2] have been made and now released in
v1.0.0. Many functions are much faster now, including intersection consolidation
which is up to 50× faster on very large graphs. You can also query for a place
by its OSM ID using the geocoder module. Finally, note that OSMnx now caches
server responses by default to both make code faster and to be a "good neighbor"
to the server. This can be configured if necessary using the config function.

So, if you haven't already, download the latest release and enjoy a faster and
more powerful OSMnx. For more details, check out the current OSMnx
[documentation][3] and [usage examples][1].

<!-- markdownlint-disable MD013 -->
[1]: https://github.com/gboeing/osmnx-examples
[2]: https://github.com/gboeing/osmnx/blob/master/CHANGELOG.md
[3]: https://osmnx.readthedocs.io
[4]: {{ "/2016/11/osmnx-python-street-networks/" | relative_url }}
[5]: {{ "/2020/06/whats-new-with-osmnx/" | relative_url }}
[6]: {{ "/2020/07/whats-new-with-osmnx-part-2/" | relative_url }}
[7]: {{ "/2020/09/osmnx-summer-wrap-up/" | relative_url }}
