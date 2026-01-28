---
layout: post
title: OSMnx Reference Paper Published
date: 2025-05-05 16:27:14-07:00
permalink: /2025/05/osmnx-reference-paper/
---

The official OSMnx reference paper, titled
"[Modeling and Analyzing Urban Networks and Amenities With OSMnx](https://doi.org/10.1111/gean.70009),"
has just been published open-access by _Geographical Analysis_. Years in the
making, this article describes what OSMnx does and why it does it that way.

![OSMnx: Figure-ground diagrams of one square mile of each street network, from
OpenStreetMap, made in Python with matplotlib, geopandas, and NetworkX]({{ "/files/img/square-mile-street-networks-1024x822.jpg" | relative_url }})

But wait, there's more! I also discuss many lessons learned over the past decade
in geospatial software development, including:

- what makes a good API, and why is it so hard for academics to make one
- how your development pipeline and continuous integration can make or break
  your quality of life as an open-source developer
- dependency ecosystems and the fine line between dependency heaven and
  dependency hell
- why reusable geospatial software is so important for open science, and how we
  can advance it

All of these lessons have become central to the work my RAs do in the Urban Data
Lab at USC. They're not always easy, but they make a clear improvement in code
quality, clarity, and reusability that directly impacts our downstream empirical
analyses and scientific theorizing.

From the abstract:

> OSMnx is a Python package for downloading, modeling, analyzing, and
> visualizing urban networks and any other geospatial features from
> OpenStreetMap data. A large and growing body of literature uses it to conduct
> scientific studies across the disciplines of geography, urban planning,
> transport engineering, computer science, and others. The OSMnx project has
> recently developed and implemented many new features, modeling capabilities,
> and analytical methods. The package now encompasses substantially more
> functionality than was previously documented in the literature. This article
> introduces OSMnx's modern capabilities, usage, and design—in addition to the
> scientific theory and logic underlying them. It shares lessons learned in
> geospatial software development and reflects on open science's implications
> for urban modeling and analysis.

This year will mark the 10th anniversary of my work on the OSMnx project. It
recently reached [version 2.0]({{ "/2024/12/osmnx-v2-released/" | relative_url }}) with a slew of new features and enhancements. If
you haven't used it before, OSMnx is a Python package to easily download, model,
analyze, and visualize street networks and any other geospatial features from
OpenStreetMap. You can download and model walking, driving, or biking networks
with a single line of code then quickly analyze and visualize them. You can just
as easily work with urban amenities/points of interest, building footprints,
transit stops, elevation data, street orientations, speed/travel time, and
routing.

For more, check out [the article](https://doi.org/10.1111/gean.70009) at
_Geographical Analysis_.
