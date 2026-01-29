---
layout: post
title: Animating the Lorenz Attractor with Python
date: 2016-12-30 16:24:55-08:00
permalink: /2016/12/animating-lorenz-attractor-python/
requires_mathjax: true
---

Edward Lorenz, the father of [chaos theory][7], once [described chaos][6] as
"when the present determines the future, but the approximate present does not
approximately determine the future."

Lorenz first discovered chaos by accident while developing a simple mathematical
model of atmospheric convection, using three ordinary differential equations. He
found that nearly indistinguishable initial conditions could produce completely
divergent outcomes, rendering weather prediction [impossible][5] beyond a time
horizon of about a fortnight.

![Lorenz system attractor animated GIF created with Python matplotlib scipy
numpy PIL][8]

In 1963, Lorenz developed this simple model of the way air moves around in the
atmosphere:

```latex
\frac{dx}{dt} = \sigma (y - x)
\frac{dy}{dt} = x (\rho - z) - y
\frac{dz}{dt} = x y - \beta z
```

Now known as the _Lorenz System_, this model demonstrates chaos at certain
parameter values and its [attractor is fractal][4]. The animation above depicts
this system's behavior over time in Python, using scipy to integrate the
differential equations, matplotlib to draw the 3D plots, and pillow to create
the animated GIF. All the code to re-create this is [on GitHub][2] in [this
repo][1].

In three dimensions, these trajectories never overlap and the system never lands
on the same point twice, due to its fractal geometry. We can also look at this
attractor in two dimensions with matplotlib:

![][9]

For more about chaos, check out this [blog post][7] and this [article][10]. You
can easily animate the Lorenz system and visualize its strange attractor with
Python, using my code this [GitHub repo][1]. You might also be interested in
[Pynamical][3], a Python package for easily playing around with chaos, fractals,
and strange attractors.

<!-- markdownlint-disable MD013 -->
[1]: https://github.com/gboeing/lorenz-system
[2]: https://github.com/gboeing/lorenz-system/blob/master/lorenz-system-attractor-animate.ipynb
[3]: https://github.com/gboeing/pynamical
[4]: https://www.mdpi.com/2079-8954/4/4/37/htm#sec4-systems-04-00037
[5]: https://www.mdpi.com/2079-8954/4/4/37/htm#sec6-systems-04-00037
[6]: https://www.mdpi.com/2079-8954/4/4/37/htm
[7]: {{ "/2015/03/chaos-theory-logistic-map/" | relative_url }}
[8]: {{ "/files/img/animated-lorenz-attractor.gif" | relative_url }}
[9]: {{ "/files/img/lorenz-attractor-phase-plane-1024x393.png" | relative_url }}
[10]: {{ "/publications/nonlinear-chaos-fractals-prediction/" | relative_url }}
