---
title: "AI Transparency Roundup #1"
date: 2020-06-01T14:43:56+02:00
slug: ai-transparency-roundup-1
include_toc: True
keywords:
- ethical AI
- explainable AI
- user interface
- ML engineering
- NLP 
description: "Design of explainable AI user interfaces, ethical AI guidelines, ML engineering and more..."
summary: "In this edition, I summarize papers regarding the design of explainable AI user interfaces, ethical AI guidelines (both research foci of mine) and interesting articles about best practices in ML engineering and NLP."
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

### User evaluation of transparency

**Alqaraawi et al. (2020): Evaluating saliency map explanations for CNNs: a user study**

Link: [Paper][1]

In this paper, the authors aim to find out whether saliency maps (a local 
interpretability technique for image classification) allow users to develop
a better understanding of how CNNs classify images. Therefore, they address a
research gap, resulting from the isolation of AI/ML, HCI and social sciences 
research streams regarding explainable AI (XAI). Using an online lab experiment,
the authors show that the presence of saliency maps slightly improves user
predictions about how the CNN will classify new images. However, the overall
success rates for predicting system behavior are still surprisingly low (around 60%). The authors address two weaknesses of saliency maps:

- Their inability to draw inferences about global importance of detected
features in an image
- Their inability to detect general features (e.g., color, contrast), because
these cannot be localized to individual pixels

Hence, they suggest that global (e.g., [TCAV][2])
and local explainability techniques should be combined in user interfaces.
Limitations of the study include the small number of classes (20) and requiring
a technical background of participants. Moreover, no conclusions about user
performance for different outcome types (e.g., TP, FN) are drawn.

### Design of transparency features in user interfaces

**Liao et al. (2020): Questioning the AI: Informing Design Practices for
Explainable AI User Experiences**

Link: [Paper][3]

This paper is a gold mine. Like the previous one it aims to address the
research gap between XAI algorithms and user needs (i.e., the focus of HCI
research). The authors provide a bridge between existing explainability methods
and user needs by relating four categories of methods (global, local, 
counterfactual and example-based) to specific question types (e.g., How, Why,
Why not, What if) they address. All in all, nine questions types (the authors
call them _explainability needs categories_) are established, each characterized
by one specific question:

1. Input: What kind of data does the system learn from?
2. Output: What kind of output does the system give?
3. Performance: How accurate/precise/reliable are the predictions?
4. How (global): How does the system make predictions?
5. Why: Why/how is this instance given this prediction?
6. Why not: Why/how is this instance not predicted...?
7. What if: What would the system predict if this instance changes to...?
8. How to be that: How should this instance change to get a different prediction?
9. How to still be this: What is the scope of change permitted to still get the
same prediction?

Further questions for each category are collected through interviews with UX 
experts and designers working on AI products inside IBM (see the paper for the
complete set of questions). The interviews also allow the authors to identify
five goals that drive user demands for explanations:

1. Gain further insights or evidence
2. Appropriately evaluate the capability of the AI
3. Adapt usage or interaction behaviors to better utilize the AI
4. Improve AI performance
5. Ethical responsibilities

Moreover, interviewing design practitioners reveals current challenges in
deploying XAI. First, current XAI techniques are still not sophisticated
enough to address each possible user question adequately. Second, explainability is 
often at odds with other business goals (e.g., resource constraints, protecting
proprietary data). In order to overcome these challenges, two questions should
be specified with regard to every AI initiative: what to explain and how to
explain it.

Finally, the authors investigate how five key factors influence the need for
specific question types:

1. Motivation for explainability (see above)
2. Usage point, e.g., on-boarding or encountering abnormal results
3. Algorithm or data type, e.g., tabular data, text, images
4. Decision context, e.g., outcome criticality, time sensitivity, decision
complexity
5. User type, e.g., domain knowledge

Listing all results would go to far here, I really encourage the interested
reader to study the paper in detail. All in all, the paper is really solid and
although all interviewees were from IBM, the results seem to be robust. As a further
limitation, the authors mention a focus on high-stakes tasks (which might
naturally lend themselves for XAI application).

**Cai et al. (2019): The effects of example-based explanations in a machine 
learning interface**

Link: [Paper][4]

This paper evaluates one particular kind of explanation types: example-based
explanations. Instead of explaining how a model produced its output, this class
of explanations provides the user with suitable examples from the training set 
in order give him a better understanding of the inner model workings.
Here, one has to distinguish between normative explanations (also called
prototypes) which "aim to establish a norm for what [examples] look like in the 
intended class" (p. 2), and comparative explanations which provide examples
that are similar to the prediction at hand but from other classes. The authors
conduct an experiment using the [QuickDraw][5]
tool which recognizes user drawings of given objects with the help of neural
networks. All in all, effects of three factors (successful recognition, presence
of normative explanation, presence of comparative explanation) on four outcome
variables (understanding, trust, attribution, time) are measured. The main
results are as follows:

