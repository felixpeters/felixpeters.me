---
title: "AI Transparency Roundup #3"
date: 2020-07-06T08:00:00+02:00
slug: ai-transparency-roundup-3
include_toc: True
keywords:
- ethical AI
- explainable AI
- user interface
- transparency
description: "Design of transparency features for intelligent systems and more from the area of responsible AI."
summary: "In this edition, we dive deeper into how explainable AI is currently used in practice, how transparency features can be used to support (biased) human reasoning, and why progressive disclosure might be a useful design principle in the context of explainable AI"
---

## Human-Centered Tools for Coping with Imperfect Algorithms During Medical Decision-Making

_Overcoming the lack of transparency in modern AI systems is often cited as one of the key challenges for many use cases.  A lot of research is happening in this area, especially under the banner of explainable AI (XAI). However, to this day the research streams of AI/ML, human-computer interaction and social sciences with regard to this topic are mostly isolated. My aim for this publication is to contribute to closing this gap within the next few years. Therefore, I will provide summaries of papers from all research streams on a regular basis, where topics can range from algorithmic implementation to interface design and user evaluation of transparency._

The next few editions of the AI Transparency Roundup will dive deeper into how certain explainability techniques can be used in the context of medical decision-making. In this edition, we are looking at a paper by the Google Brain team that examines how pathologists evaluate a content-based image retrieval (CBIR) system when performing differential diagnosis on medical images. Although the developed system does not include many of the explainability features we discussed in previous editions, the paper contains valuable lessons about how to design interfaces for effective human-AI collaboration. In particular, we learn that the developed tools increase perceived utility, trust and overall evaluation, while decreasing the pathologists’ perceived workload. 

**Full reference:** Carrie J. Cai, Emily Reif, Narayan Hegde, Jason Hipp, Been Kim, Daniel Smilkov, Martin Wattenberg, Fernanda Viegas, Greg S. Corrado, Martin C. Stumpe, Michael Terry. 2019. Human-Centered Tools for Coping with Imperfect Algorithms During Medical Decision-Making. In CHI Conference on Human Factors in Computing Systems Proceedings (CHI 2019), May 4–9, 2019, Glasgow, Scotland UK. ACM, New York, NY, USA, 14 pages. [https://doi.org/10.1145/3290605.3300234](https://doi.org/10.1145/3290605.3300234)

### Background

Content-based image retrieval (CBIR) systems index and retrieve images based on similarity metrics that are learned by machine learning (ML) models, most commonly deep neural networks (DNNs). In medicine, CBIR systems are used to query medical images (e.g., X-ray, MRI) from previously diagnosed patients in order to perform diagnosis for new patients. This paper looks at the specific task of differential diagnosis in pathology, i.e., distinguishing between diseases based on images of tissue samples. While most of the research on CBIR systems so far has focused on improving their algorithmic performance, the authors take a more user-centered approach. In detail, they aim to provide answers to the following research questions:

- What features do pathologists need when using CBIR systems for differential diagnosis?
- How to pathologists interact with the provided features?
- How do the provided features affect the overall user experience?

### Methodology

In order to answer these questions, the authors proceed as follows. First, they identify user needs via an iterative design process with three pathologists. Here, they mainly apply methods such as paper prototypes and interviews. Second, they implement a deep learning-based CBIR system based on their findings from the first phase. In two subsequent evaluation studies, they test whether the developed features work as expected and how the user experience compares to a traditional interface. The final user study is performed with twelve pathologists (mean pathology experience 9.8 years).

### Results

Two basic needs for CBIR systems in the context of differential diagnosis are identified during the iterative design process. First, pathologists want to be able to generate, compare and find evidence for contrasting hypotheses based on the provided examples. Second, they also want to control what types of similarity measures are applied by the system in order to find comparable cases.

![Developed CBIR system by Cai et al. (2019)](../../../posts/img/cai_cbir.png "Developed CBIR system by Cai et al. (2019)")

The above image contains a screenshot from the developed system. The image under investigation is shown on the right, while similar cases can be found in the middle. The images identified by the CBIR system are grouped by diagnosis (e.g., the Gleason score). The pathologists can refine the search results based on three implemented tools:

- refine-by-region (c): users can specify a crop of the image and only search based similar cases based on this section
- refine-by-example (d): users can select some of the similar cases and search for more cases like these
- refine-by-concept (e): users can emphasize the importance of specific human-interpretable concepts

The refine-by-concept tool provides an additional contribution of this paper as it is not available in contemporary medical CBIR systems. The included concepts constitute phenomena that pathologists commonly look for when diagnosing cases. By adjusting the respective slider, these concepts can be emphasized or ignored. The tool builds on promising work by [Kim et al. (2018)](https://arxiv.org/abs/1711.11279). In their first evaluation study, the authors find that the refinement tools had the desired effects, i.e., that retrieved images correspond to user expectations.

![Results from Cai et al. (2019)](../../../posts/img/cai_results.png "Results from Cai et al. (2019)")

The second evaluation study serves to compare the developed CBIR system with a traditional interface that simply ranks images based on similarity. It is shown that the developed system provides increased diagnostic utility and user trust and decreases the perceived workload. In addition to these quantitative metrics, the authors also mention qualitative findings. They find that the refine-by-concept tools is very popular among the participating pathologists which are asking for further concepts to be implemented. Moreover, it is mentioned that the refinement tools helped with tracking the likelihood of hypotheses and reducing the problem complexity. In their discussion of the results, the authors suggest that refinement tools can be useful for narrowing the semantic gap between mental models of pathologists and ML models.

### Takeaways for transparency research

As we saw in the last edition, explainability techniques are most commonly used by data scientists and ML engineers for model debugging purposes in current practice. However, it is compulsory to include these techniques into ML-based systems for effective human-AI collaboration in high-stakes decision-making contexts like medical diagnosis. An often cited problem of current ML-based systems in these contexts is the semantic gap between the mental models of human and machine. In short, humans have a hard time developing a mental model of ML-based systems, which decreases their trust in these systems (especially when encountering surprising predictions). As the findings from this paper provide promising ways to narrow the semantic gap, they can thus be valuable for transparency research as a whole. The results point to the relevance of [interactive ML](https://aaai.org/ojs/index.php/aimagazine/article/view/2513) which enables users to engage with ML-based systems more deeply instead of simply consuming their predictions.

