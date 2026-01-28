---
layout: post
title: Street Network Analysis in a Docker Container
date: 2019-02-18 14:33:41-08:00
permalink: /2019/02/osmnx-docker-container/
---

[Containerization](<https://en.wikipedia.org/wiki/Container_(virtualization)>)
is the way of the ~~future~~ present. I've heard feedback from some folks over
the past few months who would like to play around with [OSMnx]({{ "/2018/03/osmnx-features-roundup/" | relative_url }}) for street network
analysis, transport modeling, and urban design—but can't because they can't
install Python and its data science stack on their computers. Furthermore, it
would be nice to have a consistent reference environment to deploy on AWS or
elsewhere in the cloud.

So, I've created a docker image containing OSMnx, Jupyter, and the rest of the
Python geospatial data science stack, available on
[docker hub](https://hub.docker.com/r/gboeing/osmnx) alongside additional usage
instructions. If you're starting from scratch, you can get started in four
simple steps:

First, install
[docker](https://store.docker.com/search?type=edition&offering=community).

Second, open a command prompt and change directories to a folder containing a
Jupyter notebook that you'd like to run,
[such as these](https://github.com/gboeing/osmnx-examples).

Third, run this command (note: if you're on Windows, replace "$PWD" with %cd%):

```bash
docker run --rm -it --name osmnx -p 8888:8888 -v "$PWD":/home/jovyan/work gboeing/osmnx
```

Finally, visit `http://localhost:8888` in your browser to launch
[Jupyter Lab](https://jupyterlab.readthedocs.io/).

You now have access to Jupyter Lab running inside the container, with OSMnx,
networkx, igraph, geopandas, pysal, matplotlib, and the rest of the geospatial
data science stack. Any changes you make to your notebook will be saved to your
local file system even though the container is ephemeral. For more info, you can
read more about [OSMnx here]({{ "/2018/03/osmnx-features-roundup/" | relative_url }}) or read about the image on
[docker hub](https://hub.docker.com/r/gboeing/osmnx).
