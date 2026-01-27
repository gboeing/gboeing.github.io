---
layout: post
title: 'New Article: OSMnx in CEUS'
date: 2017-10-30 13:29:40-07:00
permalink: /2017/10/new-article-osmnx-ceus/
---

My article "OSMnx: New methods for acquiring, constructing, analyzing, and
visualizing complex street networks" was published in the journal
[_Computers, Environment and Urban Systems_](https://doi.org/10.1016/j.compenvurbsys.2017.05.004)
earlier this month. OSMnx is a Python package that lets you download a street
network anywhere in the world at any scale with a single line of code, then
analyze or visualize it with one more line of code.

![OSMnx: Figure-ground diagrams of one square mile of each street network, from
OpenStreetMap, made in Python with matplotlib, geopandas, and NetworkX]({{
site.url }}{{ site.baseurl
}}/files/img/square-mile-street-networks-1024x822.jpg)

From the abstract:

> Urban scholars have studied street networks in various ways, but there are
> data availability and consistency limitations to the current urban
> planning/street network analysis literature. To address these challenges, this
> article presents OSMnx, a new tool to make the collection of data and creation
> and analysis of street networks simple, consistent, automatable and sound from
> the perspectives of graph theory, transportation, and urban design. OSMnx
> contributes five significant capabilities for researchers and practitioners:
> first, the automated downloading of political boundaries and building
> footprints; second, the tailored and automated downloading and constructing of
> street network data from OpenStreetMap; third, the algorithmic correction of
> network topology; fourth, the ability to save street networks to disk as
> shapefiles, GraphML, or SVG files; and fifth, the ability to analyze street
> networks, including calculating routes, projecting and visualizing networks,
> and calculating metric and topological measures. These measures include those
> common in urban design and transportation studies, as well as advanced
> measures of the structure and topology of the network. Finally, this article
> presents a simple case study using OSMnx to construct and analyze street
> networks in Portland, Oregon.

I developed [OSMnx]({{ site.url }}{{ site.baseurl
}}/publications/osmnx-complex-street-networks/) as part of my
[dissertation]({{ site.url }}{{ site.baseurl }}/publications/dissertation/)
research. For more info on using OSMnx, check out this [blog post]({{ site.url
}}{{ site.baseurl }}/2016/11/osmnx-python-street-networks/), its
[documentation](https://osmnx.readthedocs.io/), or its
[GitHub repo](https://github.com/gboeing/osmnx). Or, check out some quick
demonstrations of using OSMnx to analyze [street network patterns]({{ site.url
}}{{ site.baseurl }}/2017/01/square-mile-street-network-visualization/) or the
[urban form]({{ site.url }}{{ site.baseurl
}}/2017/04/urban-form-analysis-openstreetmap/).
