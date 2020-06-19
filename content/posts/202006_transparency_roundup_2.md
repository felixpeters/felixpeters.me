---
title: "AI Transparency Roundup #2"
date: 2020-06-18T08:00:00+02:00
slug: ai-transparency-roundup-2
include_toc: True
keywords:
- ethical AI
- explainable AI
- user interface
- transparency
description: "Design of transparency features for intelligent systems and more from the area of responsible AI."
summary: "In this edition, we dive deeper into how explainable AI is currently used in practice, how transparency features can be used to support (biased) human reasoning, and why progressive disclosure might be a useful design principle in the context of explainable AI"
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

### Design of interfaces for intelligent systems

#### Bhatt et al. (2020): Explainable Machine Learning in Deployment

**Link:** [Paper](https://dl.acm.org/doi/abs/10.1145/3351095.3375624)

**Full reference:** Bhatt, U., Xiang, A., Sharma, S., Weller, A., Taly, A., Jia, Y., Ghosh, J., Puri, R., Moura, J. M. F., and Eckersley, P. 2020.  “Explainable Machine Learning in Deployment,” in FAT\* 2020 - Proceedings of the 2020 Conference on Fairness, Accountability, and Transparency, Association for Computing Machinery, Inc, September 13, pp. 648–657. (https://doi.org/10.1145/3351095.3375624).

**Motivation:** Most research on AI transparency focusses on either algorithmic implementations for coming up with good explanations or how effective user interfaces for intelligent systems should be designed. However, very little research is concerned with how organizations already use explainability techniques in practice. This study aims to fill this gap by providing guidelines for organizations on how to apply explainability techniques for various stakeholders.

**Methodology:** The authors conduct two sets of interviews with organizations in the technology and financial services sectors. The first set of interviews (20 participants) was undertaken with teams that do not employ explainability techniques yet in order to identify needs for these tools in an unbiased manner. Subsequently, another set of interviews (30 participants) was done in order to identify existing use cases for explainability techniques. Most of the participants worked for organizations which are members of the [Partnership on AI](https://www.partnershiponai.org/).

**Results:** First up, the authors summarize explainability needs derived from the first set of interviews:

- Model debugging, e.g., to understand poor model performance and inform feature engineering
- Model monitoring, e.g., to analyze how distribution shifts for specific features will impact model outcomes and performance
- Model transparency, e.g., to comply with regulation
- Model audit, e.g., to pass internal quality assurance tests

From the second set of interviews, the authors draw conclusions about how explainability is used in organizations today. They find that ML engineers and researchers are the most common consumers of explanations, mainly to understand model behavior and inform future training processes. Other possible stakeholders for explainable ML include executives, end users, regulators and domain experts. In some cases, explanations are evaluated by domain experts before they are presented to end users. Providing users with explanations in real-time is further complicated by technical limitations (e.g., for identifying influential data points or counterfactual explanations).
The authors go on to describe use cases for the deployment of specific explanation types (e.g., feature importance, counterfactual explanations). Finally, a framework for establishing clear desiderata around the deployment of explainability techniques is presented. According to the authors, every organization should answer the following questions when deciding about how to deploy these tools:

1. Who are the desired stakeholders, i.e., explanation consumers?
2. For each stakeholder: what questions need to be answered about model outputs in order to enhance trust in the model?
3. How will each stakeholder interact with the provided explanations?

**My personal opinion:** The findings from this paper are valuable because this study is among the first to address the state-of-the-art of explainable ML in organizations. The authors provide valuable insights which further strengthen the thesis that it is not yet clear how an end-to-end process for deploying explainable ML should look like.

#### Wang et al. (2019): Designing Theory-Driven User-Centric Explainable AI

**Link:** [Paper](https://dl.acm.org/doi/10.1145/3290605.3300831)

**Full reference:** Danding Wang, Qian Yang, Ashraf Abdul, Brian Y. Lim. 2019. Designing Theory-Driven User-Centric Explainable AI. In 2019 CHI Conference on Human Factors in Computing Systems Proceedings (CHI 2019), May 4–9, 2019, Glasgow, Scotland, UK. ACM, New York, NY, USA. 15 pages. https://doi.org/10.1145/3290605.3300831

**Motivation:** In order to overcome the research gap between XAI algorithm design and end-user evaluation, the authors aim to create a theory-driven framework which links the following concepts:

1. How users should reason and explain
2. How users actually reason (with errors, e.g. due to cognitive biases)
3. How XAI generates explanations
4. How XAI supports reasoning (e.g., by mitigating errors)

Furthermore, the framework is tested in the context of medical decision-making in order to evaluate its applicability.

**Methodology:** In order to develop the framework, the authors rely on a literature review. No further information is provided on the exact procedure for this review. The results are grouped into the four concepts mentioned above, before logical connections between the concepts are formed. For the application of the framework, the authors build an ML-based decision aid to diagnose ICU patients based on their vital signs. In detail, the   [XGBoost](https://xgboost.readthedocs.io/en/latest/) algorithm is applied to the [MIMIC III](https://mimic.physionet.org/) dataset. Moreover, different explanation facilities are implemented and evaluated by presenting the implemented system to a set of 14 clinicians. The participants are tasked to diagnose pre-selected cases with as many explanation features as they wish. This method is referred to as _co-designing_.

**Results:** Based on the literature review, the authors fill their initial framework structure (see Motivation) with more fine-grained content and derive plausible connections between related concepts (see image below).

![Framework by Liao et al. (2019)](../../../posts/img/liao_transparency_framework.png "Framework by Liao et al. (2019)")
<img src="../../../posts/img/liao_transparency_framework.png" style="width: 70%; margin-top: 50px"/>

Before applying their framework to medical diagnostics, the authors state how specific explanation types might be used to mitigate common heuristic biases in medical decision-making (see Table 1 in the paper). Based on their findings from the co-design sessions, they derive recommendations for the design of transparency features:

- Transparency features should support hypothesis generation, e.g., via feature and class attributions, or contrastive and counterfactual explanations
- Transparency features should support forward reasoning, i.e., show features attributions before class attributions. This recommendation contrasts findings from other papers that emphasize providing the most important information first in order to avoid information overload.
- Transparency features should support coherent analysis of multiple factors, e.g., interaction plots
- Transparency features should support to source data, e.g., for deeper analysis
- Transparency features should support Bayesian reasoning, e.g., by providing prevalence of classes in the training data

**My personal opinion:** The provided framework is very useful for researchers and practitioners working on transparency features for ML-supported decision-making tools. Moreover, I largely agree with the limitations listed by the authors. The framework is mostly focused on the use case of decision-making. Thus, other motives for showing explanations, e.g., justification of predictions as required in credit scoring, are not covered and would require adjustments to the framework. In addition, an open question remains how explanations should be displayed, i.e., themes like progressive disclosure of social components are not addressed.

#### Springer & Whittaker (2019): Progressive Disclosure

**Link:** [Paper](https://dl.acm.org/doi/10.1145/3301275.3302322)

**Full reference:** Aaron Springer and Steve Whittaker. 2019. Progressive Disclosure: Empirically Motivated Approaches to Designing Eﬀective Transparency. In 24th International Conference on Intelligent User Interfaces (IUI’19), March 17-20, 2019, Marina del Rey, CA, USA. ACM, NY, USA, 14 pages.

**Motivation:** In their own words, the authors aim to address the question "what does the user need?", instead of "what is possible from an algorithmic standpoint?" (which is commonly addressed in  technical AI/ML research). In detail, they tackle the following research questions:

1. Do users have a preference for transparent systems compared to systems that simply offer predictions?
2. Which effect do cognitive load and distraction have on the preference for transparency? Are there other factors influencing the reaction to transparency?
3. How can effective transparency be designed?

**Methodology:** The paper contains two studies which are conducted in the context of emotional analytics. Here, study participants are faced with a system that predicts the emotional valence of a participant's written personal experience (see the paper for screenshots). In the non-transparent version of this system, users only receive the predicted emotion on a continuous scale (red to green). In the transparent version, single words in the written text are highlighted based on their contribution to the overall prediction (red = negative influence, green = positive influence). In the first study, participants are asked to predict which version is more accurate before and after usage. In addition, they state a preference for one of the systems. In the second study, semi-structured interviews are conducted in order to follow up on the findings of the first study. Finally, design guidelines for transparency features are derived based on the findings from both studies.

**Results:** The authors find that the development of transparent intelligent systems is a non-trivial task. Study 1 provides evidence that users anticipate better performance from the transparent system, but that this assumption is not met after usage of both systems. Two possible reasons for this behavior are given by the authors:

- User might attribute better abilities to the less transparent system, and therefore overestimate the black-box model's capabilities.
- Users feel distracted by the amount of information that the transparency features offer.

Consequently, the authors address these points in study 2. They find that only showing the major contributing features can reduce distraction and improve clarity. Moreover, design of transparency features has to account for human's tendency to use simple heuristics instead of deeper reflection for decision-making.

Based on these findings, the authors stress the importance of a design principle that has been prevalent for many years: [progressive disclosure](https://www.nngroup.com/articles/progressive-disclosure/). Here, "advanced  information and explanation is provided on an ‘as needed’ basis, only when the  user requests it". They also give an examples of how this principle could be operationalized in the setting of medical diagnosis:

1. First, provide a short explanation in natural language (e.g., for a computed risk score).
2. On request, show the most important features and their contribution to the computed risk score.
3. Upon further request, show data from similar patients in order to provide further evidence for the prediction.

**My personal take:** Progressive disclosure is a design principle that has been around for decades. This paper provides strong evidence that it is highly relevant for the design of transparency features for intelligent systems. I'm excited for more research in this area, particularly linkages to theories from the social sciences, e.g., the  [Elaboration Likelihood Model](https://is.theorizeit.org/wiki/Elaboration_likelihood_model) or Kahneman's [System 1 and 2 Thinking](https://www.scientificamerican.com/article/kahneman-excerpt-thinking-fast-and-slow/), and user studies that apply this principle to real-world applications.

### Responsible AI

#### Data Exchange Podcast: Identifying and mitigating liabilities and risks associated with AI

**Link:** [Podcast](https://thedataexchange.media/identifying-and-mitigating-liabilities-and-risks-associated-with-ai/)

This episode of the Data Exchange Podcast features Andrew Burton, co-founder of [BNH.ai](https://www.bnh.ai/), a law firm that is focused on AI and analytics. In particular, this episode is about what risks and liabilities are associated with ML deployments (e.g., lack of transparency, possible discrimination) and how organizations can create governance mechanisms to address these issues. I really like the idea of combining expertise of both technologists and lawyers to manage these risks, especially for use cases where ML is applied for high-stakes decision-making.

#### TWIML AI Podcast: Adversarial Examples Are Not Bugs, They Are Features

**Link:** [Podcast](https://twimlai.com/twiml-talk-369-adversarial-examples-are-not-bugs-they-are-features-with-aleksander-madry/) & [Paper](https://arxiv.org/abs/1905.02175)

This episode of the popular TWIML AI Podcast hosts Aleksander Madry, the author of the paper “Adversarial Examples Are Not Bugs, They Are Features” (published at last year’s NeurIPS conference). Adversarial examples are natural model inputs (e.g., images) that are slightly perturbed in order to provoke misclassifications by the model. The perturbations are most commonly not random, but carefully chosen in order to skew the model output (e.g., noise that is added to pixel values). However, to the human eye these slight modifications are usually not visible. Madry and his co-authors show that models are vulnerable to these kinds of inputs due to their reliance on non-robust features, i.e., features that are highly predictive but also fragile and (oftentimes) incomprehensible to humans. They also present promising ways to make models more robust and thus secure against adversarial examples.