- Perceived understanding of the system increased by receiving normative
explanations, when the system failed to recognize the drawing
- When the algorithm failed to recognize the drawing, system capability was
rated higher when a normative explanation was presented
- Users spent more time on explanations when their drawings were not recognized
- Users spent more time on comparative than on normative explanations

Thus, the authors conclude that example-based explanations can be useful for
explaining ML systems and that the two different explanation types (normative
and comparative) have advantages and disadvantages. The results have to be seen
in the light of some limitations, though. Most importantly, disclosing training
set examples might not be feasible in many use cases, e.g., due to privacy
concerns.

### Ethical AI

**Jobin et al. (2019): The global landscape of AI ethics guidelines**

Link: [Paper][6]

I stumbled upon this paper during my research for a project related to ethics
and AI. This study offers a nice summary of published ethical guidelines. The
authors conduct a structured literature review based on the 
[PRISMA][7] framework (primarily, I've seen it in 
action in medicine papers). Thereby, they collect 84 ethical guidelines,
published by private and public institutions. Via a multi-step coding process,
they derive a set of ethical principles. Unsurprisingly, the top 5 mentioned
principles are (in this order):

1. Transparency
2. Justice and fairness
3. Non-maleficence (i.e., safety, robustness)
4. Responsibility and accountability
5. Privacy

These appear in more than half of the published guidelines. Moreover, the
authors highlight a lack of implementation guidelines, as most of what is
published so far on this topic is rather high-level. They explicitly cite
the [Ethically Aligned Design][8]
document (IEEE) as a more technology-oriented initiative, which might provide
a first step to close this gap. Overall, it has to be mentioned that 
this paper largely focuses on a Western view of ethics. Only a
few guidelines stem from Asian countries (e.g., India, South Korea), but none
of them from China. This might be problematic as China is probably _the_ AI
power house worldwide (in line with the United States).

### Data Science and ML Engineering

**Matthew McAteer: Nitpicking Machine Learning Technical Debt**

Link: [Blog post][9]

This very helpful blog post revisits a [2015 NeurIPS paper][10]
which was published by Google researchers and addressed technical debt related
to ML systems. The author's aim is to update the findings from the original
paper with regard to technological progress in the last five years. He names
common problems that arise in ML deployments and lists technologies that can
be used to address them. Finally, he comes up with a set of 25 best practices for
engineering ML systems, among them:

1. "Use explainable model types if possible"
2. "Use a data versioning tool"
3. "Monitor the models' real-world performance and decision boudaries constantly"
4. "Make sure the distribution of predicted labels is similar to distribution of
observed labels"
5. "Use reproducibility checklists when releasing research code"

Make sure to read the whole article if you have ML models in production. I'm
sure every ML engineer and researcher can extract something useful from this article.

**Amit Chaudhary: A Visual Survey of Data Augmentation in NLP**

Link: [Blog post][11]

I found this article in one of the newsletters I read. The author
provides a comprehensive overview of data augmentation techniques for text data.
I have to confess that I was not familiar with many of the techniques but most of
them strike me as very useful in practice, especially if very few labeled examples
are available. Below, I want to name just a few of the mentioned techniques:

1. Word-level substitution based on Thesaurus or word embeddings
2. Deriving slightly modified inputs by translating back and forth between
languages
3. Injecting random noise, e.g., in the form of common typos
4. More advanced manipulations based on syntax-tree manipulation

Definitely have a look at this article if you are into NLP. I think data scientists
from every skill level can extract one or more useful techniques that will help
them to train more robust models.

[1]:	https://dl.acm.org/doi/10.1145/3377325.3377519
[2]:	https://arxiv.org/abs/1711.11279
[3]:	https://dl.acm.org/doi/abs/10.1145/3313831.3376590
[4]:	https://dl.acm.org/doi/10.1145/3301275.3302289
[5]:	http://quickdraw.withgoogle.com
[6]:	https://www.nature.com/articles/s42256-019-0088-2
[7]:	http://prisma-statement.org/
[8]:	https://standards.ieee.org/content/dam/ieee-standards/standards/web/documents/other/ead_v2.pdf
[9]:	https://matthewmcateer.me/blog/machine-learning-technical-debt/
[10]:	https://papers.nips.cc/paper/5656-hidden-technical-debt-in-machine-learning-systems.pdf
[11]:	https://amitness.com/2020/05/data-augmentation-for-nlp/
