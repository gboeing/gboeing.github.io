---
layout: post
title: Describing Cities with Computer Vision
date: 2017-09-30 18:12:40.000000000 -07:00
permalink: /2017/09/describing-cities-with-computer-vision/
---

What does artificial intelligence see when it looks at your city? I recently
created a Twitter bot in Python called
[CityDescriber](https://twitter.com/citydescriber) that takes popular photos
of cities from [Reddit](https://www.reddit.com/r/CityPorn/top/) and describes
them using Microsoft's computer vision AI. The bot typically does
pretty well with straightforward images of city skylines and street scenes:

> an aerial view of a city at night
> [pic.twitter.com/liJSmtrgTK](https://t.co/liJSmtrgTK)
>
> — City Describer (@CityDescriber) [September 20,
> 2017](https://twitter.com/CityDescriber/status/910528927097012224?ref_src=twsrc%5Etfw)

<!-- -->

> a group of people walking across a snow covered street
> [pic.twitter.com/TujM8ugH9s](https://t.co/TujM8ugH9s)
>
> — City Describer (@CityDescriber) [September 19,
> 2017](https://twitter.com/CityDescriber/status/910224046435950592?ref_src=twsrc%5Etfw)

Some are even kind of wryly poetic, such as this description of Los Angeles:

> a group of palm trees with a building in the background
> [pic.twitter.com/xMD3j3Lnu5](https://t.co/xMD3j3Lnu5)
>
> — City Describer (@CityDescriber) [September 16,
> 2017](https://twitter.com/CityDescriber/status/909024076148047873?ref_src=twsrc%5Etfw)

Or this description of San Francisco:

> a bunch of old buildings
> [pic.twitter.com/FqiSCIwkS5](https://t.co/FqiSCIwkS5)
>
> — City Describer (@CityDescriber) [September 9,
> 2017](https://twitter.com/CityDescriber/status/906615976782839808?ref_src=twsrc%5Etfw)

But the AI sometimes struggles with other photos. And when it's wrong, it's
often hilariously far-off:

> a stack of flyers on a table
> [pic.twitter.com/S8M3wNWf2g](https://t.co/S8M3wNWf2g)
>
> — City Describer (@CityDescriber) [September 14,
> 2017](https://twitter.com/CityDescriber/status/908305865882533889?ref_src=twsrc%5Etfw)

<!-- -->

> a bunch of bananas [pic.twitter.com/4ml3qDhOdK](https://t.co/4ml3qDhOdK)
>
> — City Describer (@CityDescriber) [September 28,
> 2017](https://twitter.com/CityDescriber/status/913524328108515328?ref_src=twsrc%5Etfw)

<!-- -->

> a large jetliner sitting on top of a mountain
> [pic.twitter.com/p7SbXJVFOH](https://t.co/p7SbXJVFOH)
>
> — City Describer (@CityDescriber) [September 27,
> 2017](https://twitter.com/CityDescriber/status/913147028913324032?ref_src=twsrc%5Etfw)

<!-- -->

> a circuit board on a city street
> [pic.twitter.com/IuRNodSVpx](https://t.co/IuRNodSVpx)
>
> — City Describer (@CityDescriber) [September 23,
> 2017](https://twitter.com/CityDescriber/status/911665221487304704?ref_src=twsrc%5Etfw)

<!-- -->

> a close up of person riding a bike down a dirt road
> [pic.twitter.com/bbERwF9e7Y](https://t.co/bbERwF9e7Y)
>
> — City Describer (@CityDescriber) [September 20,
> 2017](https://twitter.com/CityDescriber/status/910649719654776832?ref_src=twsrc%5Etfw)

<!-- -->

> a group of people on a beach
> [pic.twitter.com/qAHe3yEqGO](https://t.co/qAHe3yEqGO)
>
> — City Describer (@CityDescriber) [September 17,
> 2017](https://twitter.com/CityDescriber/status/909205280382099456?ref_src=twsrc%5Etfw)

<!-- -->

> a table full of food [pic.twitter.com/it9320OKfS](https://t.co/it9320OKfS)
>
> — City Describer (@CityDescriber) [September 14,
> 2017](https://twitter.com/CityDescriber/status/908120232518021120?ref_src=twsrc%5Etfw)

<!-- -->

> a view of a cactus [pic.twitter.com/BkV0DSinPx](https://t.co/BkV0DSinPx)
>
> — City Describer (@CityDescriber) [September 11,
> 2017](https://twitter.com/CityDescriber/status/907086924384395264?ref_src=twsrc%5Etfw)

<!-- -->

> a traffic light hanging from a tree
> [pic.twitter.com/Am9F0ldx1T](https://t.co/Am9F0ldx1T)
>
> — City Describer (@CityDescriber) [September 10,
> 2017](https://twitter.com/CityDescriber/status/906845320167923712?ref_src=twsrc%5Etfw)

There has been much discussion recently
([example](https://doi.org/10.1073/pnas.1619003114)) about the impact that
computer vision -- and machine learning more generally -- could have on urban
studies and urban planning... for better or for worse. On one hand, we can
develop and train better models for more accurate insights into urban patterns
and urban change. Modeling has always been a useful tool in the planning
toolkit, and new data science methods might be able to make planners more
efficient and accurate.

On the other hand, planners should be cautious and critical of claims about
using AI to "solve" cities. Machine learning models are no better than their
training, and biases in training data and researchers can result in biased
estimates and predictions. Despite some popular accounts, AI and big data do
not spell [the end](https://www.wired.com/2008/06/pb-theory/) of theory.

Perhaps the [CityDescriber](https://twitter.com/citydescriber) bot showed one
aspect of this in a light-hearted way. I don't mean to broadly mock
Microsoft's algorithm: in fact, it tends to describe most of these photos in a
literal, accurate, and mundane way. This is a substantial accomplishment. But
what about the descriptions that are just bafflingly incorrect? The AI saw
something that triggered a completely incorrect prediction, even though a
child could recognize the photo's contents in an instant. In particular, it
seems to have not been well-trained on aerial shots looking down on cities.

As planners and researchers, we need to consider artificial intelligence and
machine learning with some enthusiasm and some skepticism. What exactly are
the models telling us? Why? What are their biases? How do they
[reinforce](https://www.theguardian.com/inequality/2017/aug/08/rise-of-the-racist-robots-how-ai-is-learning-all-our-worst-impulses)
[entrenched](https://www.theguardian.com/technology/2017/apr/13/ai-programs-exhibit-racist-and-sexist-biases-research-reveals) biases that came built-into
their training data? What do they "see"... and what do they not see?
Researchers may strive to build objective models, but they usually reflect our
own experiences and points of view. As planners, we need to be cognizant of
this as we increasingly use machine learning over the next decade to better
understand cities and their citizens.
