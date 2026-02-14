---
layout: post
title: Travel Time Prediction from Sparse Open Data
date: 2026-02-14 14:54:00-07:00
permalink: /2026/02/travel-time-prediction/
---

My article "[Travel Time Prediction from Sparse Open Data][1]," co-authored
by my doctoral student Wendy Zhou, has just been published in the
_International Journal of Geographical Information Science_. You can download
it from [IJGIS][1] or via this open-access [pre-print][2].

This article tackles a longstanding problem in transport geography and planning:
how to estimate realistic driving travel times without access to proprietary
data, expensive APIs, or massive GPS trace datasets. Much of the planning
literature still relies on "naïve" methods (e.g., minimizing Euclidean distance,
network distance, or speed-limit-based traversal time) that systematically
under-predict real-world travel times. At the other extreme, state-of-the-art
models in computer science and transportation engineering can achieve really
good accuracy, but often require billions of observations, deep learning models,
and massive computational resources and capacity. We argue that planners and
applied researchers need a middle ground:

- a method that uses free, open data
- runs on ordinary hardware
- and substantially improves accuracy over old naïve approaches

Using Los Angeles as a case study, we combine OpenStreetMap data on street
networks, speed limits, traffic controls, and turns with a small training
sample of empirical travel times from the Google Routes API. We first compute
naïve shortest-path travel times, then train an interpretable random forest
model to predict travel time as a function of naïve time plus turn counts and
traffic controls encountered along each route. Whereas the naïve model
under-predicts travel time by over three minutes on average, our model's
predictions differ from Google's by just 0.34 seconds on average and achieve an
out-of-sample MAPE of 8.4%—comparable to far more data-intensive approaches.
Robustness checks with new network data yield similar performance, and SHAP
analysis supports the model's theoretical soundness.

Our goal is not to replace state-of-the-art congested travel models, but to
equip less-resourced planners, scholars, and community advocates with a free,
open, and accurate tool for accessibility analysis, scenario planning, and
evidence-based interventions when resources are limited.

From the abstract:

> Travel time prediction is central to transport geography and
> planning's accessibility analyses, sustainable transportation
> infrastructure provision, and active transportation interventions.
> However, calculating accurate travel times, especially for driving,
> requires either extensive technical capacity and bespoke data, or
> resources like the Google Maps API that quickly become prohibitively
> expensive to analyze thousands or millions of trips necessary for
> metropolitan-scale analyses. Such obstacles particularly challenge
> less-resourced researchers, practitioners, and community advocates.
> This article argues that a middle-ground is needed to provide
> reasonably accurate travel time predictions without extensive data
> or computing requirements. It introduces a free, open-source
> minimally-congested driving time prediction model with minimal cost,
> data, and computational requirements. It trains and tests this model
> using the Los Angeles, California urban area as a case study by
> calculating naïve travel times from open data then developing a
> random forest model to predict travel times as a function of those
> naïve times plus open data on turns and traffic controls. Validation
> shows that this interpretable machine learning method offers a
> superior middle-ground technique that balances reasonable accuracy
> with minimal resource requirements.

On a side note, my co-author and doctoral advisee Wendy Zhou was also awarded
the 2026 Tiebout Prize in Regional Science at the WRSA conference in Santa Fe
this week. Congrats Wendy!

For more, check out our article at [IJGIS][1] or via the open-access
[pre-print][2].

<!-- markdownlint-disable MD013 -->
[1]: https://doi.org/10.1080/13658816.2026.2628193
[2]: https://escholarship.org/uc/item/4cm065kz
