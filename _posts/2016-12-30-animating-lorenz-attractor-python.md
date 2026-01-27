---
layout: post
title: Animating the Lorenz Attractor with Python
date: 2016-12-30 16:24:55-08:00
permalink: /2016/12/animating-lorenz-attractor-python/
---

Edward Lorenz, the father of [chaos theory]({{ site.url }}{{ site.baseurl
}}/2015/03/chaos-theory-logistic-map/), once
[described chaos](https://www.mdpi.com/2079-8954/4/4/37/htm) as "when the
present determines the future, but the approximate present does not
approximately determine the future."

Lorenz first discovered chaos by accident while developing a simple mathematical
model of atmospheric convection, using three ordinary differential equations. He
found that nearly indistinguishable initial conditions could produce completely
divergent outcomes, rendering weather prediction
[impossible](https://www.mdpi.com/2079-8954/4/4/37/htm#sec6-systems-04-00037)
beyond a time horizon of about a fortnight.

![Lorenz system attractor animated GIF created with Python matplotlib scipy
numpy PIL]({{ site.url }}{{ site.baseurl
}}/files/img/animated-lorenz-attractor.gif)

In 1963, Lorenz developed this simple model of the way air moves around in the
atmosphere:

$ \\frac{dx}{dt} = \\sigma (y - x) $

$ \\frac{dy}{dt} = x (\\rho - z) - y $

$ \\frac{dz}{dt} = x y - \\beta z $

Now known as the _Lorenz System_, this model demonstrates chaos at certain
parameter values and its
[attractor is fractal](https://www.mdpi.com/2079-8954/4/4/37/htm#sec4-systems-04-00037).
The animation above depicts this system's behavior over time in Python, using
scipy to integrate the differential equations, matplotlib to draw the 3D plots,
and pillow to create the animated GIF. All the code to re-create this is
[on GitHub](https://github.com/gboeing/lorenz-system/blob/master/lorenz-system-attractor-animate.ipynb)
in [this repo](https://github.com/gboeing/lorenz-system).

In three dimensions, these trajectories never overlap and the system never lands
on the same point twice, due to its fractal geometry. We can also look at this
attractor in two dimensions with matplotlib:

![]({{ site.url }}{{ site.baseurl
}}/files/img/lorenz-attractor-phase-plane-1024x393.png)

For more about chaos, check out this [blog post]({{ site.url }}{{ site.baseurl
}}/2015/03/chaos-theory-logistic-map/) and this [article]({{ site.url }}{{
site.baseurl }}/publications/nonlinear-chaos-fractals-prediction/). You can
easily animate the Lorenz system and visualize its strange attractor with
Python, using my code this
[GitHub repo](https://github.com/gboeing/lorenz-system). You might also be
interested in [Pynamical](https://github.com/gboeing/pynamical), a Python
package for easily playing around with chaos, fractals, and strange attractors.
