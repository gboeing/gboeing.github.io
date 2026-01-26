---
layout: post
title: Geospatial Tool Building
date: 2020-10-01 03:01:09-07:00
permalink: /2020/10/tgis-geospatial-tool-building/
---

My new article "[The Right Tools for the Job: The Case for Spatial Science
Tool-Building]({{ site.url }}{{ site.baseurl
}}/publications/right-tools-for-job/)" has been published in _Transactions in
GIS_ ([free PDF]({{ site.url }}{{ site.baseurl
}}/publications/right-tools-for-job/)). I originally presented this paper as the
8th annual Transactions in GIS plenary address at the AAG annual meeting last
year. I argue that tool-building is an essential but poorly incentivized
component of academic geography and social science more broadly. To conduct
better science, we need to build better tools. Better tools and data models,
spearheaded by academics, can help infuse theory into our field's quantitative
work where it is too often lacking. But if we want better tools, _we_ have to
build them. It is not ESRI's job to satisfy all the theoretical needs of the
spatial sciences.

I illustrate this argument with some examples from urban spatial network
science. Tools to model and analyze nonplanar urban spatial networks have
traditionally been inaccessible, atheoretical, or otherwise limiting. This
filters who participates in the scientific endeavor and shapes the quality and
usefulness of our work. I reflect on my own experiences developing and
maintaining OSMnx, which was intended to address some of those traditional
limitations in the field's scientific toolkit.

Open-source scientific tool-building has both downstream and upstream benefits.
Regarding downstream benefits, if we make our research tools accessible and
reusable, others can build on them without everyone endlessly re-inventing the
wheel with ad hoc, time consuming coding that gets buried after publication. I
illustrate this with a lit review of the diverse use cases OSMnx has seen in the
academic literature over the past couple years. Regarding upstream benefits, as
an open-source project OSMnx has received hundreds of code contributions from
other scholars and members of the public. Others' contributions have enhanced
the tool in ways I've subsequently used to answer my own research questions.

Despite these benefits, software development and maintenance are often invisible
and unincentivized in academia. From the article:

> Software often feels inevitable because its backstory is often invisible. We
> click a download link, run an installer, and suddenly have a new tool to use.
> Yet this conceals years of human decisions, experiences, and constraints
> shaping software outcomes that are in no way predestined. In many ways,
> open-source software parallels other public infrastructure such as highways
> and bridges. Humans plan and engineer infrastructure in specific social,
> economic, and technological contexts. Like an individual highway's or bridge's
> broader network of connected roads, any single piece of software represents a
> complex network of entanglements with many other software projects on which it
> depends. And like a highway or bridge, software requires years of maintenance,
> updates, and retrofits after its initial development: although splashy new
> capital projects often receive funding and adulation, critical routine
> maintenance work usually receives far less of either.

Tool-building takes a _lot_ of time and creates a lot of downstream value, and
incentives should better reflect that. Tenure and promotion should explicitly
reward the scholarly value of open-source research software and open data
contributions, as well as contributions to preexisting and decentralized
projects to maintain the open-source commons. We also must train the next
generation to be better tool creators and consumers: curricula should include
coding and informatics courses and pedagogy should emphasize hands-on learning,
such as using computational notebooks. Academics too often pull up the
gangplanks by placing scientific findings behind paywalls, hoarding useful
datasets, or concealing their research software. Journals should continue
nascent steps toward open science, requiring the publication of datasets and
computational workflows alongside articles. Lastly, we need to increase funding
opportunities for building _and_ maintaining research software to foster the
positive externalities they generate throughout the community.

Tool-building allows academics to better operationalize and hypothesis-test
theory and therefore forms an essential, but poorly incentivized, pillar of
scholarly research. To read more, check out [the article]({{ site.url }}{{
site.baseurl }}/publications/right-tools-for-job/).
