# Software Engineering for AI


## 1. Introduction

My research focuses on applying machine learning methods to automated planning.
Automated planning addresses the challenge of solving sequential decision-making problems by finding a sequence of actions—referred to as a *plan*—that leads from an initial state to a goal state.

I work with classical planning, which assumes a fully observable, deterministic environment with a set of states and deterministic actions.
A common approach to classical planning is heuristic search, where a heuristic function estimates the distance from a given state to the goal.
The task of a planner is to generate a plan, given an initial state, goal condition, and a set of applicable actions.

Over the past 25 years, the majority of state-of-the-art planners have relied on state-space search guided by domain-independent heuristics.
In classical planning, a domain is an environment from which multiple tasks with different initial and goal states can be generated.
A major challenge in modern planning systems is scalability.
As task size grows, planners struggle to solve them due to combinatorial explosion, also known as state-space explosion.
When heuristic estimates are inaccurate, solving large tasks within limited time and memory becomes increasingly difficult.
Although heuristic functions are often computationally efficient, they can be complex and may not generalize well across all tasks.
Their domain independence, while beneficial for broad applicability, means that they often ignore useful domain-general properties.
For example, if there are two tasks with different initial states but the same goal state, domain-independent heuristics typically do not exploit any possible similarities between tasks.

In my research, I aim to overcome these limitations by using machine learning to capture domain-general properties of planning tasks.
Given a specific planning domain, we train a model on a set of representative instances to learn generalizable knowledge about the domain.
The learned model is then used to tackle much larger tasks than those seen during training.
Our goal is that this domain-level knowledge enables effective generalization and improved scalability in planning systems.


## 2. Lecture principles

The first principle is *AI testing*.
In my research, there are two stages: learning and planning.
A model that performs well during the learning stage does not necessarily achieve good results in the planning stage.
We typically optimize the learning model using a metric such as F1 score.
However, we have observed that this metric alone is often insufficient to properly assess generalization from a planning perspective.
Instead, we analyze how the model makes predictions for different types of states.
For example, we visualize and identify which states are most challenging for our models.
During the lecture, I considered how running our models on small training instances with slightly different initial states but the same goal states, and vice versa, could help us observe how these perturbations affect performance.
This approach could provide insight into the robustness of the model.

The second concept is *addressing opacity*.
Currently, I work with decision tree models and features  from logical formalisms.
In theory, both the model type and the feature language should contribute significantly to making the model more transparent (white-box).
In practice, however, we observe that the trees are very deep and the features are long and complex.
An additional challenge is that our machine learning algorithms should ideally scale and perform better than existing symbolic methods, which are already highly explainable and interpretable.
Although the lecture did not mention specific methods applicable to my scenario, it reinforced the importance of this aspect.
This factor is especially crucial if the model is to be deployed in production.
While our current algorithms are not black boxes (they are somewhere between grey and white boxes), I believe that future work could lead to even more transparent methods.


## 3. Guest-Lecture Principles

**Requrements Engineering**.
At first glance, it is difficult to see how this discipline could be applied in pure research settings.
However, the most valuable lessons I have taken from it are the importance of structure, organization, and iteration.
While these concepts may seem idealistic or even restrictive to those who value a purely exploration-driven approach to science, the reality—especially during a PhD—is that we must publish papers within limited timeframes.
This makes it essential to organize everything from daily routines to problem formulation.

Although the initial hypothesis often comes from an advisor, it can change significantly or even become irrelevant as the research progresses.
I would emphasize *iteration* as a critical aspect here: the ability to periodically step back and assess the overall direction of the project by evaluating contributions, novelty, and impact.
In other words, we need to understand how our initial expectations align with the results we obtain, and decide whether to change direction, adjust the scope, or focus more deeply on specific results.

This process can be relatively straightforward when writing a single paper, but it becomes much more challenging over the course of a PhD, where one carefully develops ideas from one paper to the next while minimizing disconnects between them.

**Behavioral AI Engineering**.
The second topic concerned human behavioral aspects in the modern AI landscape.
To some extent, we are experiencing similar changes not only at the industry level but also in academia.
When Google releases a paper like *AlphaEvolve*, it naturally raises questions about how scientific research should be conducted today.
The process of scientific discovery is becoming increasingly automated.
In our own workflow, we aim to automate tedious tasks, but now even our primary research activities are becoming candidates for automation.
While some of this may still seem utopian or dystopian, there is certainly substance to these concerns.
As always, these are problems that are easier to identify than to solve.

My main takeaway is the importance of increasing our awareness and understanding of these systems.
As someone whose interest in mathematics has grown significantly in recent years, I believe it is essential that research continues to thoroughly analyze these complex systems.
Otherwise, we risk creating massive (synthetic) neural networks that may ultimately be beyond our comprehension.
