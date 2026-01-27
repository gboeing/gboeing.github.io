---
layout: post
title: A Universal Model of Urban Street Networks
date: 2025-09-29 12:35:31-07:00
permalink: /2025/09/universal-model-street-networks/
---

Marc Barthelemy and I have a new article out in _Physical Review Letters_ titled
"[Universal Model of Urban Street Networks](https://doi.org/10.1103/1vj4-n8vn)"
(because PRL apparently doesn't allow titles that start with an indefinite
article).

We argue that a distinguishing feature of urban street networks, which makes
them unique compared to other spatial networks, is their extreme betweenness
centrality heterogeneity. In plain English that means that street networks are
particularly prone to chokepoints: network nodes on which a disproportionately
high number of shortest paths depend. Theoretically, we can explain this as a
street network that started as a backbone road, then grew and filled in as the
area around it urbanized.

Building on this idea, we propose a generative model of urban street networks

- that is, a model that generates street networks that reproduce this
  distinguishing feature. It turns out that most models don't! Our proposed
  model starts with a minimum spanning tree (the initial backbone) then adds
  edges iteratively (the subsequent urbanization) to match empirical degree
  distributions. Our model, implemented in Python, reproduces key empirical
  characteristics well.

![Two different networks with both having an equivalent density p=0.5 (N=4000).
On the left, we show a random Eden-like model, and below, the corresponding
distribution of the Gini coefficient. In this case the Gini coefficient of the
BC is G=0.51, and the spatial Gini is Gspa=0.26. On the right, we show the
result for our model based on the MST and the corresponding BC map. The BC Gini
is here equal to G=0.72, and the spatial Gini Gspa=0.40.]({{ site.url }}{{
site.baseurl }}/files/img/generative-network-models.png)

From the abstract:

> Analyzing 9000 urban areas' street networks, we identify properties, including
> extreme betweenness centrality heterogeneity, that typical spatial network
> models fail to explain. Accordingly we propose a universal, parsimonious,
> generative model based on a two-step mechanism that begins with a spanning
> tree as a backbone then iteratively adds edges to match empirical degree
> distributions. Controlled by a single parameter representing
> lattice-equivalent node density, it accurately reproduces key universal
> properties to bridge the gap between empirical observations and generative
> models.

For more, check out the [article](https://doi.org/10.1103/1vj4-n8vn) at PRL or
the open-access arXiv [pre-print](https://arxiv.org/abs/2509.21931).
