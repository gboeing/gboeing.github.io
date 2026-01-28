---
layout: post
title: Square-Mile Street Network Visualization
date: 2017-01-02 12:28:02-08:00
permalink: /2017/01/square-mile-street-network-visualization/
---

_Check out the [journal article][8] about OSMnx. All figures in this article
come from this [journal article][9], which you can read/cite for more._

The heart of Allan Jacobs' classic book on street-level urban form and design,
_[Great Streets][3]_, features dozens of hand-drawn figure-ground diagrams in
the style of Nolli maps. Each depicts one square mile of a city's street
network. Drawing these cities at the same scale provides a revealing spatial
objectivity in visually comparing their street networks and urban forms.

We can recreate these visualizations automatically with Python and the
[OSMnx][4] package, which I developed as part of my dissertation. With OSMnx we
can download a street network from OpenStreetMap for anywhere in the world in
just one line of code. Here are the square-mile diagrams of Portland, San
Francisco, Irvine, and Rome created and plotted automatically by OSMnx:

![OSMnx: Figure-ground diagrams of one square mile of Portland, San Francisco,
Irvine, and Rome shows the street network, urban form, and urban design in these
cities][7]

The top row depicts the late 19th century orthogonal grids of Portland, Oregon
and San Francisco, California. Portland's famously compact walkable blocks are
clearly visible but its grid is interrupted by the Interstate 405 which tore
through the central city in the 1960s. In the bottom row, the business park in
suburban Irvine, California demonstrates the coarse-grained, modernist, auto-
centric urban form that characterized American urbanization in the latter half
of the 20th century. In stark contrast, Rome has a fine-grained, complex,
organic form evolved over millennia of self-organization and urban planning.

Remember these are all at the same scale: one square mile. Compare the block
sizes and intersection density in Portland to those in Irvine. Compare the
orthogonal grid in San Francisco and the modernist simplifications of Irvine to
the complex mesh of pedestrian paths, passageways, and alleys comprising much of
the circulation network in Rome.

![OSMnx: Figure-ground diagrams of one square mile of Manhattan New York, Paris
France, Tunis Tunisia, and Atlanta Georgia shows the street network, urban form,
and urban design in these cities with Python in the style of Allan Jacobs Great
Streets and Nolli maps][6]

Above, we see New York, Paris, Tunis, and Atlanta. Manhattan's rectangular grid
originates from the New York Commissioners' Plan of 1811. You can see Broadway
weaving diagonally across it. At the center of the Paris square mile lies the
Arc de Triomphe, from which Baron Haussmann's streets radiate outward, remnants
of his massive demolition and renovation of 19th century Paris. At the center of
the Tunis square mile lies its Medina, with a complex urban fabric that evolved
over the middle ages. Finally, Atlanta is typical of many American downtowns:
fairly coarse-grained, disconnected, and surrounded by freeways.

One final example: square miles of central Boston, Jumeirah circle in Dubai,
suburban northeastern Sacramento, and Osaka, Japan. What can you tell about
these neighborhoods from their street patterns?

![OSMnx: Figure-ground diagrams of one square mile of Boston Massachusetts,
Dubai UAE, Sacramento California, and Osaka Japan shows the street network,
urban form, and urban design in these cities with Python in the style of Allan
Jacobs Great Streets and Nolli maps][5]

To compare urban form in different kinds of places, these visualizations have
depicted some downtowns, some business parks, and some suburban residential
neighborhoods. These patterns also vary greatly within cities: Portland's
suburban east side looks very different than its downtown, and Sacramento's
grid-like downtown looks very different than its residential suburbs. These
visualizations, rather, show us how different urbanization patterns and
paradigms compare at the same scale.

Several more examples and all the code to reproduce these diagrams are in [this
notebook][2] in OSMnx's [GitHub repo][1]. You can adapt it to visualize any
street network anywhere in the world. For more info, check out [the paper][8]
about OSMnx. All the figures in this post come from [this article][9], which you
can read/cite.

[1]: https://github.com/gboeing/osmnx
[2]: https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/09-example-figure-ground.ipynb
[3]: https://www.pinterest.com/pin/191191946661280803/
[4]: {{ "/2016/11/osmnx-python-street-networks/" | relative_url }}
[5]: {{ "/files/img/gs_boston_dubai_sacramento_osaka-970x1024.png" | relative_url }}
[6]: {{ "/files/img/gs_new_york_paris_tunis_atlanta-970x1024.jpg" | relative_url }}
[7]: {{ "/files/img/gs_portland_san_francisco_irvine_rome-970x1024.jpg" | relative_url }}
[8]: {{ "/publications/osmnx-complex-street-networks/" | relative_url }}
[9]: {{ "/publications/spatial-information-urban-morphology/" | relative_url }}
