# Introduction- My research area

The topic of my research is designing software testing framework for
ethical alignment of AI systems. In this research, we aim to study the
existing challenges related to AI alignment in the industry and propose
a framework later on how these challenges can be tested and mitigated.
As a part of my research thesis, I have started with a study of \"AI
Alignment for Ethical Compliance and Risk Mitigation in Industrial
Applications\". This was an interview study where the interview
participants were presented with some frameworks related to ethical AI
and risk assessment for industrial applications.

The current study that I'm performing is an interview study to
understand opportunities and challenges for continuous safety assurance
in Autonomous Driving Systems- through the lens of contract-based
assurance and operational testing. Although we do not focus directly on
ethical aspects of AI alignment, but this study sets to bring in some
interesting insights related to safety alignment.

In order to design or propose a testing framework, I have explored
existing ethical alignment frameworks, for example, Guidelines for
trustworthy AI by the European Commission [@ai2019high], ECCOLA
framework [@10.1016/j.jss.2021.111067], and a framework on double-edge
components [@10.1145/3770749].

# Lecture principles

I have chosen quality assurance and testing as two concepts/topics that
I would like to relate to my research and discuss.

Starting with quality assurance, I think this aligns very well with my
research. Since my idea is to design or build a testing framework for
making sure that the system is ethically aligned, the goal calls out for
considering quality assurance. so it is really important for me to
consider how quality assurance is performed, and what factors need to be
catered. after attending the course lectures, I got interesting insights
into both verification and validation and how to relate it to
requirements engineering. I think the validation process of my research
would include the studies that I'm performing currently with the
industries, understanding about the problem that would help to build the
right testing framework.

Based on the discussion in the lecture about methods of verification and
validation, from static, dynamic and to process evaluation techniques, I
think the design of the testing framework for my thesis would lie around
static techniques, atleast to start with.

Given the complexities of the AI systems, use of static techniques will
play an important role in making sure whether proper guidelines have
been followed or not, while deploying the AI systems, and if they align
well with the intentions of the stakeholders.

Process evaluation techniques would also be valuable for assuring how
the software has been produced, and whether ethical guidelines for AI
system(may be from the EU AI Act) have been followed or not while
designing and building hte system.

Another concept that I would like to relate to my research is Behavioral
Software Engineering(BSE). I think this is a very important aspect which
I should during my research thesis, because understanding the ethical
values for AI systems is somehow related to the psychology of the people
defining them. So the meaning of ethics can of course vary.

The ways three units of analysis in BSE and presented, resonates very
well with the levels of AI alignment described in a similar
fashion(Individual/ organizational/ national/ global) [@hou2023multi].

When considering cognitive bias, I agree that confirmation bias is an
important aspect to be considered for my studies, as people tend to
follow ethics based on their preconceptions, and what is considered for
one stakeholder, might not be relevant at all for another one. So while
testing AI systems for ethical alignment, it is important to have the
correct reference of what is percieved as \"ethical\" among people and
under given circumstances/environment.

# Guest Lecture principles

Starting with Frattini's lecture contents, thinking about requirements
engineering is very important from the beginning. Relating the
techniques of requirements engineering to my research topic, I think all
of them need to be thought carefully. Starting with stakeholder
elicitation, it is really important to elicit stakeholders, since the
alignment thought can vary between different stakeholders, even if they
are within the same organization.

Goal modelling is another aspect that I find very relevant for my
project. It can be mapped to how well the intents of AI alignment have
been defined and in what aspects. For example, consider an AI system for
which the intent is to assist a robot in identifying packages on a
production line, but at the same time, it is incorporated with ethical
values of ensuring a worker's safety and working in collaboration with
it, and not harming them.

From Per Langberg's slides discussions, I found the discussion on
V-model software development quite interesting. Thinking about designing
a testing framework to evaluate an AI system, and then having components
of AI within different phases of SDLC for that framework itself, places
me in a very difficult situation to ponder about. It feels like working
on a loop that might result in a deadlock of evaluation guidelines. It
needs to be designed curatively keeping several aspects in mind.

If this is the case, the credibility of the testing framework needs to
be explained on different aspects to ensure the trustworthiness of the
evaluation results.

