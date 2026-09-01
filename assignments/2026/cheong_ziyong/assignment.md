<!-- rumdl-disable-file MD025 -->

# Build Instructions

To build the PDF, run

```shellsession
pandoc assignment.md \
    --pdf-engine typst \
    -M author="Ziyong Cheong, Chalmers" \
    -M title="WASP Software Engineering Course Assignment 2026" \
    -C --bibliography=assignment.bib \
    -V mainfont="Times New Roman" \
    -V fontsize=11pt \
    -V linkcolor=337ab7 \
    -o assignment.pdf
```

This requires [Pandoc](https://pandoc.org/), [Typst](https://typst.app/),
and the Times New Roman font to be installed.

# Introduction

I work in the field of theoretical machine learning,
studying the generalisation of large language models (LLMs) using tools from
information theory.
The key intuition here is that prediction
and compression represent two sides of the same coin: To optimally predict,
e.g., the next token in a sequence,
one has to know the true joint distribution of all possible tokens
(to compute the conditional probability).
At the same time, knowing the true joint distribution is also what is necessary
to compress a given sequence using, e.g., Huffman trees.
There is also empirical evidence supporting this connection in the form of
knowledge distillation, with distilled models such as TinyBERT retaining over
95% of the base model's performance at a fraction of the size
[@Jiao-2020-TinyBERT].

The approach that is taken in my research is inspired by the field of
representation learning.
We conjecture that LLMs learn a compressed representation of the input
which is minimally sufficient, i.e.,
it retains the minimal amount of information from the input
which suffices to predict the output.
We also conjecture that this compression is not only information theoretic,
but geometric in nature, in other words, the representations form clusters.

# Lecture Principles

One of the two principles
that I took away from the main lectures was to adopt an engineering mindset
and prioritise system reliability and ease of scale,
as well as thinking more long-term
when writing model code to emprically validate theorems.
Concretely for my research, this entails

- properly documenting the origins of particular functions in anticipation of
  future me reusing the code,
- writing modular code to facilitate tweaking the model, and
- using `git` extensively to preserve the history of changes.

The other concept was the difference between accidental
and essential complexity.
Accidental complexity is complexity
that arises from the tooling used to solve a problem,
and induces friction when working,
whereas essential complexity is the inherent complexity of the task at hand.
Reducing accidental complexity by learning
or using better tools is thus only meaningful up to a point
and has diminishing returns.
For example, I should not spend too much time on setting up my LaTeX
configuration and learning the inner details of LaTeX.

# Guest-Lecture Principles

Two concepts I learnt from the guest lectures are *requirements engineering*
and *cognitive intensity balance*.
With regards to requirements engineering,
it's good to occasionally take a step back
and reevaluate what the exact requirements of my research are:
What needs to be proven?
Who would benefit from any new results?
What is the main goal of my research?
The pipeline presented in the guest lecture of considering

1. Who are the stakeholders?
1. What are their goals?
1. How can the stakeholders' goals be formulated as a general vision
   for the project?
1. How can this general vision be broken down into concrete requirements?
seems like a useful and practical way to come up with these requirements.

The second concept was that cognitive load should be well balanced.
Around 75% of all tasks should have low cognitive load,
while 20% of tasks should have medium cognitive load,
and 5% should have high cognitive load.
This results in a good level of motivation.
On the flipside, automating away most of the easy tasks leads to mental fatigue
and stress.

# Data Scientists, Software Engineers, and AI Engineers

The book [@Kaestner-2025-Machine] describes data scientists
as being more model centric,
meaning they tend to only focus on the machine learning (ML) model used,
and ignore surrounding factors such as the latency and cost of inference.
They are also described as taking a more scientific approach to work,
and not enjoying the 'grunt' engineering work of tweaking infrastructure.
The role of the data scientist in a company is thus to research
and develop the core ML model.
In contrast, software engineers, as the name suggests,
take up the engineering role and handle the other components in the system.
They are also described as having a limited interest in ML,
leading to a naïve approach to ML modelling.

I find these descriptions to be, as self-admitted in the book,
rather superficial.
While there is certainly a split between research and development,
I think this split is along task lines, and not within the team itself.

The book also advocates for a system-wide view,
as opposed to the model-centric view data scientists allegedly have.
This is difficult to apply to my research,
seeing as I am not dealing with production ML.
However, one possible application is to also look at the data
when deriving generalisation bounds for ML models.
This is also the view expressed in [@Zhang-2021-Understanding]
which empirically showed how a data-agnostic view of model generalisation is
insufficient.

I think the (oversimplified) roles of data scientist and software engineer
as described by @Kaestner-2025-Machine will remain distinct in the future,
but their demarcation line will blur.
Since the only way in current society to capitalise on new models is to found a
startup or join a big tech company, developers will still specialise as data
scientists and software engineers, and it is the interaction between the two
roles which will blur the line.
AI engineering, defined to be software engineering for AI,
will play a small role in this, as

- foundation models offload most of the research work and modularise the model,
- AI coding assistants expose software engineers to ML models
  and allow data scientists to write better code, and
- more AI companies emerge,
  bringing more data scientists
  and software engineers in contact with each other.

# Paper Analysis

## Paper 1

For the first paper, I looked at [@Ferreira-2026-Optimising].
The core idea of this paper was to optimise ML models for both energy efficiency
as well as performance. @Ferreira-2026-Optimising introduced the energy
consumption optimiser (ECOpt) which uses multi-objective Bayesian optimisation
(MOBO) to find trade-offs between the two metrics.
In particular, ECOpt

- constructs a Pareto frontier between energy efficiency
  and model performance for different hyperparemeter configurations,
- using MOBO which automatically optimises multiple metrics simultaneously,
- considers both training and inference energy consumption,
  since these can differ drastically, and
- does not simply measure FLOPs and parameter count,
  since these can be uncorrelated to energy use,
  and are thus not necessarily good proxies.

These ideas are directly related to AI engineering.
Reducing the energy required during inference can directly reduce operational
costs, particularly when a model is deployed at scale.
The paper therefore illustrates how model selection should consider system-level
properties rather than only model performance.

Taking the transcription service example from [@Kaestner-2025-Machine],
a smaller less energy-intensive model could be used,
if its performance suffices.
This would reduce energy costs of inference
and allow the service to possibly run on cheaper hardware,
reducing operational costs.
In addition, since the model selection is automatically optimised by MOBO,
this frees up the developers' time to work on other parts of the system,
such as the payment service and website, or to fix bugs.

This is relevant to my own research
since I frequently need to train multiple models to empirically validate
theoretical claims.
By choosing less energy-intensive
(but still sufficiently performant)
models, I would have an easier time performing large-scale empirical validation.
The paper also lead to my self reflection about the purpose of the experiments;
If the goal is to merely test the validity of theorems,
it is unnecessary to use the largest, best performing model.
Using the largest model for experiments might in fact be a hindrance to
evaluations of future theorems.

## Paper 2

The second paper [@Ren-2024-Safetywashing] investigates the relationship between
general model capabilities and safety.
The main result is that general performance and safety are sometimes,
but not always, (negatively) correlated.
This suggests that simply increasing model capability does not necessarily lead
to a safer model.
More precisely, performance on many popular ML safety benchmarks is directly
correlated to model scale.
However, only some actual safety tasks improve with scale, e.g.,
adversarial robustness, machine ethics, truthfulness, while some
(sycophancy, bias, discrimination) do not.
The authors identify a so-called *capabilities component*, i.e.,
the eigenvector corresponding to the largest eigenvalue of the correlation
matrix $C = A^⊤A$ between safety tasks, where $A_{ij}$ is the score of model $i$
on benchmark $j$.
It is this capabilities component which is correlated with model size.

The connection of these results to AI engineering is obvious:
The model with the highest performance is not always the safest model.
In fact, the most performant model might even by *less* safe than other models.
An AI engineer thus has to not only consider which model to use,
but also if the tests used to evaluate said model provide meaningful insight on
the model's behaviour.

One possible application is the evaluation of a customer-service chatbot.
Suppose a new model obtains a higher score on a safety benchmark.
Before concluding that the new model is safer,
the engineering team should determine
whether the benchmark is actually sensitive to the particular safety properties
that matter for the chatbot.
They could supplement the benchmark with application-specific tests,
for example testing whether the model reveals private information,
follows inappropriate instructions, or produces harmful responses.
This would make the evaluation more closely aligned with the actual requirements
of the system.

The paper also has an interesting connection to my own research.
I study generalisation of ML models,
and the paper highlights the importance of being precise about what a benchmark
or theoretical quantity actually measures.
In fact, studying which exact metric appears in the generalisation bound reveals
interesting qualities about the model being studied.
For example, a generalisation bound with an information-theoretic metric would
imply that the model is performing some form of compression.

# Evidence, Originality, and GenAI-Use

Five sources were used for this report.
This section discusses each source used,
in order of their appearance in the [References](#references).
The first source is a conference paper from CAIN 2026 which,
despite only being a B-tier conference, is double-blind peer reviewed, and thus,
decently trustworthy.
The second source is a conference paper from EMNLP 2020
which is a highly prestigious A* conference with double-blind peer review.
The third source is the book by @Kaestner-2025-Machine published by MIT press.
The author is an associate professor at Carnegie Mellon,
an established university.
The fourth source is a conference paper from NeurIPS 2024,
the most prestigious ML conference.
The final source is a seminal paper in my field of research.
No generative AI was used for the production of this report.

# References
