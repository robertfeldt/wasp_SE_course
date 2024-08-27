# Software Engineering Assignment - Qi Shao

## Introduction
My research focuses on computer microarchitecture and memory subsystem. We try to improve the performance of CPU/GPU/Memory to achieve better IPC (Instruction per Cycle) as to CPU and higher throughput for GPU. Since it is unmanageable to program from silicon level, like Verilog or VHDL language. Researchers prefer to use simulators to simulate the function of CPU/GPU at cycle accurate level to value the idea.

I have been working in industry for years, using these simulators. Similar to methods mentioned in the lectures, we use regression test, combining both unit test and benchmark test to check whether added function is correct. Our team manager also make the rule that *if someone modify the code that slow down the runtime of simulator, he has to buy coffee for everyone in the team*. It is a soft way to prevent programmer from adding low-performance code.

We also follow the Google's C++ programming style guideline.

## Robert's Lecture and My Research & Work Experience

### V-Model & My Research
In the lecture, we disscussed about the flavor of SE/Processes V Model. The V Model has differente layers from upper-level *Requirements* to bottom-level *Coding*. As to my research, there are already plenty of microarchitecture simulators.

- Gem5/GPGPU-sim: Cycle Accurate Simualtor
- Ramulator: Trace Driven Simulator
- Zsim/Pin: Instrumental-based Simulator

These simulators is build based on different requirments. Cycle-accurate simulator usually has better simulation accuracy, but lower speed. Ramulator is faster and Zsim/Pin is fastest since they run on real processor, just instrumenting code. However in the paper, I can always come accross that the results of some papers are simulated based on the simulator that does not support the function, in which it failed in the *Validation* Part.

As to bottom-level coding, it is sensible that cycle-accurate simulator has most workload of coding. It has to simulate at cycle & instruction level. However, meanwhile since CPU&GPU design company like Intel or NVIDIA or AMD, they just disclose their design at very high-level block design. The detailed design of each unit in cycle accurate simulator is based on estimation the structure of each unit after runing benchmark on CPU & GPU. 

In my research, I also met some paper that they claimed that they found previous cited work has miscoding some unit, so that the cited performance cannot be trusted.

### Code Review practices & My Work Experience

When I was in industry, we also follow the guideline of Google C++ programming style. But we didn't follow Google's code review. During the literature, I found that this part very interesting.

As a freshgraduate student, I also found that I could benefit a lot from reviewing code from senior or professionals. And based on this observation, during my research, when I first stepped into new area, for example compiler, like LLVM, I tends to go back to the initial commit of LLVM project and learn how the initional function was added into LLVM Project. It is the idea of *Education Maintaining norms* mentioned in the paper. Another interesting finding is that as employer stays in Google longer, commemnts per change also decrease, and converge to each change 2 comments.

Another finding is similar to *finding5 code review at Google still faces breakdonws*. When I start to learn LLVM framework, in the beginning of user manual or guideline, one of the advantage of LLVM compared to GCC is the simplicty of LLVM. However, as years of development of LLVM, I feels the learning curve of LLVM is steeper than I imagine. And after new function are merged, the turtorial blogs are not updated. If I just follow the tutorial blogs, the function that I implement will not work. This is the mismatch of latest code and stale tutorial.

### Verification & My Work Experience
In the verification process, I have worked in some company that the programmer is also the verifier. They design test cases for their own code. An anology could be that an athelete is also the referee of the game. The company has follow this routine for a while, but in the end we found that there are always bugs that the programmer cannot found by themselves. It is since that the cases that the programers will always work. They are blind to the test cases that would trigger the bug. If they realized it, they would have fixed it. In the end, the company decide to manage a new team of verifiers that focus on testing the program.

## Guest's Lecture and My Research & Work Experience

### SAAB Survery of Software Engineering relevance changing with AI/ML