# Data scientists, software engineers, and AI engineers

I have studies these chapters [@kastner2025mlip] and
[@kastner2025frommodels], and will answer the following questions based
on that: Differences between data scientists and ML engineers as
described in the book:

Data scientists typically have strong backgrounds in statistics and
machine learning, often with advanced degrees. Their work focuses on
developing and improving models through tasks such as feature
engineering, model design, and hyperparameter tuning, as well as
collecting and cleaning data. They often use an exploratory,
research-oriented workflow with tools like Jupyter notebooks and
evaluate models mainly based on accuracy, with less emphasis on factors
such as latency, scalability, or cost.

Software engineers, by contrast, focus on building software products
that meet user needs within time and budget constraints. Their work
includes gathering requirements, designing systems, implementing,
testing, deploying, and maintaining software. They must balance
trade-offs between usability, scalability, maintainability, security,
development time, and cost. Software engineering education therefore
covers areas such as requirements engineering, software design, testing,
distributed systems, and security, often culminating in a practical
project for a customer.

I agree with the distinction as mentioned in the book because both of
these profiles carry different roles and responsibilities. Production ML
indeed requires a system-wide view, not only a model-centric view.
Relating to my research area, working on a specific AI system might be
the role of a data scientist, but considering the ethical aspects of AI
alignment, understanding the intentions of the stakeholders would be the
responsibility of a software engineer.

I don't think that data scientists and software engineers will remain
completely distinct roles; of course, to some extent, yes, and both will
definitely need to learn more of each other's skills. Both roles need to
go hand in hand, learn each other's work on a broader level to have
broader knowledge (T-shaped), as discussed in the chapters. Both roles
are incomplete without each other at a certain stage. A data scientist
does need to have an understanding of the software engineering
discipline when designing the ML model, and vice versa, a software
engineer should also have some understanding of the model, data, and
features on a broader level for better decision-making. But at the same
time, some distinction of expertise in their specific roles will
definitely be there.

The term AI engineering can be described as partly distinct but
primarily an extension of software engineering for AI-enabled systems.
It includes MLOps and model engineering, such as deploying, monitoring,
and automating ML pipelines, but it should go beyond these areas.

In the book chapter, it is mentioned that MLOps can remain too
model-centric if it focuses only on training, deployment, and
monitoring. AI Engineering should instead consider the entire system:
how AI components interact with traditional software, users, data, and
the surrounding environment.

I think that the foundation models, AI coding assistants, RAG systems,
prompt pipelines, and agentic workflows will make the boundaries thinner
between these roles. Software engineers may think of reusing an existing
model with the help of agents or prompts, instead of building it from
scratch, lets say.

# Paper analysis

## 1st paper- Ethical Challenges and Frameworks in AI-Driven Software Development and Testing [@donvir2025ethical]

### Core ideas and their SE importance:

The core ideas of the paper are regarding the ethical aspects and
ethical frameworks to be considered during the design, development and
testing of the AI systems. The paper talks about why ethical
considerations are important for the development of the AI-systems. It
also shed some light on some of the existing ethical frameworks, and
discussed about the common core principles among them, such as
human-centered design, accountability, transparency, fairness,
non-discrimination, privacy and security. It also presented strategies
which can be utilized for embedding ethical considerations into
AI-applications right from the design phase.

### Relation to my research

The core idea of the paper is highly relevant for my research topic. One
of the most interesting aspect I found in this paper is their discussion
about the tools and methodologies that support ethical AI development.
As a software testing framework designer for ethical AI alignment, it is
important for me to know about these practical application in AI system
development. They have also emphasized on relevance of this topic to
software development and testing, for example, discussing about
technical strategies on how we can detect and mitigate bias.

### Integration into a larger AI-intensive project

