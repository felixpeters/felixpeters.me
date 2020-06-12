---
title: "AI Transparency Roundup #2"
date: 2020-06-12T08:00:00+02:00
slug: ai-transparency-roundup-2
include_toc: True
draft: True
keywords:
- ethical AI
- explainable AI
- user interface
- ML engineering
description: "Design of explainable AI user interfaces, ethical AI guidelines, ML engineering and more..."
summary: "todo"
---

_Overcoming the lack of transparency in modern AI systems is often cited as
one of the key challenges for many potential use cases. A lot of research is
happening in this area, especially under the banner of explainable AI (XAI).
However, to this day the research streams of AI/ML, human-computer interaction
and social sciences with regard to this topic are mostly isolated. My aim for this
publication is to contribute to closing this gap within the next few years.
Therefore, I will provide summaries of papers from all research streams on a 
regular basis, where topics can range from algorithmic implementation to interface 
design and user evaluation of transparency. Additionally, I will include 
articles from related areas (e.g., ethical AI, ML development/engineering, data 
science) that I found interesting and worthwhile to read._

### Transparency features for interfaces of intelligent systems

#### Springer & Whittaker (2019): Progressive Disclosure

Link: [Paper](https://dl.acm.org/doi/10.1145/3301275.3302322)

**Motivation:** In their own words, the authors aim to address the question
"what does the user need?", instead of "what is possible from an algorithmic
standpoint?" (which is commonly addressed in technical AI/ML research). In detail,
they tackle the following research questions:

1. Do users have a preference for transparent systems compared to systems that
simply offer predictions?
2. Which effect do cognitive load and distraction have on the preference for
transparency? Are there other factors influencing the reaction to transparency?
3. How can effective transparency be designed?

**Methodology:** The paper contains two studies which are conducted in the
context of emotional analytics. Here, study participants are faced with a system
that predicts the emotional valence of a participant's written personal
experience (see the paper for screenshots). In the non-transparent version of this system, users only receive
the predicted emotion on a continuous scale (red to green). In the transparent
version, single words in the written text are highlighted based on their
contribution to the overall prediction (red = negative influence, green = 
positive influence). In the first study, participants are asked to predict
which version is more accurate before and after usage. In addition, they state
a preference for one of the systems. In the second study, semi-structured
interviews are conducted in order to follow up on the findings of the first study.
Finally, design guidelines for transparency features are derived based on the
findings from both studies.

**Results:** The authors find that the development of transparent intelligent
systems is a non-trivial task. Study 1 provides evidence that users anticipate
better performance from the transparent system, but that this assumption is
not met afer usage of both systems. Two possible reasons for this behavior are
given by the authors:

- User might attribute better abilities to the less transparent system, and therefore
overestimate the black-box model's capabilities.
- Users feel distracted by the amount of information that the transparency
features offer.

Consequently, the authors address these points in study 2. They find that only
showing the major contributing features can reduce distraction and improve
clarity. Moreover, design of transparency features has to account for human's
tendency to use simple heuristics instead of deeper reflection for decision-making.

Based on these findings, the authors stress the importance of a design principle
that has been prevalent for many years: progressive disclosure. Here, "advanced 
information and explanation is provided on an ‘as needed’ basis, only when the 
user requests it". They also give an examples of how this principle could be
operationalized in the setting of medical diagnosis:

1. First, provide a short explanation in natural language (e.g., for a computed
risk score).
2. On request, show the most important features and their contribution to the
computed risk score.
3. Upon further request, show data from similar patients in order to provide
further evidence for the prediction.

**My personal take:** Progressive disclosure is a design principle that has
been around for decades. This paper provides strong evidence that it is highly
relevant for the design of transparency features for intelligent systems. I'm
excited for more research in this area, particularly linkages to theories from
the social sciences, e.g., the  [Elaboration Likelihood Model](https://is.theorizeit.org/wiki/Elaboration_likelihood_model) or Kahneman's [System 1 and 2 Thinking](https://www.scientificamerican.com/article/kahneman-excerpt-thinking-fast-and-slow/), and user studies that apply this principle to real-world
applications.
