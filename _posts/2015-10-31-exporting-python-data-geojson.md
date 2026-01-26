---
layout: post
title: Exporting Python Data to GeoJSON
date: 2015-10-31 19:55:23-07:00
permalink: /2015/10/exporting-python-data-geojson/
---

I like to do my data wrangling and analysis work in Python, using the pandas
library. I also use Python for much of my data visualization and simple mapping.
But for interactive web maps, I usually use Leaflet. There isn't dead-simple way
to dump a pandas DataFrame with geographic data to something you can load with
Leaflet. You could use [GeoPandas]({{ site.url }}{{ site.baseurl
}}/2014/09/using-geopandas-windows/) to convert your DataFrame then dump it to
[GeoJSON](https://geojson.org/), but that isn't a very lightweight solution.

So, I wrote a simple reusable function to export any pandas DataFrame to
GeoJSON:

```python
def df_to_geojson(df, properties, lat='latitude', lon='longitude'):
geojson = {'type':'FeatureCollection', 'features':[]}
for _, row in df.iterrows():
feature = {'type':'Feature',
'properties':{},
'geometry':{'type':'Point',
'coordinates':[]}}
feature['geometry']['coordinates'] = [row[lon],row[lat]]
for prop in properties:
feature['properties'][prop] = row[prop]
geojson['features'].append(feature)
return geojson
```

You just pass the function a DataFrame, a list of columns to convert to GeoJSON
feature properties, and optionally which columns contain the latitude and
longitude data. You can use it like this:

```python
cols = ['street_address', 'issue_type', 'status']
geojson = df_to_geojson(df, cols)
```

And you can easily save it to a .js file for loading into Leaflet, like this:

```python
output_filename = 'dataset.js'
with open(output_filename, 'wb') as output_file:
output_file.write('var dataset = ')
json.dump(geojson, output_file, indent=2)
```
