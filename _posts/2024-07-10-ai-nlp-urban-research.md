---
layout: post
title: AI and NLP for Urban Mixed Methods Research
date: 2024-07-10 10:59:14-07:00
permalink: /2024/07/ai-nlp-urban-research/
---

One area where urban AI research seems promising is in mixed methods work. For
example, it's hard to use traditional qualitative methods on really large text
data sets because of the overwhelming manual labor involved. But if you could
train a model to do, say, topic labeling for you, you'd be able to (potentially)
analyze nearly unlimited text data nearly instantly after that initial training
work. The mixed methods holy grail.

I coauthored an [article](https://doi.org/10.1016/j.compenvurbsys.2024.102131)
recently in _Computers, Environment and Urban Systems_ with Madison Lore and
Julia Harten which takes up this challenge. Using Los Angeles's housing crisis
and rental market as a case study, we demonstrate how and when modern AI and NLP
techniques can generate qualitative insights on par with traditional manual
techniques, but at a far larger scale and requiring far less labor.

We identify topics discussed in LA rental listings' text to understand the
subtle language of discrimination and other gatekeeping obstacles to housing. To
do so, we train a BERT large language model that incorporates manual hand-
labeling early in the process to yield a semi-automated technique that's pretty
good at identifying nuance in natural language.

From the abstract:

> Large-scale text data from public sources, including social media or online
> platforms, can expand urban planners' ability to monitor and analyze urban
> conditions in near real-time. To overcome scalability challenges of manual
> techniques for qualitative data analysis, researchers and practitioners have
> turned to computer-automated methods, such as natural language processing
> (NLP) and deep learning. However, the benefits, challenges, and trade-offs of
> these methods remain poorly understood. How much meaning can different NLP
> techniques capture and how do their results compare to traditional manual
> techniques? Drawing on 90,000 online rental listings in Los Angeles County,
> this study proposes and compares manual, semi-automated, and fully automated
> methods for identifying context-informed topics in unstructured,
> user-generated text data. We find that fully automated methods perform best
> with more-structured text, but struggle to separate topics in free-flow text
> and when handling nuanced language. Introducing a manual technique first on a
> small data set to train a semi-automated method, however, improves accuracy
> even as the structure of the text degrades. We argue that while fully
> automated NLP methods are attractive replacements for scaling manual
> techniques, leveraging the contextual understanding of human expertise
> alongside efficient computer-based methods like BERT models generates better
> accuracy without sacrificing scalability.

For more on this technique and how you can use to to scale up qualitative text
analysis in urban research, check out the
[article](https://doi.org/10.1016/j.compenvurbsys.2024.102131) at CEUS.
