---
layout: post
title: Estimating Daytime Population Density
date: 2017-12-18 16:44:28-08:00
permalink: /2017/12/estimating-daytime-population-density/
---

_Check out the [journal article][5] about this project._

I was recently asked: "how might someone figure out the local daytime population
density across the Bay Area from public data?" My answer, in short, was that you
really couldn't accurately. But you could at least produce a coarse, biased
estimate. Here's how.

I examined the Bay Area's tract-level daytime population density using three
input data products: the 2010 TIGER/Line census tracts shapefile with DP1
attributes, the 2010 California LEHD LODES data, and the census bureau's 2010 US
states shapefile. I preferred the 2010 census demographic data to (more recent)
ACS data because the ACS tract-level variables are five-year rolling averages.
Given this, I preferred not to compare 2014 LODES data to 2010-2014 ACS data as
the Bay Area experienced substantial housing, economic, and demographic upheaval
over this interval—[patterns obscured][3] in the ACS rolling average. To avoid
inconsistent comparison, I opted for more stale—but more accurate and
comparable—data.

![Map of the estimated daytime population density in the San Francisco Bay
Area][4]

I used Python and JavaScript to produce the analysis, the choropleth map above,
and the interactive Leaflet web map below (code [on GitHub][1]). First, I loaded
the LODES data. LODES is block-level and notoriously noisy (and synthetic!) so I
aggregated and summed the O-D pairs to the tract-level, at which it converges
[reasonably well][2] to the observed distribution. I then merged these data with
tract-level geometries and populations within ten Bay Area counties (the
standard nine- county ABAG/MTC region plus Santa Cruz county).

Next I estimated daytime population density (persons/km²) as tract total
population minus outbound commuters plus inbound commuters, normalized by land
area. I mapped it by trimming the geometries to California's landmass. This is
slightly coarse-grained, but it makes the bay much more legible than when the
water is covered by tracts, and besides, we normalized by land area (this does
however raise an interesting question about all those houseboats in Sausalito).
Then I projected it and produced a choropleth with seven quantiles. Finally, I
dumped the data to GeoJSON to make an interactive Leaflet web map of daytime
population density:

So how good are these estimates: what about confidence intervals? Well, we
cannot calculate them in a meaningful way from these data, as they are not
sampled. The decennial census is a complete enumeration and the LODES data is an
administrative payroll enumeration. Had I used ACS data, we could have looked at
the population sample estimates and standard errors to determine confidence
intervals, but this still would not take into account the LODES enumeration.

The latter points to another issue that makes any confidence in this analysis –
and its interpretability—far more fraught. We systematically ignore or
[undercount][2] the existence and flow of tourists, shoppers, students, the
self-employed, various government workers, and populations that are less-legible
to these data products, such as certain minority groups and the homeless. For
instance, according to its post-enumeration survey, the 2010 census overcounted
white Americans and undercounted black and Hispanic Americans. We also know such
artifacts tend to exhibit a very lumpy geography. Alternative data, such as
smartphone traces, could tell us other sides of this story but suffer the same
fundamental problem: biased toward certain populations plus balkanized data
ownership.

So let's muse briefly on takeaways and limitations. If you inspect the map
above, density patterns are straightforward and pass the smell test—urban cores
around the Bay Area clearly stand out, including Palo Alto and downtown San
Francisco. But there are anomalies. Due to its student and government worker
populations (which LODES misses), UC Berkeley's campus shows an absurdly low
daytime density.

If we are interested in hypothesis-testing the received wisdom on Jane Jacobs's
"chance encounters," vitality, and their relationship with human density,
artifacts like this would confound our findings. And what of other places that
would be prime locations for encounter, but whose daytime populations are
drastically under-represented by residence and commute, e.g., Fisherman's Wharf
(tourists), regional parks (picnickers, joggers, hikers, etc.), and various
large schools.

To further consider and expand the Fisherman's Wharf point, not all urban spaces
were created equal: the characteristics, culture, and type of density matter as
well. Smoothed-out spaces of consumption and escape do not encourage the same
types of human interaction as do spaces of challenge and difference. The built
form and the transportation–land use connection similarly must be controlled in
any such study. For example, an office skyscraper with underground parking might
exhibit extremely high daytime population density. But these workers may be
sealed in their cars to and from the office, take an elevator up to their desk,
and then interact only with a handful of colleagues each day. Does this foster
more chance encounters and "urban life" than Jane Jacobs's lower-density
sidewalk ballet? Finally, what about demographics? What is the value or impact
of daytime density in wealthy tracts versus impoverished tracts? What about in a
demographically-mixed tract with lower density but more opportunities for
cultural exchange? What about homeless populations—how does their density
contribute to urban life? And, in each of these questions, whose formulation of
"good" urban life might we refer to?

Urban studies and planning have uncovered innumerable advantages to density
(e.g., vitality, reduced VMT and energy consumption, increased pooling and
matching agglomeration efficiencies, etc.). But fundamental to any questions of
urbanization, planning, and policy are who we are analyzing, who we are missing,
who we are serving, and what values we are embedding consciously or
unconsciously in our models. These are critical open questions in scholarship
and practice as big data and algorithms fundamentally transform the disciplines
of urban planning, policy, and social science. How can we make visible the
various essential characteristics, behaviors, and even people that are so often
missed or oversimplified in traditional quantitative urban studies and data?

[1]: https://github.com/gboeing/data-visualization/blob/master/daytime-population-density/daytime-density.ipynb
[2]: https://onlinepubs.trb.org/onlinepubs/nchrp/docs/NCHRP08-36(98)_FR.pdf
[3]: {{ "/2016/08/craigslist-rental-housing-insights/" | relative_url }}
[4]: {{ "/files/img/sf-bay-daytime-population-density-map-749x1024.jpg" | relative_url }}
[5]: {{ "/publications/estimating-density-census-payroll/" | relative_url }}
