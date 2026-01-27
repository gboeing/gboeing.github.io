---
layout: post
title: Reducing Spatial Data Set Size with Douglas-Peucker
date: 2014-08-21 21:50:34-07:00
permalink: /2014/08/reducing-spatial-data-set-size-with-douglas-peucker/
---

In a previous post I discussed how to [reduce the size of a spatial data set by
clustering]({{ site.url }}{{ site.baseurl
}}/2014/08/clustering-to-reduce-spatial-data-set-size/). Too many data points in
a visualization can overwhelm the user and bog down on-the-fly client-side map
rendering (for example, with a javascript tool like [Leaflet]({{ site.url }}{{
site.baseurl }}/2014/08/visualizing-summer-travels-part-3-leaflet/)). So, I used
the DBSCAN clustering algorithm to reduce
[my data set](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-full.csv)
from 1,759 rows to 158 spatially-representative points. This [series of
posts]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing-summer-travels/) discusses this data set in depth.

## The Douglas-Peucker algorithm

Today I'll show another method for reducing the size of a spatial data set in
Python using the [shapely](https://pypi.python.org/pypi/Shapely) package's
implementation of the
[Douglas- Peucker](https://en.wikipedia.org/wiki/Ramer%E2%80%93Douglas%E2%80%93Peucker_algorithm)
algorithm. Douglas-Peucker reduces the number of points in a curve composed of
line segments by recursively dividing the line. The final result is a subset of
points from the original curve.

All of my code is available in this
[GitHub repo](https://github.com/gboeing/2014-summer-travels), particularly this
[IPython notebook](https://github.com/gboeing/2014-summer-travels/blob/master/shapely-simplify.ipynb).
Let's begin. First I import the necessary modules and load the full data set:

```python
import pandas as pd, numpy as np, matplotlib.pyplot as plt
from shapely.geometry import LineString
from time import time
df = pd.read_csv('summer-travel-gps-full.csv')
coordinates = df.as_matrix(columns=['lat', 'lon'])
```

Next, I create a shapely LineString from the coordinate data. This is the curve
that will comprise line segments between the coordinate points. I will then
simplify the geometry of this curve using shapely's simplify method.

If preserve topology is set to False, the method will use the Douglas-Peucker
algorithm, which is fine - I don't need to preserve topology because I just need
a reduced set of points. I also specify a tolerance value. All points in the
simplified figure will be within the tolerance distance of the original
geometry. After running the algorithm, I'll print out a couple of descriptive
stats to see what I ended up with:

```python
line = LineString(coordinates)
tolerance = 0.015
simplified_line = line.simplify(tolerance, preserve_topology=False)
print len(line.coords), 'coordinate pairs in full data set'
print len(simplified_line.coords), 'coordinate pairs in simplified data set'
print round(((1 - float(len(simplified_line.coords)) /
float(len(line.coords))) * 100), 1), 'percent compressed'
```

The Douglas-Peucker algorithm reduced the size of the data set by about 90%,
from 1,759 data points in the original full set to 178 points in the new reduced
data set. That's not bad - these stats are comparable to [results from
clustering]({{ site.url }}{{ site.baseurl
}}/2014/08/clustering-to-reduce-spatial-data-set-size/). Now let's save the
simplified set of coordinates as a new pandas dataframe:

```python
lon = pd.Series(pd.Series(simplified_line.coords.xy)[1])
lat = pd.Series(pd.Series(simplified_line.coords.xy)[0])
si = pd.DataFrame({'lon':lon, 'lat':lat})
si.tail()
```

## Find matching points in the original data set

The original full data set was [reverse-geocoded]({{ site.url }}{{
site.baseurl
}}/2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/) and
included city/country data and timestamps. The simplified set however only
contains coordinate lat-long data. So, I'll write a short routine that, for each
row in the simplified set, finds the row label of the row that contains its
matching lat-long coordinates in the original full set.

First I add a new column to the simplified set to contain the index of the
matching row from the original full data set. Then for each row in the
simplified set I loop through each row in the original full set, comparing
tuples of coordinates. If the points match, I save this full set row's index as
the match in the new column I added to the simplified set. It's simpler than it
sounds:

```python
start_time = time()
si['df_index'] = None
for si_i, si_row in si.iterrows():
si_coords = (si_row['lat'], si_row['lon'])
for df_i, df_row in df.iterrows():
if si_coords == (df_row['lat'], df_row['lon']):
si['df_index'][si_i] = df_i
break
print 'process took %s seconds' % round(time() - start_time, 2)
```

Now I select the rows from the original full data set whose indices appear in
the df_index column of the simplified data set. Then I save the data set to CSV
and examine its tail:

```python
rs = df.ix[si['df_index'].dropna()]
rs.to_csv('summer-travel-gps-simplified.csv', index=False)
rs.tail()
```

Looks good! I now have 178 rows of the original full data set, with city/country
data and timestamps.

## Comparing the full vs reduced data sets

Let's plot the new simplified set of GPS coordinate data against the original
full set:

```python
plt.figure(figsize=(10, 6), dpi=100)
rs_scatter = plt.scatter(rs['lon'], rs['lat'], c='m', alpha=.4, s=150)
df_scatter = plt.scatter(df['lon'], df['lat'], c='k', alpha=.3, s=10)
plt.xlabel('longitude')
plt.ylabel('latitude')
plt.title('simplified set of coordinate points vs original full set')
plt.legend((rs_scatter, df_scatter), ('simplified', 'original'), loc='upper
left')
plt.show()
```

![shapely-simplified-vs-full]({{ site.url }}{{ site.baseurl
}}/files/img/shapely-simplified-vs-full.png)

The
[new reduced data set](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-full.csv)
closely approximates the spatial distribution of the original full data set. You
can compare it to the results I got [by clustering]({{ site.url }}{{
site.baseurl }}/2014/08/clustering-to-reduce-spatial-data-set-size/): the
Douglas-Peucker gave us a better reduced data set than the k-means clustering
algorithm did, and one comparable to result of the DBSCAN clustering algorithm.

Now you can visualize the data set in more interesting ways.
