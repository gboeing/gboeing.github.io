---
layout: post
title: Urban Informatics and Visualization at UC Berkeley
date: 2015-08-20 14:20:13-07:00
permalink: /2015/08/urban-informatics-visualization-berkeley/
---

The fall semester begins next week at UC Berkeley. For the third year in a row,
[Paul Waddell][1] and I will be teaching CP255: Urban Informatics and
Visualization, and this is my first year as co-lead instructor.

This masters-level course trains students to analyze urban data, develop
indicators, conduct spatial analyses, create data visualizations, and build
interactive web maps. To do this, we use the Python programming language, open
source analysis and visualization tools, and public data.

This course is designed to provide future city planners with a toolkit of
technical skills for quantitative problem solving. We don't require any prior
programming experience - we teach this from the ground up - but we do expect
prior knowledge of basic statistics and GIS.

_Update, September 2017_ : I am no longer a Berkeley GSI, but Paul's class is
ongoing. Check out his fantastic teaching materials in [his GitHub][4] repo.
From my experiences here, I have developed a course series on urban data science
with Python and Jupyter, available in [this GitHub repo][3].

_Teaching agenda for this semester:_

Learning basic Python coding: we spend about 3 weeks introducing the
fundamentals of coding, data types, conditionals, loops, and functions. Just
enough to make you dangerous.

The scientific computing Python stack, via Anaconda: we introduce numpy, scipy,
statsmodels, [pandas for data analysis][12], and [matplotlib for
visualization][10].

[CartoDB][11] for simple interactive web mapping.

[Leaflet][8] and [MapBox][9]: more advanced web mapping for community
engagement, advocacy, and visualizing research findings.

Installing, customizing, and using [Wordpress][5]: each student creates a
customized blog as a web portfolio to share and publicize their projects from
class.

[GitHub][3] for version control and collaborative development.

QGIS: a powerful, free, and open-source alternative to ArcGIS.

Data wrangling, regression, spatial statistics, and spatial analysis with Python
and the pandas and [geopandas][12] libraries.

Machine learning: including feature engineering and selection, dimensionality
reduction, modeling, and [clustering][6] in Python with scipy and scikit-learn.

Modeling and visualizing urban [accessibility][13], walkability, [street
networks][14] and the [built form][15].

Working with APIs, including the census bureau, Socrata (via the City of
Berkeley's open [data portal][2]), Google's [geocoding services][7], and the
Twitter API (including mapping and visualizing tweets).

Critical thinking skills about urban data and big data: how to formulate
research questions, conceptualize possible solutions, and interrogate problems
with equity and representation.

Our guest speakers this semester include Alicia Rouault and Prashant Singh - the
CEO and CTO, respectively, of LocalData; Michal Migurski, the CTO of Code for
America; Eddie Tejeda, the CEO of Civic Insight; Donna LaSala, the Director of
Information Technology for the City of Berkeley; AutoDesk's Matt Davis; and my
fellow doctoral student, Sam Maurer.

[1]: https://ced.berkeley.edu/ced/faculty-staff/paul-waddell
[2]: https://data.cityofberkeley.info/
[3]: https://github.com/gboeing/urban-data-science
[4]: https://github.com/waddell/urban-informatics-and-visualization
[5]: https://wordpress.org/
[6]: {{ "/2014/08/clustering-to-reduce-spatial-data-set-size/" | relative_url }}
[7]: {{ "/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/" | relative_url }}
[8]: {{ "/2014/08/visualizing-summer-travels-part-3-leaflet/" | relative_url }}
[9]: {{ "/2014/08/visualizing-summer-travels-part-4-mapbox-tilemill/" | relative_url }}
[10]: {{ "/2014/08/visualizing-summer-travels-part-5-python-matplotlib/" | relative_url }}
[11]: {{ "/2014/08/visualizing-summer-travels-with-cartodb/" | relative_url }}
[12]: {{ "/2014/09/visualizing-summer-travels-part-6-projecting-spatial-data-python/" | relative_url }}
[13]: {{ "/2016/07/visualize-urban-accessibility-walkability/" | relative_url }}
[14]: {{ "/2016/11/osmnx-python-street-networks/" | relative_url }}
[15]: {{ "/2017/01/square-mile-street-network-visualization/" | relative_url }}
