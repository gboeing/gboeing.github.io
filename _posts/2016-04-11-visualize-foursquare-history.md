---
layout: post
title: Visualize Foursquare Location History
date: 2016-04-11 09:58:15.000000000 -07:00
permalink: /2016/04/visualize-foursquare-history/
---

I started using Foursquare at the end of 2012 and kept with it even after it
became the pointless muck that is Swarm. Since I've now got 4 years of
location history (ie, check-ins) data, I decided to visualize and map it with
Python, matplotlib, and basemap. The code is available in this [GitHub
repo](https://github.com/gboeing/data-visualization/blob/master/location-history/foursquare-location-history.ipynb). It's easy to re-purpose to
visualize your own check-in history: you just need to plug in your Foursquare
OAuth token then run the notebook.

First the notebook downloads all my check-ins from the Foursquare API. Then I
mapped all of them, using matplotlib basemap.

![Map of Foursquare Swarm check-in location
history]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_checkins_map-1024x634.png)

[Basemap](https://matplotlib.org/basemap/) is a fantastic, simple way to
project and map geospatial data attractively with Python (here, using the
[Kavrayskiy](https://xkcd.com/977/) projection). So, most of my
Foursquare/Swarm check-ins are unsurprisingly in the U.S. and along the west
coast. What countries _other_ than the U.S. have I checked-into the most?

[![Foursquare Swarm most common countries checked
into]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_countries.png)]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_countries.png)

Outside of the U.S., I've checked-in to Spain more than any other country.
Conversely, which cities (total, including the U.S.) have I checked-into the
most?

[![Foursquare Swarm most common cities checked
into]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_cities.png)]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_cities.png)

Berkeley dominates, which is unsurprising because I live and work in Berkeley.
Other bay area cities (San Francisco and Oakland) likewise come in second and
third. What _types_ of places have I checked-into the most?

[![Foursquare Swarm most common venue categories checked
into]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_categories.png)]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_categories.png)

I guess these venue categories reveal the highs and lows of PhD student life:
college buildings, libraries, bars, and breweries. Beyond categories, what
specific places (aka, Foursquare "venues") have I checked-into the most?

[![Foursquare Swarm most common venues checked
into]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_venues.png)]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_common_venues.png)

So the top four venues are all buildings on UC Berkeley's campus. Two others
are bars near my house in Berkeley. The rest of the top venues comprise my
closest grocery store, transit station, and airport.

## Foursquare/Swarm check-ins over time

How has my check-in behavior changed over time? Have I used Foursquare/Swarm
differently at different times?

[![Foursquare Swarm check-ins per
month]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_checkins_month.png)]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_checkins_month.png)

Clearly I have used it much more in some months than in others. While I
checked-in more in general when the app was new to me, there are also a lot of
spikes correlated with times I was on vacation or out of town. The valleys
tend to be mid-semester when I was busy at school and not going out and about
much. What about by day of the week?

[![Foursquare Swarm check-ins per day of the
week]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_checkins_weekday.png)]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_checkins_weekday.png)

Fridays and Saturdays have the most check-ins, because I'm going out more on
those days. But there isn't a _drastic_ difference in daily check-in activity.
What about by hour of the day?

[![Foursquare Swarm check-ins per hour of the
day]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_checkins_hour.png)]({{ site.url }}{{ site.baseurl }}/files/img/foursquare_checkins_hour.png)

My check-in activity peaks around mid-day before hitting another mini peak in
the late afternoon; from there it trails off into the night.

You can visualize your own Foursquare/Swarm check-in history using my Python
code in this [GitHub repo](https://github.com/gboeing/data-visualization/blob/master/location-history/foursquare-location-history.ipynb).
Just plug in your own Foursquare OAuth token, then run the notebook. You might
also be interested in [mapping everywhere you've ever been]({{ site.url }}{{ site.baseurl }}/2016/06/mapping-everywhere-ever-been/).
