---
layout: post
title: Urban Form Figure-Ground Diagrams
date: 2017-03-01 17:25:59-08:00
permalink: /2017/03/urban-form-figure-ground/
---

_Check out the [journal article]({{ site.url }}{{ site.baseurl
}}/publications/osmnx-complex-street-networks/) about OSMnx._

I previously demonstrated how to create figure-ground [square-mile
visualizations]({{ site.url }}{{ site.baseurl
}}/2017/01/square-mile-street-network-visualization/) of urban street networks
[with OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx-python-street-networks/) to consistently compare city patterns,
design paradigms, and connectivity. OSMnx downloads, analyzes, and visualizes
street networks from OpenStreetMap but it can also get building footprints. If
we mash-up these building footprints with the street networks, we get a
fascinating comparative window into urban form:

![Figure-ground map of building footprints and street network in New York, San
Francisco, Monrovia, and Port au Prince from OpenStreetMap data, created in
Python with OSMnx]({{ site.url }}{{ site.baseurl
}}/files/img/bldg-footprints-ny-sf-monrovia-port-au-prince-970x1024.png)

Above we see four cities, all at the same scale (one square mile) to allow easy
comparison of the pattern, texture, and grain of the urban form. At the top-left
lies densely built midtown Manhattan, with large buildings filling most of the
space between streets. Within this square mile, there are 2,237 building
footprints with a median area of 241 m2. At the top-right, we see the
medium-density perimeter blocks of San Francisco's Richmond district. Here the
building footprints line the streets while leaving the centers of each block
open for residents. Within this square mile, there are 5,054 building footprints
with a median area of 142 m2.

The bottom row reveals an entirely different mode of urbanization, by
visualizing slums in Monrovia, Liberia and Port-au-Prince, Haiti. These informal
settlements are much finer-grained, and are not structured according to the
orderly logic of the American street grids. Monrovia's square mile contains
2,543 building footprints with a median area of 127 m2. Port-au- Prince's square
mile contains an incredible 14,037 building footprints with a median area of
just 34 m2. Compared to New York's macro-form, the Port-au- Prince informal
settlement's urban fabric resembles a remarkable dusting of urbanization.
Notice, too, the percolation (or lack thereof) of the circulation networks into
each informal settlement.

Figure-ground diagrams like these are common tools in urban planning and design
to represent the relationship between built and un-built space in a city. An
early example is the
[Nolli Map](https://en.wikipedia.org/wiki/Giambattista_Nolli#Nolli_Map) of Rome
from the 1740s. We can use [OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx-python-street-networks/) to produce a similar map of a city -
in this example, suburban Piedmont, California:

![Nolli map, figure-ground diagram of building footprints in Piedmont,
California from OpenStreetMap data created in Python with OSMnx]({{ site.url
}}{{ site.baseurl }}/files/img/piedmont_bldgs-1024x665.png)

Piedmont's curving streets can be seen winding through the built form, which
comprises almost exclusively single-family detached homes. By contrast, we may
want to examine just one section of a city, such as this 1.5 km2 diagram of
Paris, centered on the Arc de Triomphe. Notice how Baron Haussmann's
[streets]({{ site.url }}{{ site.baseurl
}}/2017/01/square-mile-street-network-visualization/) radiate outward as
remnants of his massive demolition and renovation of 19th century Paris:

![Nolli map, figure-ground diagram of building footprints and urban form in
Paris, France from OpenStreetMap data created in Python with OSMnx]({{ site.url
}}{{ site.baseurl }}/files/img/paris_bldgs.png)

Each of these visualizations was created in just a handful of lines of code
using [OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx-python-street-networks/), a Python package I've developed as
part of my dissertation. The code to reproduce these figures is in this
[demo notebook](https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/10-building-footprints.ipynb).
Several more examples are available in OSMnx's
[GitHub repo](https://github.com/gboeing/osmnx). For more info, check out [the
paper]({{ site.url }}{{ site.baseurl
}}/publications/osmnx-complex-street-networks/) about OSMnx.
