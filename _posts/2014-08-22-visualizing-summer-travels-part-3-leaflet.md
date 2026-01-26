---
layout: post
title: 'Visualizing Summer Travels Part 3: Leaflet'
date: 2014-08-22 02:04:57-07:00
permalink: /2014/08/visualizing-summer-travels-part-3-leaflet/
---

_This post is [part of a series]({{ site.url }}{{ site.baseurl
}}/2014/08/visualizing- summer-travels/ "Visualizing Summer Travels") on
visualizing data from my summer travels._

I've previously discussed [my goals]({{ site.url }}{{ site.baseurl
}}/2014/07/visualizing-summer-travels- part-1-openpaths/) in visualizing GPS
data from my summer travels and explored [visualizing the data set]({{
site.url }}{{ site.baseurl }}/2014/08/visualizing-summer- travels-with-cartodb/)
with CartoDB. The full OpenPaths location data from my summer travels is
[available here](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-full.csv)
and I discussed how I [reverse-geocoded it here]({{ site.url }}{{ site.baseurl
}}/2014/08/reverse-geocode-a- set-of-lat-long-coordinates-to-city-country/).

Lastly, I reduced the size of this spatial data set so Leaflet can render it
more quickly on low-power mobile devices. I discussed why this is important and
how to do it with the [DBSCAN]({{ site.url }}{{ site.baseurl
}}/2014/08/clustering- to-reduce-spatial-data-set-size/) clustering algorithm
and also with the [Douglas-Peucker]({{ site.url }}{{ site.baseurl
}}/2014/08/reducing-spatial-data-set- size-with-douglas-peucker/) algorithm. The
final data set I'll be working with is
[available here](https://github.com/gboeing/2014-summer-travels/blob/master/data/summer-travel-gps-full.csv).

## Introducing Leaflet

Let's get started. [Leaflet](https://leafletjs.com/) is an open source
javascript library for building web maps. It can display tiled base maps and
load data layers from CSV or geoJSON etc. You can potentially do far more by
coding with Leaflet than you can with a simpler, easier solution like CartoDB.
The Leaflet library is very robust and customizable, allowing you to develop
rich interactive maps like the one below.

Zoom into a city like Barcelona to see detailed spatial data. Click on any data
point to get more information about it:

First, I create a new file called map.html and open it in a text editor. We need
to [download](https://leafletjs.com/download.html) and link to leaflet.css and
leaflet.js to make Leaflet work in a web page. We also need to link to
[omnivore](https://github.com/mapbox/leaflet-omnivore), because I'm going to use
it to load the CSV data. Lastly, create a new HTML div element to contain the
map:

```html
<!DOCTYPE html>
<html>
<head>
<title>Leaflet Map</title>
<meta charset='utf-8' />
<link rel='stylesheet' href='leaflet.css' />
<script src='leaflet.js'></script>
<script src='leaflet-omnivore.min.js'></script>
</head>
<body>

<div id='summer-travel-leaflet-map' style='width: 600px; height: 400px'></div>

<script>
```

## Initialize the map

Next, I create a Leaflet map centered on Europe (lat-long of 46.333, 12.011)
with a zoom-level of 4. Then add a base map [tile layer](https://mapbox.com/)
from Mapbox. This base map's URL template contains three parameters, denoted by
{z} and {x} and {y}. These parameters allow leaflet to specify individual tiles
to pull in on-the- fly: z is the zoom level, x is the longitude, and y is the
latitude:

```javascript
//create a map centered on europe with zoom level 4
var map = L.map('summer-travel-leaflet-map');
var centerCoordinates = new L.LatLng(46.333, 12.011);
var initialZoom = 4;
map.setView(centerCoordinates, initialZoom);

//add a basemap tile layer to the map and set maxZoom to how far you can zoom
this tileset in
var basemapURL = 'https://a.tiles.mapbox.com/v3/mapbox.world-
bright/{z}/{x}/{y}.png'
map.addLayer(new L.TileLayer(basemapURL, {maxZoom: 11, attribution: ''}));
```

## Specify point data icons

Next, I set up a customized icon. I used a [maki](https://www.mapbox.com/maki/)
icon from Mapbox but you can use any image file. Just specify its URL, size,
anchor (the point that corresponds to the marker's location), and popup anchor
(the point from which the popup will open, relative to the icon anchor):

```javascript
//set up a customized icon to use for the point data
var customIcon = L.icon({
iconUrl: 'circle-18.png',
iconSize: [18, 18], //size of the icon in pixels
iconAnchor: [9, 9], //point of the icon which will correspond to marker's
location (the center)
popupAnchor: [0, 0] //point from which the popup should open relative to the
iconAnchor
});
```

## Add data to the map

Then, I add the CSV data to the map. First have omnivore open the file. When
it's completed, cycle through each data point, setting its icon to the new
custom icon and creating a popup. The popup will display the timestamp, city,
and country from the data set. Then bind the popup to the marker:

```javascript
//load the CSV of point data to add to the map
omnivore.csv('summer-travel-gps-dbscan.csv')
.on('ready', function(layer) {
this.eachLayer(function(marker) {

//change the icons for each point on the map
marker.setIcon(customIcon);

//create popup text to display the date, city, and country of the GPS data
point
var popupText =
marker.toGeoJSON().properties.date +
'
I was in ' +
marker.toGeoJSON().properties.city + ', ' +
marker.toGeoJSON().properties.country;

//bind the popup to each icon
marker.bindPopup(popupText);
});
})
.addTo(map);
```

Lastly, I add HTML closing tags to finish the page off:

```html
</script>
</body>
</html>
```

Save the map.html file, then open it in a web browser. The Leaflet map will
appear like the one at the top of this page. It's zoomable and clickable - each
data point has a popup with time, date, city, and country information. You can
compare this visualization to similar ones using [CartoDB]({{ site.url }}{{
site.baseurl }}/2014/08/visualizing-summer-travels-with- cartodb/) or [Mapbox
and Tilemill]({{ site.url }}{{ site.baseurl }}/2014/08/visualizing-
summer-travels-part-4-mapbox-tilemill/).
