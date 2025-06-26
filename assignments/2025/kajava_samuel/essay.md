---
title: "WASP Software Engineering Course Module 2025"
author: "Samuel Kajava"
output:
  pdf_document:
    path: essay.pdf
bibliography: refs.bibtex
csl: ieee-with-url.csl
---

## 1. Introduction
<!--
Briefly introduce your research area and topic so the rest of your essay stands
on its own. (Maximum 500 words)
-->

My research area is software security with heavy emphasis on identifying and
mitigating vulnerabilities in web applications. My current research focuses
on prototype pollution in JavaScript, a vulnerability that allows attackers to
insert arbitrary properties into the global prototype object. We aim to detect
such vulnerabilities by utilizing a combination of static and dynamic analysis in order
to both identify and verify vulnerabilities that may lead to cross-site
scripting (XSS). 

If unfamiliar, XSS is a web security vulnerability that allows
attackers to inject arbitrary JavaScript into websites, which opens up for
issues like session-hijacking or unauthorized data access. My research topic
revolves around issues like these, how do we keep the web safe? In the majority
of cases (if not all), software bugs are the reason these exploits are possible.
Therefore, I aim to increase security by providing means for detecting such
problems within the web context. As a bonus, I do not only want to detect and
fix bugs, I would like my work to be applicable for anyone. Therefore, I put
considerable effort into making my methods easily reproducible for anyone who
would like to secure their own code base. I believe this increases the value of
my research, since the tools I produce are useful beyond producing results for a paper.

## 2. Lecture principles
<!--
• Pick two principles/ideas/concepts/techniques from Robert’s lectures.
• Discuss how each relates to your research and topic.
-->

### Confirmation bias

An interesting point brought up during the behavioral software
engineering lecture was confirmation bias during debugging -- a developer is
tasked with tracking down a bug. This process seemed to be guided by the
person's bias towards what part of the code base they might deem more likely to
be "buggy". This makes sense, you have to start somewhere! However, what is
deemed "buggy" is not for sure the culprit, and it may lead to wasted effort,
since the problem might be somewhere entirely else (or god forbid, they introduced
it themselves).

Since my research involves a lot of bug-finding, it is only natural that this
applies to me. My analysis is often inspired by previous contributions, which
makes me look for certain patterns. However, we are also trying to find novel
buggy patterns, and my bias towards what seems bugprone might affect this effort
negatively. Doing security research requires some thinking out-of-the-box, and
confirmation bias might slow down that process at times. However, I do not think
it is entirely negative, I think this bias represents my "hunch" as well, which
has proven to be correct more than once.

## 3. Guest-Lecture Principles
<!--
• Pick two principles/ideas/concepts/techniques from the guest lectures.
• Discuss how each relates to your research and topic.
-->

## 4. Data Scientists versus Software Engineers
<!--
Read chapters “1. Introduction” and “2. From Models to Systems” of the CMU
“Machine Learning in Production” book (https://mlip-cmu.github.io/book/01-
introduction.html) and then answer:
• Do you agree on the essential differences between data scientists and
software engineers put forward in these chapters? Why or why not?
• Do you think these roles will evolve and specialise further or that “both
sides” will need to learn many of the skills of “the other side” and that the
roles somehow will merge? Explain your reasoning.
1
-->

## 5. Paper analysis
<!--
Find two full/long papers from any CAIN conference (links at https://conf.researchr.org/series/cain),
download and read each, then for each paper cover:
1. Core ideas and their SE importance
• Describe the core idea(s) of the paper and why it/they are important
to the engineering of AI systems
2. Relation to your research
• How the paper relates to your own research
3. Integration into a larger AI-intensive project
• Describe a (real or fictional) larger AI-intensive software project,
where AI/ML is a core aspect of the system’s functionality
• Describe how the paper’s ideas could be used in this project
• How your own WASP research could fit into this project
4. Adaptation of your research
• How you might tweak your research project to (long-term) better
support the paper’s AI-engineering idea and the challenges it is (trying
to) address
Your answers to question 4 is the main part of your essay and should be
approximately 2 A4 pages in length, 1 page per paper.
-->

## 6. Research Ethics & Synthesis Reflection
<!--
To make your own literature search transparent describe exactly how you found
and selected the papers you based your question 4 answer on:
1. Search and screening process
• How you searched for and screened/selected the papers
2. Pitfalls and mitigations
• Any misleading titles/abstracts you encountered
• How you adjusted your search and screening when initial results were
not effective
3. Ethical considerations
• Steps taken to ensure originality (no copying from LLMs or sources
-->

## References
