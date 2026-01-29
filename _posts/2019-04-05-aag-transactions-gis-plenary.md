---
layout: post
title: AAG Transactions in GIS Plenary
date: 2019-04-05 11:41:33-07:00
permalink: /2019/04/aag-transactions-gis-plenary/
---

I am giving the _Transactions in GIS_ plenary address at the AAG conference this
afternoon. I'll be reflecting on urban science, spatial networks, and
tool-building in academia, focusing on OSMnx. A paper will be forthcoming soon,
but in the meantime, for any interested plenary session attendees or other
folks, here are a few links to more info and related resources:

## Getting started

What is OSMnx? What does it do? Here's a [succinct overview][4].

The easiest way to get started with street network modeling and analysis in
OSMnx is with this [docker image][7] and these example/tutorial [Jupyter
notebooks][1]. The OSMnx software documentation is [available here][2] and this
[journal article][11] introduces it more formally.

## Street network models and measures

I've published a public data set of street network models and analytical
measures for every US city, town, urbanized area, county, census tract, and
Zillow-defined neighborhood. The resulting public data repository contains over
110,000 processed, cleaned street network graphs (which in turn comprise over 55
million nodes and over 137 million edges) in multiple file formats for you to
freely re-purpose, along with dozens of indicators calculated for each network.
You can read [more here][8].

## Other projects and analyses

This [round-up][4] contains a set of links to related projects. Some recent
popular projects include [these][5] [analyses][6] of street network orientation
around the world, this [urban form analysis][3], and [this paper][10] in
_Environment and Planning B_.

<!-- markdownlint-disable MD013 -->
[1]: https://github.com/gboeing/osmnx-examples
[2]: https://osmnx.readthedocs.io/
[3]: {{ "/2017/04/urban-form-analysis-openstreetmap/" | relative_url }}
[4]: {{ "/2018/03/osmnx-features-roundup/" | relative_url }}
[5]: {{ "/2018/07/city-street-orientations-world/" | relative_url }}
[6]: {{ "/2018/07/comparing-city-street-orientations/" | relative_url }}
[7]: {{ "/2019/02/osmnx-docker-container/" | relative_url }}
[8]: {{ "/2019/03/us-street-network-models-measures/" | relative_url }}
[9]: {{ "/files/img/manhattan-nyc-street-network-bearings-osmnx-189x300.png" | relative_url }}
[10]: {{ "/publications/multiscale-analysis-street-networks/" | relative_url }}
[11]: {{ "/publications/osmnx-paper/" | relative_url }}
