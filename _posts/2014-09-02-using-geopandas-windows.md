---
layout: post
title: Using geopandas on Windows
date: 2014-09-02 19:43:12-07:00
permalink: /2014/09/using-geopandas-windows/
---

_This guide was written in 2014 and updated slightly in November 2020._

I recently went through the exercise of installing [geopandas][2] on Windows.
Having learned several valuable lessons, I thought I'd share them with the world
in case anyone else is trying to get this toolkit working in a Windows
environment. It seems that pip installing geopandas usually works fine on Linux
and Mac. However, several of its dependencies have C extensions that can cause
compilation failures with pip on Windows. This guide gets around that issue.

The best bet on Windows is to install Python wheels when possible, because they
contain pre-compiled extensions. The [conda][1] package manager that comes with
Anaconda/Miniconda does this for packages available in its repository, including
channels like conda-forge. Alternatively, Christoph Gohlke at UC Irvine
maintains a [large library][10] of Python wheels for Windows.

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
1. Download the wheels for [GDAL][6], [Fiona][5], [pyproj][7], [rtree][8], and
   [shapely][9] from Gohlke. Make sure you choose the wheel files that match
   your architecture (64-bit) and Python version (2.7 or 3.5). If Gohlke
   mentions any prerequisites in his descriptions of those 5 packages, install
   the prerequisites now (there might be a C++ redistributable or something
   similar listed there).
1. If OSGeo4W, GDAL, Fiona, pyproj, rtree, or shapely is already installed,
   uninstall it now. The GDAL wheel contains a complete GDAL installation -
   don't use it alongside OSGeo4W or other distributions.
1. Open a command prompt and change directories to the folder where you
   downloaded these 5 wheels.
1. pip install the GDAL wheel file you downloaded. Your actual command will be
   something like: pip install GDAL-1.11.2-cp27-none-win_amd64.whl
1. Add the new GDAL path to the windows [PATH][4] environment variable,
   something like C:\\Anaconda\\Lib\\site-packages\\osgeo
1. pip install your Fiona wheel file, then your pyproj wheel file, then rtree,
   and then shapely.
1. Now that GDAL and geopandas's dependencies are all installed, you can just
   pip install geopandas from the command prompt, like this (click for
   full-size):

![Install geopandas on windows with dependencies gdal, fiona, pyproj,
shapely][14]

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
is successfully installed and ready to be used. Here's a simple example of
using geopandas with matplotlib to plot point data over a shapefile basemap:

![most-isolated-projected][15]

For more advanced examples, see this tutorial on [R-tree spatial indexing][12]
with geopandas, and an intro to the [OSMnx][13] package that uses geopandas to
work with OpenStreetMap street networks. You may also be interested in this
simple [GitHub gist][3] I put together on a quick way to install geopandas as
part of a Python spatial science stack, with Miniconda.

<!-- markdownlint-disable MD013 -->
[1]: https://conda.pydata.org/
[2]: https://geopandas.org/
[3]: https://gist.github.com/gboeing/a6fcb39a9010d142446f4a83e43d8d6c
[4]: https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/
[5]: https://www.lfd.uci.edu/~gohlke/pythonlibs/#fiona
[6]: https://www.lfd.uci.edu/~gohlke/pythonlibs/#gdal
[7]: https://www.lfd.uci.edu/~gohlke/pythonlibs/#pyproj
[8]: https://www.lfd.uci.edu/~gohlke/pythonlibs/#rtree
[9]: https://www.lfd.uci.edu/~gohlke/pythonlibs/#shapely
[10]: https://www.lfd.uci.edu/~gohlke/pythonlibs/
[12]: {{ "/2016/10/r-tree-spatial-index-python/" | relative_url }}
[13]: {{ "/2016/11/osmnx-python-street-networks/" | relative_url }}
[14]: {{ "/files/img/install-geopandas-windows-gdal-fiona-pyproj-shapely.png" | relative_url }}
[15]: {{ "/files/img/most-isolated-projected.png" | relative_url }}
