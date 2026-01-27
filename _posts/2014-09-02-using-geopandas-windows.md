---
layout: post
title: Using geopandas on Windows
date: 2014-09-02 19:43:12-07:00
permalink: /2014/09/using-geopandas-windows/
---

_This guide was written in 2014 and updated slightly in November 2020._

I recently went through the exercise of installing
[geopandas](https://geopandas.org/) on Windows. Having learned several valuable
lessons, I thought I'd share them with the world in case anyone else is trying
to get this toolkit working in a Windows environment. It seems that pip
installing geopandas usually works fine on Linux and Mac. However, several of
its dependencies have C extensions that can cause compilation failures with pip
on Windows. This guide gets around that issue.

The best bet on Windows is to install Python wheels when possible, because they
contain pre-compiled extensions. The [conda](https://conda.pydata.org/) package
manager that comes with Anaconda/Miniconda does this for packages available in
its repository, including channels like conda-forge. Alternatively, Christoph
Gohlke at UC Irvine maintains a
[large library](https://www.lfd.uci.edu/~gohlke/pythonlibs/) of Python wheels
for Windows.

## Installing geopandas the easy way

First, try to install geopandas (and JupyterLab) the easy way using conda and
conda-forge. From your command prompt, run:

```bash
conda config --prepend channels conda-forge
conda create -n geo --strict-channel-priority geopandas jupyterlab
```

Then activate your new geo environment and run some code. If that doesn't work,
install it the manual but foolproof way...

## Installing geopandas and its dependencies manually

1. First and most important: do not try to directly pip install or conda install
   any of the dependencies - if you do, they will fail in some way later, often
   silently or obscurely, making troubleshooting difficult. If any are already
   installed, uninstall them now.
1. Download the wheels for
   [GDAL](https://www.lfd.uci.edu/~gohlke/pythonlibs/#gdal),
   [Fiona](https://www.lfd.uci.edu/~gohlke/pythonlibs/#fiona),
   [pyproj](https://www.lfd.uci.edu/~gohlke/pythonlibs/#pyproj),
   [rtree](https://www.lfd.uci.edu/~gohlke/pythonlibs/#rtree), and
   [shapely](https://www.lfd.uci.edu/~gohlke/pythonlibs/#shapely) from Gohlke.
   Make sure you choose the wheel files that match your architecture (64-bit)
   and Python version (2.7 or 3.5). If Gohlke mentions any prerequisites in his
   descriptions of those 5 packages, install the prerequisites now (there might
   be a C++ redistributable or something similar listed there).
1. If OSGeo4W, GDAL, Fiona, pyproj, rtree, or shapely is already installed,
   uninstall it now. The GDAL wheel contains a complete GDAL installation -
   don't use it alongside OSGeo4W or other distributions.
1. Open a command prompt and change directories to the folder where you
   downloaded these 5 wheels.
1. pip install the GDAL wheel file you downloaded. Your actual command will be
   something like: pip install GDAL-1.11.2-cp27-none-win_amd64.whl
1. Add the new GDAL path to the windows
   [PATH](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/)
   environment variable, something like C:\\Anaconda\\Lib\\site-packages\\osgeo
1. pip install your Fiona wheel file, then your pyproj wheel file, then rtree,
   and then shapely.
1. Now that GDAL and geopandas's dependencies are all installed, you can just
   pip install geopandas from the command prompt, like this (click for
   full-size):

[![Install geopandas on windows with dependencies gdal, fiona, pyproj,
shapely]({{ site.url }}{{ site.baseurl
}}/files/img/install-geopandas-windows-gdal-fiona-pyproj-shapely.png)]({{
site.url }}{{ site.baseurl
}}/files/img/install-geopandas-windows-gdal-fiona-pyproj-shapely.png)

## Verifying the geopandas installation

Close the command prompt. To test GDAL, re-open the command prompt and run:

```bash
gdalinfo --help-general
```

This command will display GDAL usage instructions if it's installed properly and
the Windows PATH variable is pointing correctly to its install directory.
Lastly, test the Python bindings and geopandas itself. From a Python
interpreter, run the following lines of code:

```python
from osgeo import gdal, ogr, osr
from fiona.ogrext import Iterator, ItemsIterator, KeysIterator
from geopandas import GeoDataFrame
gdal.VersionInfo()
```

If each of these lines of code runs successfully without errors, then geopandas
is successfully installed and ready to be used. Here's a simple [example]({{
site.url }}{{ site.baseurl }}/2014/08/visualizing-summer-travels-
part-5-python-matplotlib/ "Visualizing Summer Travels Part 5: Python +
Matplotlib") of using geopandas with matplotlib to plot point data over a
shapefile basemap:

[![most-isolated-projected]({{ site.url }}{{ site.baseurl
}}/files/img/most-isolated-projected.png)]({{ site.url }}{{ site.baseurl
}}/2014/09/visualizing-summer-travels-part-6-projecting-spatial-data-python/)

For more advanced examples, see this tutorial on [R-tree spatial indexing]({{
site.url }}{{ site.baseurl }}/2016/10/r-tree-spatial-index-python/) with
geopandas, and an intro to the [OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx-python-street-networks/) package that uses geopandas to work
with OpenStreetMap street networks. You may also be interested in this simple
[GitHub gist](https://gist.github.com/gboeing/a6fcb39a9010d142446f4a83e43d8d6c)
I put together on a quick way to install geopandas as part of a Python spatial
science stack, with Miniconda.
