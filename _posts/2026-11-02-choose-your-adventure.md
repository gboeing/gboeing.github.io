---
layout: post
title: Choose Your Own Adventure
date: 2026-11-02 07:00:00-08:00
permalink: /2026/11/choose-your-adventure/
---

I have a new article, "[Choose Your Own Adventure: How Data Source Selection
Shapes Urban Accessibility Analyses][1]," out now in the _Journal of Transport
Geography_. It was coauthored by four students in my [Urban Data Lab][2]:
Jiyoon Kim, Daniele Simon-Thompson, Jaehyun Ha, and Ruoyu Chen.

How much does your choice of source data determine your findings? Researchers
spend a lot of time debating _how_ to measure accessibility, but less time
checking whether the underlying data represent what they really intend. If you
want to analyze access to urban parks, you download a parks dataset. There are
several such data sources out there and they all purport to contain the same
thing: parks.

Well, we compared park data from OpenStreetMap, Esri, SafeGraph, and the Trust
for Public Land in Portland and Buffalo. We filtered each to match our precise
definition of "park" for this study, then manually validated the spatial
features against imagery, official websites, and other information, then
measured park accessibility using each data source. We held the street network
and analysis methods constant to isolate differences arising from the park data
themselves.

Those differences were substantial. In Buffalo, the average distance to the
nearest park was 410 meters using OpenStreetMap but 820 meters using SafeGraph.
SafeGraph classified about 88% of census tracts as underserved in both cities,
compared to 58% in Portland and 63% in Buffalo using our validated composite
dataset. These discrepancies could substantially change where planners think
new parks are needed.

The sources differ in coverage and how they represent spatial features. Some
combine several parks into one, and some miss parks altogether. SafeGraph
sometimes represents a park or athletic field as just a building within it.
Despite being an expensive proprietary product, it performed particularly
poorly in our validation.

No data source is perfect. The point is that these sources are not interchangeable.
Analysts need to define their objects of inquiry carefully, compare sources,
and validate whether the data actually represent those objects. Otherwise, the
choice of dataset itself can determine the findings and downstream planning
priorities.

From the abstract:

> Urban park accessibility shapes mental health, physical well-being, and
> community cohesion. Measuring it is thus central to urban and landscape
> planning. Although researchers have debated the impacts of different
> accessibility measures on analysis results, scant attention has been paid to
> variability from data source selection. Do the results of accessibility
> analyses vary depending on the dataset used to define park locations and
> attributes? We compare four widely used geospatial data sources -
> OpenStreetMap, Esri, SafeGraph, and The Trust for Public Land - by validating
> their data and measuring park access across two cities. These datasets
> purport to cover the same spatial features, but our findings reveal wide
> discrepancies in accessibility results, driven by differences in dataset
> completeness, coverage, and accuracy between the sources. We provide
> guidelines for selecting and carefully validating data for accessibility
> analyses, as these decisions directly impact the accuracy and equity of
> downstream urban park planning and decision-making.

For more, check out the [article][1] at JTG.

<!-- markdownlint-disable MD013 -->
[1]: https://doi.org/10.1016/j.jtrangeo.2026.104841
[2]: {{ "/lab/" | relative_url }}
