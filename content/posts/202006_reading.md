---
title: "What I'm Reading: June 2020, part 1"
date: 2020-06-01T14:43:56+02:00
draft: True
---

### Design of Explainable AI User Interfaces

**Alqaraawi et al. (2020): Evaluating saliency map explanations for CNNs: a user study**

Link: [Paper](https://dl.acm.org/doi/10.1145/3377325.3377519)

In this paper, the authors aim to find out whether saliency maps (a local 
interpretability technique for image classification) allow users to develop
a better understanding of how CNNs classify images. Therefore, they address a
research gap, resulting from the isolation of AI/ML, HCI and social sciences 
research streams regarding explainable AI (XAI). Using an online lab experiment,
the authors show that the presence of saliency maps slightly improves user
predictions about how the CNN will classify new images. However, the overall
success rates are still surprisingly low (around 60%). The authors address
two weaknesses of saliency maps:

- Their inability to draw inferences about global importance of detected
features in an image
- Their inability to detect general features (e.g., color, contrast), because
these cannot be localized to individual pixels

Hence, they suggest that global (e.g., [TCAV](https://arxiv.org/abs/1711.11279))
and local explainability techniques should be combined in user interfaces.
Limitations of the study include the small number of classes (20) and requiring
a technical background of participants. Moreover, no conclusions about user
performance for different outcome types (e.g., TP, FN) are drawn.

**Liao et al. (2020): Questioning the AI: Informing Design Practices for
Explainable AI User Experiences**

Link: [Paper](https://dl.acm.org/doi/abs/10.1145/3313831.3376590)

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
complete set of questions). The interviews also allows the authors to identify
five goals that drive user demands for explanations:

1. Gain further insights or evidence
2. Appropriately evaluate the capability of the AI
3. Adapt usage or interaction behaviors to better utilize the AI
4. Improve AI performance
5. Ethical responsibilities

Moreover, interviewing design practitioners revealed current challenges in
deploying XAI. First, current XAI techniques are still not sophisticated
enough to address each possible user question adequately. Second, explainability
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

Listing these results would go to far here, I really encourage the interested
reader to study the paper in detail. All in all, the paper is really solid and
although all interviewees were from IBM, the results seem to be robust. As a further
limitation, the authors mention a focus on high-stakes tasks (which might
naturally lend themselves for XAI application).

### Ethical AI

**Jobin et al. (2019): The global landscape of AI ethics guidelines**

Link: [Paper](https://www.nature.com/articles/s42256-019-0088-2)

### ML Engineering

**Matthew McAteer: Nitpicking Machine Learning Technical Debt**

Link: [Blog post](https://matthewmcateer.me/blog/machine-learning-technical-debt/)

### Natural Language Processing (NLP)

**Amit Chaudhary: A Visual Survey of Data Augmentation in NLP**

Link: [Blog post](https://amitness.com/2020/05/data-augmentation-for-nlp/)

### Leadership

**Tyler Dunne: Why the Steelers Didn't Just Fold**

Link: [BleacherReport](https://bleacherreport.com/articles/2867875-defiance-togetherness-and-tomlin-inside-the-steelers-season-of-survival)