It is surprising that most of the answers are "We dont know". I also didn't use AI to generate programming code, since I feels that I have been trained to learn how to write efficient program and the AI could not achieve, until last year. Last year during the WASP conference, I found that most of the students have been using copilot. And nowadays that cursor, a new programming assistant tool is become popular. After the WASP conference, I tried Chat-GPT to write demo code for LLVM function and it works well. Sometimes, the code does not work, but at least, it provide a demo framework or an idea or suggest for you to program. As to me, if I am very familiar with some framework, for example, simulators, I will write code and modify it by myself, since I am better than chat-GPT or at least I dont need to understand the chat-gpt's code and debug. But as to new framework that I dont know, I will ask chatgpt to present some demo. It boosts the progress of my learning new framework.

After using chatgpt to generate code, I register WASP Natural Language Processing Code to learn why Transformers works in programming area. It is sensible that transformers at good at predict next token and it is also trained with public opensource frameworks. In this way,it could understand the programming style and generate code. And we can also view programming language as a universal language to communicate ideas. Thus, if it could works in chat robots, it will also work in programming.

### SAAB Safe-critical Consideration with AI

Usually AI tools like chatgpt are on-line, and we could use chatgpt to generate programs and we could remarks on the result to provide feedback to chatgpt about the quality of code. Thus it is a online feedback loop. As to Saab ATM, I have two considerations:
- Before we introduce AI to generate test cases for code in SAAB, how could we promise the black-box test cases are enough to cover all safe-critiacal cases. And after we use AI, how we keep the same promise.
- As a commercial company of SAAB, if they use chatgpt or some other AI tool to generate test cases or program demos, how could AI tool provider provide that the tool is safe from not generating risky code?

## CAIN Papers

My research topic is about improving performance of CPU & GPU, mainly with compression technique. Among the CAIN papers, I choose two paper related to memory compression.

### Paper 1: "Towards Understanding Model Quantization for Reliable Deep Naural Network Deployment" [^1]

This paper characterize the behaviour of quantization models. They mainly focused on the following four question and based on results of study, they provides answers to each of them.

#### Impact of Data Distribution Shift to Compressed Models

The shift of dataset distribution could influence the performance of compressed model. And they choose two types of distribution shift datasets to evalute: dataset based on image transformation and dataset reported in literature. They compare the performance in terms of accuracy difference and lable difference.

They found that compressed model generated by CoreML is better than TensorflowLite during deployment. And the accurancy difference increaes by up 2.25% compared compressed model with original models.

#### Impact of Training Strategy

They evalute different traning strategy: standard traning, quantization-aware traning, adversarial training and mixedup traning. In the study, they found quantization-aware traning is more stable.

#### The characteristics on which original and compressed models disagree

They try to figure out the characteristic that original and compressed model most likely to disagree.  The conclustion is that the result is closer top1 and top2 output probilities. A better metric would be *Margin* to distinguish disagreement and normal inputs.

#### Impact of retraining

To my supervise, they found that retraining fails to reduce the total number of disagreements. It can also introduce many new disagreements.

### Paper 2: "The Impact of Knowledge Distillation on the Energy Consumption and Runtime Efficiency of NLP Models"  [^2]

In this paper, they study the impact of knowledge distillation in terms of energy consumption and runtime efficicency. They evaluate different models, BERT, Distilled-BERT, GPT-2 and Distilled-GPT2.

#### Energy Consumption

As to distilled-GPT2, it experience 28.1% decrease in energy comsumption compared to GPT2 and Distilled-BERT 43.96%.

#### Inference Time
Distilled-BERT and BERT takes inference time as 674ms and 891 ms, correspondingly. And GPT2 tooks 798ms, compared with Distilled-GPT 555ms.

#### Utilization
Distilled-BERT has reduction in CPU utilization about 0.10% compared with BERT and reduction of memory utilization as 0.14%.

Distilled-GPT2 has lower 0.79% memory utilization and 0.13% lower CPU utilization.

#### Conclusion
Compared with BERT, Distilled-BERT is more energy-efficient. And Distilled-GPT2 has better inference time and memory usage compared with GPT2.

## References

[^1]: Towards Understanding Model Quantization for Reliable Deep Naural Network Deployment

[^2]: The Impact of Knowledge Distillation on the Energy Consumption and Runtime Efficiency of NLP Models
