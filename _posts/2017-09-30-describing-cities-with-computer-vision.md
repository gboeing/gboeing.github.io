---
layout: post
title: Describing Cities with Computer Vision
date: 2017-09-30 18:12:40-07:00
permalink: /2017/09/describing-cities-with-computer-vision/
---

What does artificial intelligence see when it looks at your city? I recently
created a Twitter bot in Python called [CityDescriber][28] that takes popular
photos of cities from [Reddit][29] and describes them using Microsoft's computer
vision AI. The bot typically does pretty well with straightforward images of
city skylines and street scenes:

> an aerial view of a city at night [pic.twitter.com/liJSmtrgTK][11]
>
> — City Describer (@CityDescriber) [September 20, 2017][23]

<!-- -->

> a group of people walking across a snow covered street
> [pic.twitter.com/TujM8ugH9s][8]
>
> — City Describer (@CityDescriber) [September 19, 2017][22]

Some are even kind of wryly poetic, such as this description of Los Angeles:

> a group of palm trees with a building in the background
> [pic.twitter.com/xMD3j3Lnu5][14]
>
> — City Describer (@CityDescriber) [September 16, 2017][20]

Or this description of San Francisco:

> a bunch of old buildings [pic.twitter.com/FqiSCIwkS5][5]
>
> — City Describer (@CityDescriber) [September 9, 2017][15]

But the AI sometimes struggles with other photos. And when it's wrong, it's
often hilariously far-off:

> a stack of flyers on a table [pic.twitter.com/S8M3wNWf2g][7]
>
> — City Describer (@CityDescriber) [September 14, 2017][19]

<!-- -->

> a bunch of bananas [pic.twitter.com/4ml3qDhOdK][2]
>
> — City Describer (@CityDescriber) [September 28, 2017][27]

<!-- -->

> a large jetliner sitting on top of a mountain [pic.twitter.com/p7SbXJVFOH][12]
>
> — City Describer (@CityDescriber) [September 27, 2017][26]

<!-- -->

> a circuit board on a city street [pic.twitter.com/IuRNodSVpx][6]
>
> — City Describer (@CityDescriber) [September 23, 2017][25]

<!-- -->

> a close up of person riding a bike down a dirt road
> [pic.twitter.com/bbERwF9e7Y][9]
>
> — City Describer (@CityDescriber) [September 20, 2017][24]

<!-- -->

> a group of people on a beach [pic.twitter.com/qAHe3yEqGO][13]
>
> — City Describer (@CityDescriber) [September 17, 2017][21]

<!-- -->

> a table full of food [pic.twitter.com/it9320OKfS][10]
>
> — City Describer (@CityDescriber) [September 14, 2017][18]

<!-- -->

> a view of a cactus [pic.twitter.com/BkV0DSinPx][4]
>
> — City Describer (@CityDescriber) [September 11, 2017][17]

<!-- -->

> a traffic light hanging from a tree [pic.twitter.com/Am9F0ldx1T][3]
>
> — City Describer (@CityDescriber) [September 10, 2017][16]

There has been much discussion recently ([example][1]) about the impact that
computer vision -- and machine learning more generally -- could have on urban
studies and urban planning... for better or for worse. On one hand, we can
develop and train better models for more accurate insights into urban patterns
and urban change. Modeling has always been a useful tool in the planning
toolkit, and new data science methods might be able to make planners more
efficient and accurate.

On the other hand, planners should be cautious and critical of claims about
using AI to "solve" cities. Machine learning models are no better than their
training, and biases in training data and researchers can result in biased
estimates and predictions. Despite some popular accounts, AI and big data do not
spell [the end][32] of theory.

Perhaps the [CityDescriber][28] bot showed one aspect of this in a light-hearted
way. I don't mean to broadly mock Microsoft's algorithm: in fact, it tends to
describe most of these photos in a literal, accurate, and mundane way. This is a
substantial accomplishment. But what about the descriptions that are just
bafflingly incorrect? The AI saw something that triggered a completely incorrect
prediction, even though a child could recognize the photo's contents in an
instant. In particular, it seems to have not been well-trained on aerial shots
looking down on cities.

As planners and researchers, we need to consider artificial intelligence and
machine learning with some enthusiasm and some skepticism. What exactly are the
models telling us? Why? What are their biases? How do they [reinforce][30]
[entrenched][31] biases that came built-into their training data? What do they
"see"... and what do they not see? Researchers may strive to build objective
models, but they usually reflect our own experiences and points of view. As
planners, we need to be cognizant of this as we increasingly use machine
learning over the next decade to better understand cities and their citizens.

<!-- markdownlint-disable MD013 -->
[1]: https://doi.org/10.1073/pnas.1619003114
[2]: https://t.co/4ml3qDhOdK
[3]: https://t.co/Am9F0ldx1T
[4]: https://t.co/BkV0DSinPx
[5]: https://t.co/FqiSCIwkS5
[6]: https://t.co/IuRNodSVpx
[7]: https://t.co/S8M3wNWf2g
[8]: https://t.co/TujM8ugH9s
[9]: https://t.co/bbERwF9e7Y
[10]: https://t.co/it9320OKfS
[11]: https://t.co/liJSmtrgTK
[12]: https://t.co/p7SbXJVFOH
[13]: https://t.co/qAHe3yEqGO
[14]: https://t.co/xMD3j3Lnu5
[15]: https://twitter.com/CityDescriber/status/906615976782839808?ref_src=twsrc%5Etfw
[16]: https://twitter.com/CityDescriber/status/906845320167923712?ref_src=twsrc%5Etfw
[17]: https://twitter.com/CityDescriber/status/907086924384395264?ref_src=twsrc%5Etfw
[18]: https://twitter.com/CityDescriber/status/908120232518021120?ref_src=twsrc%5Etfw
[19]: https://twitter.com/CityDescriber/status/908305865882533889?ref_src=twsrc%5Etfw
[20]: https://twitter.com/CityDescriber/status/909024076148047873?ref_src=twsrc%5Etfw
[21]: https://twitter.com/CityDescriber/status/909205280382099456?ref_src=twsrc%5Etfw
[22]: https://twitter.com/CityDescriber/status/910224046435950592?ref_src=twsrc%5Etfw
[23]: https://twitter.com/CityDescriber/status/910528927097012224?ref_src=twsrc%5Etfw
[24]: https://twitter.com/CityDescriber/status/910649719654776832?ref_src=twsrc%5Etfw
[25]: https://twitter.com/CityDescriber/status/911665221487304704?ref_src=twsrc%5Etfw
[26]: https://twitter.com/CityDescriber/status/913147028913324032?ref_src=twsrc%5Etfw
[27]: https://twitter.com/CityDescriber/status/913524328108515328?ref_src=twsrc%5Etfw
[28]: https://twitter.com/citydescriber
[29]: https://www.reddit.com/r/CityPorn/top/
[30]: https://www.theguardian.com/inequality/2017/aug/08/rise-of-the-racist-robots-how-ai-is-learning-all-our-worst-impulses
[31]: https://www.theguardian.com/technology/2017/apr/13/ai-programs-exhibit-racist-and-sexist-biases-research-reveals
[32]: https://www.wired.com/2008/06/pb-theory/
