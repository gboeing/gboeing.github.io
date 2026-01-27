---
layout: post
title: Getting Started with Python
date: 2017-02-28 16:02:18-08:00
permalink: /2017/02/python-getting-started/
---

This is a guide for absolute beginners to get started using Python. Since
releasing [OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx-python-street-networks/) a few weeks ago, I've received a lot
of comments from people who would love to try it out, but don't know where to
begin with Python. I'll demonstrate how to get Python up and running on your
system, how to install packages, and how to run code.

## Step 1: download and install Miniconda

Python is a programming language. Beyond its built-in functionality, there are
thousands of additional packages available for you to install and use. To use
Python, you need to install a Python distribution on your computer. Anaconda is
a popular and easy to use distribution and package manager. We'll install
Miniconda, a lightweight version of the full Anaconda.

First, [download](https://conda.io/miniconda.html) the Miniconda installer. Make
sure to get the one for your operating system and architecture. Also make sure
you download the installer for Python 3.6, not the outdated 2.7 version.

Run the Miniconda installer. In the installer dialog, set the destination folder
to C:\\Anaconda (or the equivalent if you're on a Mac, like ~/anaconda). Make
sure both boxes are ticked to add Anaconda to the system path and to register
Anaconda as the system default Python.

## Step 2: install a package

Ok, Python itself is now installed. Now we want to get some useful packages to
play around with. We'll add the [conda-forge](https://conda-forge.github.io/)
channel to our conda package manager so we can have access to their massive
repository of packages.

Open your computer's [command prompt](https://dosprompt.info/) (Windows) or
[terminal](https://guides.macrumors.com/Terminal) (Mac/Linux) and run the
following two commands:

```bash
conda update -n base conda
conda config --prepend channels conda-forge
```

This adds the conda-forge channel and then updates conda to the latest version.
Now let's install a couple of new packages into an isolated conda environment.
The first is [OSMnx]({{ site.url }}{{ site.baseurl
}}/2016/11/osmnx-python-street-networks/), a package to download, analyze, and
[visualize]({{ site.url }}{{ site.baseurl
}}/2017/01/square-mile-street-network-visualization/) street networks from
OpenStreetMap. The second is jupyterlab, which lets us interact with Python code
in handy Jupyter notebooks. Run the command:

```bash
conda create -n ox --strict-channel-priority osmnx jupyterlab
conda activate ox
```

Anytime you want to install another package, you can use the _conda install
package-name_ command syntax.

## Step 3: run some Python code

At your command prompt/terminal window, run the command:

```bash
jupyter lab
```

This launches the Jupyter lab interactive Python environment in your web
browser. In the top-right, click new Python 3 notebook to open a new notebook.
In the empty cell, paste this snippet of Python code:

```python
import osmnx as ox
%matplotlib inline
G = ox.graph_from_place('Piedmont, California, USA', network_type='drive')
fig, ax = ox.plot_graph(ox.project_graph(G))
```

This little snippet comprises just four lines of code. The first imports OSMnx
(the package we just installed). The second tells matplotlib (a data
visualization package) to display any visuals it produces inline within the
notebook. The third line tells OSMnx to download the drivable street network for
the city of Piedmont, California. The fourth line tells OSMnx to project the
street network and use matplotlib to visualize it.

To run this code cell, click it, then press shift + enter. When OSMnx finishes
downloading and plotting the street network, you should see something like this:

![Piedmont, California street network created in Python with OSMnx, networkx,
matplotlib]({{ site.url }}{{ site.baseurl
}}/files/img/piedmont-california-street-network.png)

## Next steps

There are lots of examples of stuff you can do with OSMnx in its
[examples repo](https://github.com/gboeing/osmnx-examples). All these examples
come packaged as Jupyter notebooks that you can download and run, just like
we've done in this tutorial.

Similarly, you can install any other Python packages available in conda the same
way we demonstrated here. If a package isn't in conda, read its documentation to
see how they recommend you install it. If you're interested in data science,
[pandas](https://pandas.pydata.org/) and
[scikit- learn](https://scikit-learn.org/) are a couple of great places to start
playing with code. You might also be interested in my course series on urban
data science: all of its materials are available as Jupyter notebooks on
[GitHub](https://github.com/gboeing/urban-data-science).

Lastly, there are lots of great Python
[tutorials](https://docs.python.org/3/tutorial/) to help you take your next
steps.