Let us consider an example of autonomous driving system. A company has
recently acquired an autonomous driving cars firm wants to emphasize the
responsible AI angle in it. So the concepts from this paper goes very
well into the vision of this company, where the paper demonstrates the
important aspects like ethical impact assessments while designing
models, inclusive design teams involving ethicists, sociologists and
domain experts, which the company should make sure to consider. Also,
focusing on balancing the dataset can be really important, as the car's
backend models can rely quite heavily on the trained dataset, so we need
to make sure all the edge cases are covered. From my research, the
testing framework when ready to test the AI alignment, can be used to
test several aspects of this project on AI alignment, testing whether
the models are aligned with the stakeholders intentions or not, for
example braking in good time, when for example, a kid sitting on mini
scooter and crossing the road before a pedestrian crossing. Also, if a
dataset has no reports of accident prone zone, is the car capable of
adapting to the speed based on the road conditions, irrespective of no
accidents reported yet, but highly likely given the curvy roads and
residential area ahead.

### Adaptation of my research

I would take inspiration from this paper on how to incorporate
responsible AI in software testing. The paper discusses about the
responsible AI development life cycle, as they have quoted in the paper:
"Testing AI with AI to make a system as Responsible AI". Using AI driven
test automation models for requirement analysis, test planning, test
case development(getting the guardrails implemented for testing ethical
AI alignment), test execution and test cycle closure. So I would like to
adapt my research by using automated AI-driven testing framework for
testing ethical AI alignment and validate the results.

## 2nd paper- An AI-driven Requirements Engineering Framework Tailored for Evaluating AI-Based Software [@barzamini2025ai] 

### Core ideas and their SE importance:

The core idea of the paper is that Requirements Engineering(RE) for
AI-based software(AIS) is different from that for traditional systems.
This paper proposes a framework that works on domain knowledge from RE
and applies explainable AI for AIS for pedestrian and aircraft detection
use cases, which utilizes vision-based perception. The authors have
evaluated the proposed framework via four distinct metrics such as
conceptual alignment, specification alignment, human-likeness, and
performance generalization. This paper highlights the importance of
Requirement Engineering for AI(RE4AI).

### Relation to my research

This paper relates quite well to my research project. The paper talks
about conceptual and RE specification alignment in the evaluation of
their framework(W-AIS), while my research also focuses on alignment, but
from an ethical perspective. It is interesting to study how they have
incorporated explainable AI to align AI systems' perceptions of the RE
specifications. I can utilize this concept of using XAI while designing
my framework for testing ethical alignment. In terms of methodology, I
found it interesting how they have presented and explained their
methodology very well, by describing their workflow diagrammatically,
and explaining each step with the help of an algorithm.

### Integration into a larger AI-intensive project

Let us consider an example of an AI system designed for tumor detection
in the medical domain. In this case, the core idea is the identification
of the tumor/tumors based on the image of the specific parts of the
body. The framework proposed in the paper promises better classification
of pedestrians and aircraft based on RE specifications for AI systems,
given the image dataset.

When thinking about how my research could relate to this bigger project,
I think ethical alignment is very important in the medical domain.
Factors like trustworthiness, explainability, and accountability are
really important to consider in such life-critical scenarios. A testing
framework for ethical alignment would evaluate this AI- based medical
solution to check for these factors, among others.

### Adaptation of my research

I can adapt my research by getting some inspiration from the paper's
idea of building a framework by utilizing RE specifications for AIS. To
build a testing framework, it is important to think about RE
specifications, and this paper has given an idea to think around that
concept. Using explainable AI to justify the logic behind AI system
perception/action, would help to build a robust testing framework, which
can along with each passing or failing test case, describe the reasoning
behind it.

# Evidence, originality, and GenAI-use transparency

The main papers and the sources are listed in the reference list.

The different types of resources are:

- Article- [@10.1145/3770749], [@10.1016/j.jss.2021.111067],
  [@hou2023multi]

- Book chapter [@kastner2025mlip], [@kastner2025frommodels]

- conference proceedings - [@donvir2025ethical], [@barzamini2025ai]

- Report - [@ai2019high]

I trust all the sources mentioned in the reference list, as they are
published papers, articles, and reports at trustworthy places.

ChatGPT was used only for analyzing some section of paper 2
[@barzamini2025ai] for validating my summary, but I found some analysis
was missing in the findings shared by chatGPT, so I have presented my
own summarization here as well. Apart from it, no use of GenAI tools has
been made anywhere else.
