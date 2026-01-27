---
layout: post
title: The Landscape of U.S. Rents
date: 2015-11-19 20:15:40-08:00
permalink: /2015/11/landscape-us-rents/
---

Which U.S. cities are the most expensive for rental housing? Where are rents
rising the fastest? The American Community Survey (ACS) recently released its
latest batch of 1-year data and I analyzed, mapped, and visualized it. My
[methodology]({{ site.url }}{{ site.baseurl
}}/2015/08/urban-informatics-visualization-berkeley/) is below, and my code and
data are in this
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/census-rents-2014).

This interactive map shows median rents across the U.S. for every
metro/micropolitan area. Click any one for details on population, rent, and
change over time. Click "switch" to re-draw the map to visualize how median
rents have risen since 2010:

The expensive coastal cities' median rents form a red line snaking along the
western and eastern seaboards. The nation's blue interior has lower rents.

![Most expensive cities in the US: United States metro areas by 2014 median
rent]({{ site.url }}{{ site.baseurl
}}/files/img/median_rent_msa-labels.png)

But when you switch to the percent _change_ in median rent since 2010, the
coasts cool off somewhat and the interior - especially east of the Rockies -
warms up. Inland rents seem to be lower than those on the coasts, but also seem
to have risen at a quicker rate since 2010.

![Most expensive cities in the US: United States metro areas by percent
increase in median rent between 2010 and 2014]({{ site.url }}{{ site.baseurl
}}/files/img/rent_change_msa-labels.png)

## Cities with the most expensive rents

Here are the U.S. metro areas with the highest rents (listed by principle city),
along with the median rent's percentage change since 2010:

![Most expensive cities in the United States: the US metro areas with the
highest median rent in 2014]({{ site.url }}{{ site.baseurl
}}/files/img/highest-median-rent-2014.png)

The list of most expensive cities is dominated by California, which comprises 10
of the top 15. Cities around the Bay Area also have particularly large increases
in median rent since 2010. New York surprisingly doesn't even enter the list
until #15. By contrast, here are the U.S. metro areas with the _fastest rising_
median rents since 2010:

![Most expensive cities in the United States: the US metro areas with the
fastest rising rents]({{ site.url }}{{ site.baseurl
}}/files/img/greatest-rent-increases-2014.png)

This list is largely composed of smaller cities, with plenty of representation
from [Texas](https://www.latimes.com/nation/la-na-texas-oil-20150303-story.html)
and
[North Dakota](https://www.nytimes.com/2015/08/09/travel/north-dakota-oil-boom.html)
\- each experienced a major oil boom and housing shortage in 2014. The median
rent in Odessa, TX rose 74% between 2010 and 2014, and the rent in Minot, ND
rose 65%. Overall, 2014 median rents are closely correlated with 2010 median
rents. This scatter plot depicts the 2014 vs 2010 median rents for each metro
area, with a simple regression line showing their relationship:

![scatter-rent-change-2010-2014]({{ site.url }}{{ site.baseurl
}}/files/img/scatter-rent-change-2010-2014.png)

And what about fast growing cities? Do they have faster rising rents? Not
really. The next scatter plot depicts the percent change in median rent vs the
percent change in population for each metro area: faster growing metros tend to
have _slightly_ faster rising rents, but the relationship is very weak.

![scatter-rent-pop-change-2010-14]({{ site.url }}{{ site.baseurl
}}/files/img/scatter-rent-pop-change-2010-14.png)

Faster-growing cities do not necessarily have faster-rising rents. There are
clearly other factors at play.

## Cities with the cheapest rents

Here are the U.S. metro areas with the least expensive rents, along with the
median rent's percent change since 2010:

![Least expensive cities in the United States: the US metro areas with the
lowest median rent in 2014]({{ site.url }}{{ site.baseurl
}}/files/img/lowest-median-rent-2014.png)

The least expensive rents are concentrated in small towns and predominantly in
the South. Talladega, Alabama has the lowest rent in the country by a
significant margin. Of the 10 cheapest cities, only 2 actually saw their median
rents decrease since 2010. Interestingly, North Carolina places 3 cities on this
list but also placed 2 cities on the list of fastest growing rents since 2010.
By contrast, here are the U.S. metro areas with the _fastest falling_ median
rents since 2010:

![Least expensive cities in the United States: the US metro areas with the
fastest decreasing rents]({{ site.url }}{{ site.baseurl
}}/files/img/greatest-rent-decreases-2014.png)

Talladega pops up here again and the list of cities with the greatest decrease
in median rent is peppered with small towns across the US. But if anyone's
looking to move to Kauai, now might be the time with Kapaa's rent decreasing
nearly 6% since 2010!

## Rents in the largest cities

The median rents in the 20 most populous U.S. metro areas vary considerably. San
Francisco ($1,445) and Washington DC ($1,398) are the highest, while St. Louis
($638) and Detroit ($692) in the Midwest are the lowest (and less than half as
high). Interestingly, every single one of the 20 largest metro areas saw rent
rise in excess of 5% since 2010 - even struggling areas like Riverside and
Detroit.

What is the relationship between city size and median rent? More populous cities
generally have higher rents, but the relationship is weak and there could be
many latent factors at play. This scatter plot depicts the 2014 median rent vs
the (log of) 2014 population of each metro area:

![U.S. cities (metro areas) with larger populations tend to have slightly
higher rents]({{ site.url }}{{ site.baseurl
}}/files/img/scatter-rent-pop-log-2010-14.png)

Rents rise and fall for many reasons. Jobs come and go, local economies boom and
bust. Fed monetary policy and inflation affect nominal rents. Cities restrict
density, which in turn restricts housing supply and pushes up costs. Across this
census data, there is no strong relationship between median rent and metro
population, or between rent increase and population change since 2010. Larger
cities do not always have higher rents, and faster-growing cities do not always
have faster-rising rents.

The census reflects the rents that surveyed residents are currently paying per
month. This gives an indicator of current metro housing costs, _not_ the current
metro market for available units. It's a representation of housing costs across
the area, which comprises rent-controlled units as well as non- rent-controlled
units, long-term rentals, recent rentals, etc. But, it's essential to note that
it does not disambiguate the current market for available units.

## Methodology

All of the data and code for my maps, analysis, tables, and plots are available
[on GitHub](https://github.com/gboeing/data-visualization/tree/master/census-rents-2014).
The 2014 rent data was just released in
[September](https://www.census.gov/programs-surveys/acs/news/data-releases/2014/release-schedule.html).
I downloaded the 2010 and 2014 ACS median contract rent data and annual
estimates of population from 2010-2014 from the Census Bureau's American
FactFinder web site.

These data sets cover every U.S. metropolitan and micropolitan area for which
the ACS gathers rent data. Some metro area names and IDs changed between 2010
and 2014, in which cases I had to link them to one another. I then parsed out
the principle city/state and geocoded it to latitude-longitude for mapping.

I did all the analysis and static mapping in Python with pandas and basemap. I
made the interactive map with Leaflet. For more on these methods, check out our
[Urban Informatics and Visualization]({{ site.url }}{{ site.baseurl
}}/2015/08/urban-informatics-visualization-berkeley/) course at UC Berkeley or
see my
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/census-rents-2014)
for the code.
