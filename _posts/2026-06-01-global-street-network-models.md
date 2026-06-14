---
layout: post
title: Urban Science Beyond Samples
date: 2026-06-14 05:00:00-07:00
permalink: /2026/06/global-street-network-models/
---

My article, "Urban Science Beyond Samples: Up-to-Date Street Network Models
and Indicators for Every Urban Area in the World," has just been published in
_Environment and Planning B: Urban Analytics and City Science_. You can
download it open-access from [EP-B][1].

My own research goal over the past few years has been to try to conduct urban
network science "beyond samples" -- that is, what can we measure for _every_
urban area in the world? Alternatively, what can we _not_ measure consistently
and accurately? And what urban theory can we build from comprehensive worldwide
studies?

This article presents up-to-date street network models and indicators for every
urban area in the world: 10,351 urban areas across 189 countries, built from
2025 Global Human Settlement Layer boundaries and 2025 OpenStreetMap data. The
workflow ingests 180 million OSM nodes and 360 million OSM edges, then produces
reusable network models, GIS files, node/edge lists, metadata, and indicators
such as intersection densities, street lengths, circuity, orientation,
elevation, grade, and betweenness centrality.

The article expands my [past work][2] modeling and analyzing the street
networks of every urban area in the world. It is an update that adds 1,400
more urban areas, 11 more countries, and approximately 20 million more street
network nodes and 40 million more edges. It also now includes betweenness
centrality calculations for every node in every urban area, enabling analyses
of network importance, concentration, and chokepoints without requiring users
to perform these (very) computationally expensive calculations themselves.
These new models allow us to study more (and more-recently urbanized) cities
than before. And they allow us to link these street network models and
indicators to hundreds of new, up-to-date Global Human Settlement Layer
attributes on urban climate, land use, economic conditions, etc.

The purpose of this update is
practical (for me, and hopefully for others): if we want to compare cities,
model accessibility, study resilience, or evaluate street network design, we
need models that are current, consistent, and readily available across places.
OpenStreetMap gives us raw data worldwide, but turning it into scientifically
useful graph models and indicators still takes coding, computation, and lots
of methodological decisions that pose barriers for many studies.

I hope this reduces duplicated effort in our discipline: rather than requiring
every researcher to independently download, clean, model, and analyze street
network data, the repository provides reusable models, indicators, and code in
a fully reproducible workflow. These data can support studies of accessibility,
active transport, network resilience, street connectivity, sprawl, emissions,
and local planning decisions. They should be especially useful where
ready-to-use urban network data are harder to come by, particularly in
under-studied or less-resourced regions.

The data repository is available on the [Harvard Dataverse][3] and the source
code is on [GitHub][4].

From the abstract:

> Urban planners need up-to-date, global, and consistent street network models
> and indicators to measure resilience and performance, model accessibility, and
> target local quality-of-life interventions. This article presents up-to-date
> street network models and indicators for every urban area in the world. It uses
> 2025 urban area boundaries from the Global Human Settlement Layer, allowing
> users to join these data to hundreds of other urban attributes. Its workflow
> ingests 180 million OpenStreetMap nodes and 360 million OpenStreetMap edges
> across 10,351 urban areas in 189 countries. The code, models, and indicators
> are publicly available for reuse. These resources unlock worldwide urban street
> network science beyond samples as well as local analyses in under-resourced
> regions where models and indicators are otherwise less-accessible.

For more, check out the free open-access article at [EP-B][1].

<!-- markdownlint-disable MD013 -->
[1]: https://doi.org/10.1177/23998083261446991
[2]: {{ "/2021/03/worldwide-street-network-models-indicators/" | relative_url }}
[3]: <https://dataverse.harvard.edu/dataverse/global-urban-street-networks>
[4]: <https://github.com/gboeing/street-network-models>
