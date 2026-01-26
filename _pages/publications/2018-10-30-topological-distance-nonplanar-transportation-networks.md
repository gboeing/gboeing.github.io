---
layout: page
title: Topological Distance Between Nonplanar Transportation Networks
permalink: /publications/topological-distance-nonplanar-transportation-networks/
---

**Cite as:** Abdelkader, A., G. Boeing, B. T. Fasy, D. L. Millman. 2018.
"Topological Distance Between Nonplanar Transportation Networks." Fall Workshop
on Computational Geometry. Queens, New York.

Download [PDF]({{ site.url }}{{ site.baseurl }}/files/img/abfm-localhom.pdf)

## Abstract

In recent years, street network analysis has received substantial attention in
scholarly and professional urban planning and transportation engineering. Street
networks are typically modeled as a graph with intersections as nodes connected
to one another by street segments as edges. This graph model enables the
computation of various metric and topological measures by efficient algorithms,
including accessibility, connectivity, centrality, eccentricity, betweenness,
clustering, block lengths, and average circuity. One drawback of most existing
research in street network analysis is the common assumption of planarity or
approximate planarity of the network. In a planar model, the street network is
represented in two dimensions such that grade-separated edge crossings such as
bridges and tunnels create artificial nodes in the graph. While planar
simplifications can be useful for computational tractability, they misrepresent
many real-world urban street networks. The failure of this assumption can lead
to substantial errors in analytical results. For the present study, we focus in
particular on map comparison, which can serve the field of urban morphology and
the evaluation of map reconstruction algorithms. A recent line of work showed
the advantage of topology-based measures for map comparison. Using the common
representation of streets by their centerlines, streets are split into a
sequence of line segments or street segments in 2D. Leveraging insights from the
nascent field of topological data analysis, the shape of the network can be
described by tracing how the connectivity of street segments evolves as segments
are gradually thickened. These methods of topological map comparison can be
applied in transportation engineering and urban planning research/practice to
quantify the difference between two graphs — accounting for non-planarity — to
measure street network evolution over time, to compare the structural and
functional differences among proposed urban design alternatives, or to match
trip trajectories to pre-existing infrastructure models. We extend and enhance
the topology-based measure presented in to accommodate grade-separated nonplanar
street networks. Our work is similar in spirit to the study of multi-layered
environments in motion planning. With the aim of extending known algorithms and
data structures for 2D spaces to accommodate surfaces embedded in 3D, the
surface is partitioned into layers. Each layer is required to project onto the
ground plane without self-intersection. The connections between layers can be
thought of as staircases and ramps; ignoring heights, paths across layers are
measured by the projected distance.
