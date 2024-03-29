# WASP Software Engineering course (part)

This repo contains course materials, resources/links, and student assignments for the Software Engineering (SE) part of the WASP "SE and Cloud Computing" course.

## Papers on SE for AI/ML
- [Software Engineering for AI/ML -- An Annotated Bibliography](https://github.com/ckaestne/seaibib)

## Tools (with background reading)

### Cheat Sheets
- [Git Cheat Sheet](https://wac-cdn.atlassian.com/dam/jcr:e7e22f25-bba2-4ef1-a197-53f46b6df4a5/SWTM-2088_Atlassian-Git-Cheatsheet.pdf?cdnVersion=387)
- [Docker - Ultimate Cheat Sheet](https://dockerlabs.collabnix.com/docker/cheatsheet/)

### Version control

- [Understanding Version-Control Systems](http://www.catb.org/esr/writings/version-control/version-control.html) by Eric Raymond
- [Atomic Commits](https://sparkbox.com/foundry/atomic_commits_with_git) by Nathan Rambeck
- [Semantic Versioning specification](https://semver.org/)
- [Introduction to Semantic Versioning](https://www.geeksforgeeks.org/introduction-semantic-versioning/)

### IDEs

- [VS Code](https://code.visualstudio.com/)

### Code autocomplete

- [TabNine](https://www.tabnine.com/) - code autocomplete for many languages (including Python, Java, Javascript, and more)
  - [Code Autocomplete](https://marketplace.visualstudio.com/items?itemName=svipas.code-autocomplete) is a VS code extension that access TabNine for code autocomplete

### ML-QA Toolkit

- [QA-Mapping-for-ML](https://github.com/alexandersimolaIT/QA-Mapping-for-ML) - results of a recent Master thesis at Chalmers
- [ML Testing Paper Mapping Tool](https://lists.live.com/:l:/g/personal/7caca96344176fc6/FH7iTutBDSFOqKiNJbDKkPsBQ3SePdQ-KFtO2iOIE9Aj0w?e=LMl7K4) - online filtering tool for the ML testing papers

### Data Validation

- [Google Data Linter](https://github.com/brain-research/data-linter)
- [Amazon Dequu](https://aws.amazon.com/blogs/big-data/test-data-quality-at-scale-with-deequ/)
- [Python csvvalidator](https://pypi.org/project/csvvalidator)
- [CSV Validator](https://github.com/jbroutier/csv-validator)

### Design By Contract

- [Pre/Post-Conditions in Python Decorator Library](https://wiki.python.org/moin/PythonDecoratorLibrary#Pre-.2FPost-Conditions)
- [StackOverflow thread on ways to do DBC in Python](https://stackoverflow.com/questions/8563464/using-design-by-contract-in-python)

### Unit Testing

- [Effective Python Testing With Pytest](https://realpython.com/pytest-python-testing/)
- [Unit Testing Your Code with the unittest Module](https://www.youtube.com/watch?v=6tNS--WetLI ) by Corey Schafer

### Property-based testing (PBT)

- [Hypothesis](https://hypothesis.works/) PBT in Python
- [Property based testing — A practical approach in Python with Hypothesis and Pandas](https://medium.com/clarityai-engineering/property-based-testing-a-practical-approach-in-python-with-hypothesis-and-pandas-6082d737c3ee)

### Coding standards and Code Reviews

- [Style Guide for Python Code](https://peps.python.org/pep-0008/)
- [Coding Standards and Best Practices for Python Code Quality](https://www.zenesys.com/blog/python-coding-standards-best-practices-for-python-code-quality)
- [How To Review Someone Else’s Code: Tips and Best Practices](https://www.codecademy.com/resources/blog/code-review-best-practices/)

### QA/Static analysis

- [pylint](https://pypi.org/project/pylint/) - static code analysis for Python
- [Using pylint to write clean Python code](https://towardsdatascience.com/using-pylint-to-write-clean-python-code-660eff40ed8)
- [pylama](https://klen.github.io/pylama/) code audit tool for Python
- [lintR](https://github.com/r-lib/lintr) static code analysis for R
- [StaticLint.jl](https://github.com/julia-vscode/StaticLint.jl) - static code analysis for Julia
- [WALA](https://github.com/wala/WALA) static code analysis for Java bytecode and related languages

#### Static analysis for ML

- [mllint](https://bvobart.github.io/mllint/) - Linter for Machine Learning projects
- [pynblint](https://github.com/collab-uniba/pynblint) - linter for Python Notebooks, this is the one you will try in assignment 1 in the course
- [nblyzer](https://psubotic.github.io/papers/nblyzer-icse-seip.pdf) notebook static analysis tool/paper from Microsoft
- [MLSmellHound](https://arxiv.org/abs/2205.03790) - paper describing adaptation of pylint for ML projects
- [Ariadne / WALA](https://wala.github.io/ariadne/) extension to WALA (above) for Python and Tensorflow

### Testing of DNNs

- [Tonella Keynote at ICST 2022: "Misconceptions in Deep Learning Testing"](https://youtu.be/xoEgcbFrIoc)