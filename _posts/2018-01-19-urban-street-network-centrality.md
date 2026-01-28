---
layout: post
title: Urban Street Network Centrality
date: 2018-01-19 17:07:25-08:00
permalink: /2018/01/urban-street-network-centrality/
---

_Check out the [journal article][6] about OSMnx._

We can measure and visualize how "important" a node or an edge is in a network
by calculating its centrality. Lots of flavors of centrality exist in network
science, including closeness, betweenness, degree, eigenvector, and PageRank.
Closeness centrality measures the average shortest path between each node in the
network and every other node: more central nodes are closer to all other nodes.
We can calculate this easily with [OSMnx][3], as seen in this [GitHub demo][2].
For example, here is the node closeness centrality for Piedmont, California:

![Urban street network graph node closeness and betweenness centrality][5]

The nodes are colored by their relative centrality, from lowest in dark purple
to highest in bright yellow. However, in some traditions of street network
analysis, streets are represented as nodes and intersections are represented as
edges. This is called a line graph, or sometimes a dual graph, and it
essentially inverts the topology of the street network seen above. We can do
this with OSMnx too. First we use networkx to convert our street network into
its line graph ([see example][2]). Then we calculate the closeness centrality
again and color the edges of our street network:

![Urban street network graph edge closeness and betweenness centrality][4]

The edges are now colored by their centrality, from lowest in dark purple to
highest in bright yellow. Alternatively, we could weight the nodes or edges by
different variables (such as number of amenities or streetscape quality), and we
can just as easily calculate and visualize betweenness centrality and other
measures. For more info about OSMnx check out this [journal article][6], this
[blog post][3], or its [GitHub repo][1] for installation instructions and
documentation.

<!-- markdownlint-disable MD013 -->
[1]: https://github.com/gboeing/osmnx
[2]: https://github.com/gboeing/osmnx-examples/blob/v0.11/notebooks/08-example-line-graph.ipynb
[3]: {{ "/2016/11/osmnx-python-street-networks/" | relative_url }}
[4]: {{ "/files/img/urban-street-network-graph-edge-closeness-centrality-1024x666.png" | relative_url }}
[5]: {{ "/files/img/urban-street-network-graph-node-closeness-centrality-1024x666.png" | relative_url }}
[6]: {{ "/publications/osmnx-complex-street-networks/" | relative_url }}
