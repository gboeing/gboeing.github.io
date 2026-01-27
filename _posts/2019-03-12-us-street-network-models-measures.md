---
layout: post
title: US Street Network Models and Measures
date: 2019-03-12 08:09:55-07:00
permalink: /2019/03/us-street-network-models-measures/
---

My new [article]({{ site.url }}{{ site.baseurl
}}/publications/street-networks-models-measures/), "Street Network Models and
Measures for Every U.S. City, County, Urbanized Area, Census Tract, and
Zillow-Defined Neighborhood" has been published in _Urban Science_. This paper
reports results from a broader project that collected raw street network data
from OpenStreetMap using the Python-based OSMnx software for every U.S. city and
town, county, urbanized area, census tract, and Zillow-defined neighborhood
boundary. It constructed nonplanar directed multigraphs for each and analyzed
their structural and morphological characteristics.

The resulting public [data repository](https://doi.org/10.7910/DVN/CUWWYJ)
contains over 110,000 processed, cleaned street network graphs (which in turn
comprise over 55 million nodes and over 137 million edges) at various
scales—comprehensively covering the entire U.S.—archived as reusable open-
source GraphML files, node/edge lists, and ESRI shapefiles that can be
immediately loaded and analyzed in standard tools such as ArcGIS, QGIS,
NetworkX, graph-tool, igraph, or Gephi.

![OSMnx Harvard Dataverse street network graph models and measures for every
U.S. city, town, urbanized area, county, census tract, and Zillow
neighborhood.]({{ site.url }}{{ site.baseurl
}}/files/img/fig_study_sites-411x1024.jpg)

The [repository](https://doi.org/10.7910/DVN/F5UNSK) also contains calculated
indicators and measures of each network's geometric and topological
characteristics common in urban design, transportation planning, civil
engineering, and network science. No other such comprehensive data set
previously existed. These data offer researchers and practitioners a new ability
to quickly and easily conduct graph-theoretic urban circulation network analysis
anywhere in the U.S. using standard, free, open-source tools.

For more, check out [the article]({{ site.url }}{{ site.baseurl
}}/publications/street-networks-models-measures/) or read more [about
OSMnx]({{ site.url }}{{ site.baseurl }}/2018/03/osmnx-features-roundup/).
