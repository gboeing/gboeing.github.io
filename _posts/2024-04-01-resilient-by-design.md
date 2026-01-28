---
layout: post
title: Resilient by Design
date: 2024-04-01 04:25:20-07:00
permalink: /2024/04/resilient-by-design/
---

I have a [new article][1] out now in _Transportation Research Part A: Policy and
Practice_. Here's a free open- access [preprint][2] if you lack institutional
access.

We simulate over 2.4 billion trips across every urban area in the world to
measure street network vulnerability to disasters, then measure the
relationships between street network design and these vulnerability indicators.

First we modeled the street networks of more than 8,000 urban areas in 178
countries. Then, for each urban area, we simulated disasters of 3 different
types (representing floods, earthquakes, and targeted attacks) and 10 different
extents. Then we simulated over 2.4 billion trips on these networks to measure
how certain trips become more circuitous or even impossible to complete as parts
of the network fail after a disaster. Finally we built a model to predict how
much a disaster would impact trips.

This model reveals how certain street network designs allow people and goods to
continue to flow after a disaster. All else equal, networks with higher
connectivity, fewer chokepoints, and less circuity are less vulnerable to
disruption.

![Measures of urban street network resilience and robustness to disasters like
flooding, sea level rise, earthquakes, and targeted attacks like warfare and
terrorism.][4]

In other words, a sprawling dendritic street network is easy to disconnect by
knocking out a few key nodes that link neighborhoods together. But (for example)
even the otherwise dense, connected Amsterdam is easy to disconnect by targeting
its chokepoints (like canal bridges).

![Measures of urban street network resilience and robustness to disasters like
flooding, sea level rise, earthquakes, and targeted attacks like warfare and
terrorism.][3]

These design characteristics offer high leverage points for street network
resilience and robustness that planners should emphasize when designing or
retrofitting urban networks. They shape how reliable our infrastructure networks
remain when we most urgently need them.

For more, check out [our paper][1] at TR-A

<!-- markdownlint-disable MD013 -->
[1]: https://doi.org/10.1016/j.tra.2024.104016
[2]: https://osf.io/tk93y
[3]: {{ "/files/img/street-network-disaster-resilience.png" | relative_url }}
[4]: {{ "/files/img/street-network-disasters-robustness.png" | relative_url }}
