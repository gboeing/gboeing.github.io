---
layout: post
title: How to Visualize Urban Accessibility and Walkability
date: 2016-07-31 22:30:45-07:00
permalink: /2016/07/visualize-urban-accessibility-walkability/
---

Tools like [WalkScore](https://www.walkscore.com/) visualize how "walkable" a
neighborhood is in terms of access to different amenities like parks, schools,
or restaurants. It's easy to create accessibility visualizations like these _ad
hoc_ with Python and its [pandana](https://udst.github.io/pandana/) library.
Pandana (pandas for network analysis - developed by Fletcher Foti during his
dissertation research here at UC Berkeley) performs fast accessibility queries
over a network. I'll demonstrate how to use it to visualize urban walkability.
My code is in these
[IPython notebooks](https://github.com/gboeing/urban-data-science/tree/2017/20-Accessibility-Walkability)
in this [urban data science](https://github.com/gboeing/urban-data-science)
course GitHub repo.

First I give pandana a bounding box around Berkeley/Oakland in the East Bay of
the San Francisco Bay Area. Then I load the street network and amenities from
OpenStreetMap. In this example I'll look at accessibility to restaurants, bars,
and schools. But, you can create any basket of amenities that you are interested
in - basically visualizing a personalized "AnythingScore" instead of a generic
WalkScore for everyone. Finally I calculate and plot the distance from each node
in the network to the nearest amenity:

![Berkeley Oakland California street network walking accessibility and
walkability]({{ "/files/img/accessibility-all-east-bay-1024x752.png" | relative_url }})

The map shows the walking distance in meters from each network node to the
nearest restaurant, bar, or school. But, a better indicator of accessibility
might be having access to a large number of amenities. So instead of the
_nearest_, I'll plot accessibility to the _fifth-nearest_ amenity:

![Berkeley Oakland California street network walking accessibility and
walkability]({{ "/files/img/accessibility-all-5th-east-bay-1024x745.png" | relative_url }})

This map more clearly reveals high-amenity hot spots around downtown Oakland and
downtown Berkeley. We can also break out our amenities individually. Here is
access to the nearest bar:

![Berkeley Oakland California street network walking accessibility and
walkability to bars]({{ "/files/img/accessibility-bar-east-bay-1024x752.png" | relative_url }})

Compare that to the accessibility to the nearest school:

![Berkeley Oakland California street network walking accessibility and
walkability to schools]({{ "/files/img/accessibility-school-east-bay-1024x752.png" | relative_url }})

Unsurprisingly, different neighborhoods have very different levels of access to
schools versus bars. And, there are large residential swaths of the East Bay
with no schools within easy walking distance. An interesting next step would be
to aggregate accessibility to the census tract and examine how it correlates
with socio-demographic variables like race, education, and income.

Check out these
[IPython notebooks](https://github.com/gboeing/urban-data-science/tree/2017/20-Accessibility-Walkability)
in this [urban data science](https://github.com/gboeing/urban-data-science)
GitHub repo for more demos of using pandana to visualize urban accessibility and
walkability in Python.
