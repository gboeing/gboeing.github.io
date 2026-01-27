---
layout: post
title: America's College Football Stadiums
date: 2016-01-10 17:24:06-08:00
permalink: /2016/01/visualizing-college-football-stadiums/
---

_Also check out this follow-up [analysis of stadium attendance]({{ site.url
}}{{ site.baseurl }}/2016/09/college-football-stadium-attendance/)._

The 2016 college football championship game between Clemson and Alabama was held
at University of Phoenix Stadium, where the NFL's Arizona Cardinals play.
Interestingly, this NFL (ironic, given its name) stadium is considerably smaller
than the home stadiums of either Clemson or Alabama. In fact _every_ NFL stadium
is considerably smaller than the largest college stadiums. Outside of North
Korea, the
[8 largest stadiums](https://en.wikipedia.org/wiki/List_of_stadiums_by_capacity)
in the world are college football stadiums, and the 15 largest college football
stadiums are larger than any NFL stadium.

Americans are obsessed with college football, but how much is too much? Today
most athletic departments are subsidized by their schools. Public universities
increased their annual football spending by
[$1.8 billion](https://www.ibtimes.com/college-football-public-universities-spend-millions-stadiums-despite-slim-chance-2258669)
between 2009-2013 while racking up huge debts to finance stadiums with
[little chance](https://www.politifact.com/virginia/statements/2014/dec/22/jim-moran/moran-says-only-20-colleges-make-profit-sports/)
of profit. This interactive map shows each NCAA Division I college football
team's home stadium: collectively they seat 8.5 million people. Click any point
for details about stadium capacity and year built:

Division I is the highest level of intercollegiate athletic competition
sanctioned by the NCAA. In football, its teams are divided into two
subdivisions: FBS (the upper echelon, in red above) and FCS (in blue). These
subdivisions are further divided into conferences, each with several teams.

## College football stadiums by seating capacity

Here is each Division I conference, colored by subdivision and ranked by the
average seating capacity of their teams' stadiums (see this follow-up for an
[analysis of attendance data]({{ site.url }}{{ site.baseurl
}}/2016/09/college-football-stadium-attendance/)):

![conferences-bar]({{ site.url }}{{ site.baseurl
}}/files/img/conferences-bar.png)

The Ivy League makes a good showing for the FCS, but the FBS conferences
unsurprisingly dominate overall. SEC teams on average have the largest capacity
stadiums, followed by teams in the Big Ten.

Here is each FBS team ranked by home stadium seating capacity and colored by
conference:

![stadiums-fbs-conf-bar]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-fbs-conf-bar-572x1024.png)

Although the SEC has the largest stadiums on average, the top three largest
stadiums all belong to Big Ten schools: Michigan, Penn State, and Ohio State.
But after that, seven of the next ten largest are in the SEC. Here are _all_ the
NCAA Division I teams' football stadiums (FBS and FCS) sorted by seating
capacity and colored by conference:

![stadiums-conf-bar]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-conf-bar-1024x595.png)

Or to look at this another way, below are the same stadiums again, colored by
subdivision instead of by conference. There are a few notably large FCS stadiums
including those of Tennessee State, Yale, Jackson State, Penn, and Harvard:

![stadiums-div-bar]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-div-bar-1024x595.png)

## College football stadiums by year built

We can also view these stadiums by age or its inverse: year built. The SEC on
average has the oldest stadiums, with an average year built of 1930. The Ivy
League is just behind them with an average year built of 1932. The conferences
with the newest football stadiums - the Northeast and the Big South - average
1990 and 1991 respectively:

![conferences-year-bar]({{ site.url }}{{ site.baseurl
}}/files/img/conferences-year-bar.png)

So the SEC's stadiums on average are both the largest and the oldest. How well
does build year correspond to stadium seating capacity? It turns out that many
of the oldest stadiums are also among the largest. This chart is similar to the
one we saw earlier, only colored by year built rather than by conference:

![stadiums-year-capacity-bar]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-year-capacity-bar-1024x595.png)

## Big stadiums are big investments

Most of these college football stadiums are larger than their university's
student bodies, and many are larger than the cities they are located in (also
see this follow-up [analysis of attendance]({{ site.url }}{{ site.baseurl
}}/2016/09/college-football-stadium-attendance/)). New stadium and renovation
costs recently have been skyrocketing into the nine-figure range: $450 million
at Texas A&M, $400 million at Notre Dame, and $474 million at Cal. While these
massive investments might make sense at football powerhouses with
[self-sufficient](https://www.politifact.com/virginia/statements/2014/dec/22/jim-moran/moran-says-only-20-colleges-make-profit-sports/)
athletic departments, Cal's athletic department required $90 million from the
campus between 2003 and 2011 to remain solvent.

Seismic renovation of California Memorial Stadium was necessary, but the initial
estimate for seismic safety repairs was just
[$14 million](https://www.berkeley.edu/news/extras/1997/SAFER/Pages/findings.html#Costs).
In the end, the school borrowed
[$445 million](https://bleacherreport.com/articles/1680579-cals-stadium-renovation-debt-shows-schools-need-to-keep-football-in-perspective)
for its renovation, to be
[repaid](https://www.sfgate.com/collegesports/article/Cal-scrambling-to-cover-stadium-bill-4604221.php)
through public funds and tuition hikes. This debt service now comprises 80% of
the athletic department's deficit, requiring millions of dollars in annual
subsidies from the campus. In an era of dwindling state appropriations for
Berkeley, is this the best use of precious university funds? Sigh. I guess I'm
looking forward to my next sunny September afternoon watching the Bears in
beautiful and seismically safe Memorial Stadium.

## Methodology

![stadiums-map]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-map-300x209.png)

All of the data and code for my maps, analysis, and visualizations are available
on
[GitHub](https://github.com/gboeing/data-visualization/tree/master/ncaa-football-stadiums).
The stadium capacity figures come from the
[comprehensive](https://en.wikipedia.org/wiki/List_of_NCAA_Division_I_FBS_football_stadiums)
[tables](https://en.wikipedia.org/wiki/List_of_NCAA_Division_I_FCS_football_stadiums)
on Wikipedia. I just copied and pasted the tables into a CSV file then cleaned
them up with Python. Then I geocoded each stadium to latitude-longitude (for
mapping) using the Foursquare API. I did all the analysis and static mapping in
Python with pandas, matplotlib, and basemap. I made the interactive map with
Leaflet. You might also be interested in this follow-up [analysis of
attendance]({{ site.url }}{{ site.baseurl
}}/2016/09/college-football-stadium-attendance/). For more on these methods,
check out our [Urban Informatics and Visualization]({{ site.url }}{{
site.baseurl }}/2015/08/urban-informatics-visualization-berkeley/) course at UC
Berkeley or see my
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/ncaa-football-stadiums)
for the code.
