---
layout: post
title: Reverse Geocode a Set of Lat-Long Coordinates to City + Country
date: 2014-08-14 19:55:47-07:00
permalink: /2014/08/reverse-geocode-a-set-of-lat-long-coordinates-to-city-country/
---

This tutorial demonstrates how to reverse geocode a set of latitude-longitude
coordinates to city and country using Python and the Google Maps API.

I have [previously written]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing-summer-travels/ "Visualizing Summer Travels") about my
GPS location data from this summer's travels. The data set, gathered with the
OpenPaths app, contains lat- long coordinates and timestamps. Without city or
country data, any visualizations would be very simplistic because all I have is
coordinates and timestamps. It would be nice to reverse geocode these
coordinates to add city and country data to each point. Then, I could create
richer, more informative marker popups that include this new geographical
information.

Texas A&M Geoservices runs a nice
[web service](https://geoservices.tamu.edu/Services/ReverseGeocoding/) that
allows you to upload a data set of lat-long values as a batch, and receive
address data back. However, their database only covers the United States (it
requires you to have a _state_ field in addition to lat and long) so it won't
work for this case.

## Reverse Geocode with the Google Maps API

Instead, I will use the Google Maps API. Google provides a
[JSON API](https://developers.google.com/maps/documentation/geocoding/#ReverseGeocoding)
that allows you to request address data for a coordinate pair. Using Python, I
will reverse geocode each of the 1,759 GPS coordinates in my data set to city

- country. The original data set is
  [available here](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-no-city-country.csv)
  and all of this code is available in this
  [GitHub repo](https://github.com/gboeing/2014-summer-travels), particularly
  this
  [IPython notebook](https://github.com/gboeing/2014-summer-travels/blob/master/reverse-geocode-latlong.ipynb).
  First I import the necessary modules:

```python
import pandas as pd, requests
```

Next I load the data set that contains lat-long coordinates and add three new
columns - geocode_data (to contain the JSON blob Google sends back), city, and
country:

```python
df = pd.read_csv('summer-trip-gps.csv')
df['geocode_data'] = ''
df['city'] = ''
df['country'] = ''
```

Now I write a function to handle the reverse geocoding requests. This function
takes a string argument, _latlng_, in the form of "48.355328,11.7917104" and
sends it to the geocoding API. If the API returns a result then the function
returns it, otherwise it returns None.

```python
def reverse_geocode(latlng):
result = {}
url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng={}'
request = url.format(latlng)
data = requests.get(request).json()
if len(data['results']) > 0:
result = data['results'][0]
return result
```

Then I map my reverse_geocode function to each latitude-longitude value in the
dataframe's _latlng_ column:

```python
df['geocode_data'] = df['latlng'].map(reverse_geocode)
```

## Parsing City and Country data

Due to the ambiguity of terminology in different countries - city vs town, state
vs province, county vs region, etc. - most reverse geocoders return a full
address with normalized address elements . Google, however, returns a more
flexible list of address components, each tagged with one or more "types." I'll
have to parse this data to find city name - or the closest thing to it - for
each set of coordinates.

For each element in the series of reverse-geocode data I received from Google, I
search inside the address components list for an item that contains the string
"country" in its list of types. Then I do the same in search of a component that
represents municipality. Depending on the country, different types of components
could represent what I call a city or town in the United States - and when one
is found, I return it.

```python
def parse_country(geocode_data):
if (not geocode_data is None) and ('address_components' in geocode_data):
for component in geocode_data['address_components']:
if 'country' in component['types']:
return component['long_name']
return None

def parse_city(geocode_data):
if (not geocode_data is None) and ('address_components' in geocode_data):
for component in geocode_data['address_components']:
if 'locality' in component['types']:
return component['long_name']
elif 'postal_town' in component['types']:
return component['long_name']
elif 'administrative_area_level_2' in component['types']:
return component['long_name']
elif 'administrative_area_level_1' in component['types']:
return component['long_name']
return None
```

Finally, I map my parse_city and parse_country functions one at a time to the
series of reverse-geocode data I received from Google, and then save to CSV:

```python
df['city'] = df['geocode_data'].map(parse_city)
df['country'] = df['geocode_data'].map(parse_country)
df.to_csv('geocoded.csv', encoding='utf-8', index=False)
```

## Next steps

That's it. I now have a data set that contains lat-long coordinate pairs, time
stamps, city name, and country. For reference, once again here is the
[original data set](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-no-city-country.csv)
and here is the new
[reverse geocoded data set](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-full.csv).
Interestingly, Google's API returned no results for any of the lat-long
coordinates in Kosovo, so I had to enter the city and country for these (few)
rows manually.

This Python code can be easily changed to use a different geocoding API or
extract the full address text instead of city and country components. You could
also easily tweak this geocoder to search for municipality in other types of
address components, but these four I used covered my entire data set accurately.
The data can be visualized with nice informational pop-ups now with tools like
[CartoDB]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing-summer-travels-with-cartodb/), [Leaflet]({{ site.url
}}{{ site.baseurl }}/2014/08/visualizing-summer-travels-part-3-leaflet/), or
[Mapbox and Tilemill]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing-summer-travels-part-4-mapbox-tilemill/).
