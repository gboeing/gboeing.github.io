---
layout: post
title: Comparing US City Street Orientations
date: 2018-07-10 09:38:44-07:00
permalink: /2018/07/comparing-city-street-orientations/
---

This post is adapted from this [research paper]({{ site.url }}{{ site.baseurl
}}/2019/09/urban-street-network-orientation/) that you can read/cite for more
info. It analyzes and visualizes
[100 cities](https://doi.org/10.1007/s41109-019-0189-1) around the world.\_

"We say the cows laid out Boston. Well, there are worse surveyors." –Ralph Waldo
Emerson. In 1960, one hundred years after Emerson's quote, Kevin Lynch published
The Image of the City, his treatise on the legibility of urban patterns. How
coherent is a city's spatial organization? How do these patterns help or hinder
urban navigation? I recently wrote about visualizing street [orientations]({{
site.url }}{{ site.baseurl }}/2018/02/street-network-orientation/) with Python
and [OSMnx]({{ site.url }}{{ site.baseurl }}/2018/03/osmnx-features-roundup/).
That is, how is a city's street network oriented in terms of the streets'
compass bearings? How well does it adhere to a straightforward north-
south-east-west layout? I wanted to revisit this by
[comparing](https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/17-street-network-orientations.ipynb)
25 major US cities' orientations (EDIT: by popular request, see also this
[follow- up]({{ site.url }}{{ site.baseurl
}}/2019/09/urban-street-network-orientation/) comparing world cities):

[![City street network grid orientations, rose plot, polar histogram made with
Python, OSMnx, OpenStreetMap, matplotlib. Atlanta, Boston, Buffalo, Charlotte,
Chicago, Cleveland, Dallas, Denver, Detroit, Houston, Las Vegas, Los Angeles,
Manhattan, New York, Miami, Minneapolis, Orlando, Philadelphia, Phoenix,
Portland, Sacramento, San Francisco, Seattle, St Louis, Tampa, Washington
DC.]({{ site.url }}{{ site.baseurl
}}/files/img/city-street-orientations-usa-osmnx-930x1024.png)]({{ site.url }}{{
site.baseurl }}/files/img/city-street-orientations-usa-osmnx.png)

Each of the cities above is represented by a polar histogram (aka rose diagram)
depicting how its streets orient. Each bar's _direction_ represents the compass
bearings of the streets (in that histogram bin) and its _length_ represents the
relative frequency of streets with those bearings. For example, in Manhattan we
can clearly see the angled, primarily orthogonal street grid in its polar
histogram:

[![Manhattan, New York City, New York street network, bearing, orientation
from OpenStreetMap mapped with OSMnx and Python]({{ site.url }}{{ site.baseurl
}}/files/img/manhattan-nyc-street-network-bearings-osmnx-646x1024.png)]({{
site.url }}{{ site.baseurl
}}/files/img/manhattan-nyc-street-network-bearings-osmnx.png)

Similar orthogonal grids can be seen in the histograms of Chicago, Denver,
Tampa, etc. Detroit is an interesting case, as it primarily comprises two
separate orthogonal grids, one a slight rotation of the other:

[![Detroit, Michigan city street network, bearing, orientation from
OpenStreetMap mapped with OSMnx and Python]({{ site.url }}{{ site.baseurl
}}/files/img/detroit-michigan-street-bearings-osmnx.jpg)]({{ site.url }}{{
site.baseurl }}/files/img/detroit-michigan-street-bearings-osmnx.jpg)

Most cities' polar histograms similarly tend to cluster in at least a rough,
approximate way. But then there are Boston and Charlotte. Unlike most American
cities that have one or two primary street grids organizing city circulation,
their streets are more evenly distributed in every direction. For example,
here's Boston:

![Boston, Massachusetts city street network, bearing, orientation from
OpenStreetMap mapped with OSMnx and Python]({{ site.url }}{{ site.baseurl
}}/files/img/boston-massachusetts-street-network-bearings-osmnx-864x1024.png)

Although it features a grid in some neighborhoods like the Back Bay and South
Boston, these grids tend to not be aligned with one another, resulting in a
mish-mash of competing orientations. Furthermore, these grids are not ubiquitous
and Boston's other streets wind in many directions. If you're going north and
then take a right turn, you might know that you are immediately heading east,
but it's hard to know where you're eventually really heading in the long run.

This makes it harder for unfamiliar visitors to navigate Boston than many other
US cities. It does not adhere to a straightforward north-south-east-west pattern
(or any other consistent, predictable pattern) that our brains adjust to in most
places—not because Boston apocryphally paved over its cow paths, but because of
its age, terrain, and annexation of various independent towns.

60 years ago, Kevin Lynch defined "legible" cities as those whose patterns lend
themselves to coherent, organized, recognizable, and comprehensible mental
images. These help us organize city space into cognitive maps for wayfinding and
a sense of place. But what Boston lacks in legible circulation patterns, it
makes up for in other Lynchian elements (paths, edges, districts, nodes,
landmarks) that help make it an "imageable" city for locals and visitors. From
Lynch:

> A highly imageable city in this peculiar sense would seem well formed,
> distinct, remarkable; it would invite the eye and the ear to greater attention
> and participation... The concept of imageability does not necessarily connote
> something fixed, limited, precise, unified, or regularly ordered, although it
> may sometimes have these qualities. Nor does it mean apparent at a glance,
> obvious, patent, or plain. The total environment to be patterned is highly
> complex, while the obvious image is soon boring and can point to only a few
> features of the living world.

I find Boston's street patterns illegible and difficult to navigate. But as a
newcomer I can settle for the concomitant sense of wonder, bafflement, and
inexplicable adventure that accompanies every simple right turn.

_Want to see more cities?_ This post is adapted from this [research paper]({{
site.url }}{{ site.baseurl }}/2019/09/urban-street-network-orientation/) that
analyzes and visualizes [100 cities]({{ site.url }}{{ site.baseurl
}}/2019/09/urban-street-network-orientation/) around the world, discussing these
methods, entropy calculations, and images in more detail. And for more on OSMnx,
see this [post]({{ site.url }}{{ site.baseurl
}}/2018/03/osmnx-features-roundup/) or this
[notebook](https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/17-street-network-orientations.ipynb)
to recreate the visualization. Finally, by popular request, here's a [follow-
up]({{ site.url }}{{ site.baseurl }}/2019/09/urban-street-network-orientation/)
comparing world cities:

[![City street network grid orientations, rose plot, polar histogram made with
Python, OSMnx, OpenStreetMap, matplotlib. Bangkok, Barcelona, Beijing, Budapest,
Cairo, Delhi, Dubai, Glasgow, Hong Kong, Lagos, London, Madrid, Melbourne,
Mexico City, Moscow, Mumbai, Munich, Paris, Rio de Janeiro, Rome, Seoul, Sydney,
Tehran, Toronto, Warsaw, Tokyo, Berlin, Venice]({{ site.url }}{{ site.baseurl
}}/files/img/city-street-orientations-world-osmnx-272x300.png)]({{ site.url
}}{{ site.baseurl }}/2018/07/city-street-orientations-world/)
