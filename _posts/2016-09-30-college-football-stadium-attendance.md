---
layout: post
title: College Football Stadium Attendance
date: 2016-09-30 08:46:11-07:00
permalink: /2016/09/college-football-stadium-attendance/
---

A few months ago, I wrote about the [large investments]({{ site.url }}{{
site.baseurl }}/2016/01/visualizing-college-football-stadiums/) that U.S.
universities are making in their football stadiums. This also included a visual
analysis of [stadium capacity]({{ site.url }}{{ site.baseurl
}}/2016/01/visualizing-college-football-stadiums/) around the country. Outside
of North Korea, the 8 largest stadiums in the world are college football
stadiums, and the 15 largest college football stadiums are larger than any NFL
stadium.

I received a few comments interested in further analysis of the actual
attendance of games held in these stadiums. While _capacity_ is interesting
because it represents an expectation and sustained investment by the school,
_attendance_ represents the utilization of that investment. My stadium capacity
data covered every NCAA division I football stadium in the U.S. as of the 2015
college football season. So, I downloaded the NCAA's 2015 home game
[attendance data](https://www.ncaa.org/championships/statistics/ncaa-football-attendance)
to compare. My data, code, and analysis are in this
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/ncaa-football-stadiums).
First, I visualized the FBS attendance figures themselves:

[![NCAA college football teams' stadiums' 2015 average attendance per
game]({{ site.url }}{{ site.baseurl }}/files/img/stadiums-fbs-attend-conf-
bar-1024x594.png)]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-fbs-attend-conf-bar.png)

Michigan, Ohio State, and Texas A&M had the highest average attendance per home
game in 2015. Overall, six teams exceeded an average of 100,000 people in
attendance per game. The range of values ran from a high of 110,168 (Michigan)
to a low of 4,897 (Eastern Michigan): the stadiums with the highest and lowest
attendance are
[just 6 miles apart](https://www.google.com/maps/dir/Rynearson+Stadium,+799+North+Hewitt+Road,+Ypsilanti,+MI+48197/Michigan+Stadium,+1201+South+Main+Street,+Ann+Arbor,+MI+48104/@42.2244183,-83.7821856,11.75z/).
I also grouped these stadiums by conference:

[![NCAA college football conferences' teams' stadiums' 2015 average attendance
per game]({{ site.url }}{{ site.baseurl
}}/files/img/conferences-fbs-attendance-bar.png)]({{ site.url }}{{
site.baseurl }}/files/img/conferences-fbs-attendance-bar.png)

The SEC has the highest average home game attendance (79,000 people/game) and
the MAC has the lowest (15,000 people/game). Next I looked at how this relates
to [stadium capacity]({{ site.url }}{{ site.baseurl
}}/2016/01/visualizing-college-football-stadiums/). The colored bars below
represent average attendance per home game, with excess stadium capacity in
gray:

[![NCAA college football teams' stadiums' 2015 seating capacity and average
attendance per game, per school]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-fbs-attend-capacity-conf-bar-1024x594.png)]({{ site.url
}}{{ site.baseurl }}/files/img/stadiums-fbs-attend-capacity-conf-bar.png)

Teams like Michigan and Ohio State have enormous stadiums that fill up for all
of their games. Other teams like USC and UCLA have very large stadiums but fill
much smaller percentages of their capacity. Finally I looked at this another way
\- what is each stadium's average attendance as a percentage of its seating
capacity? In other words, what percent full does each stadium get, per-game, on
average?

[![NCAA college football teams' stadiums' 2015 average per-game attendance as
a percent of seating capacity]({{ site.url }}{{ site.baseurl
}}/files/img/stadiums-fbs-fill-conf-bar-1024x594.png)]({{ site.url }}{{
site.baseurl }}/files/img/stadiums-fbs-fill-conf-bar.png)

Oregon, Kansas State, and Oklahoma had the highest ratio of average attendance
to stadium capacity in 2015. Overall, 17 teams averaged a sell-out crowd or
better (e.g., from standing room only tickets exceeding the listed seating
capacity). The range of values ran from a high of 106.7% of capacity filled
(Oregon) to a low of 16.2% (Eastern Michigan). Also: 39 schools filled less than
two-thirds of their stadium's capacity on average, and 13 teams filled less than
half.

I did this analysis in Python and my code is in this
[GitHub repo](https://github.com/gboeing/data-visualization/tree/master/ncaa-football-stadiums).
For more on this, check out the [earlier post]({{ site.url }}{{ site.baseurl
}}/2016/01/visualizing-college-football-stadiums/) in which I analyze stadium
capacity and discuss the massive investments universities are now making in
their athletic facilities.
