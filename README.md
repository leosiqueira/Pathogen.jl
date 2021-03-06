# Pathogen.jl
[![DOI](https://zenodo.org/badge/35234698.svg)](https://zenodo.org/badge/latestdoi/35234698)
[![Latest Release](https://img.shields.io/github/release/jangevaare/Pathogen.jl.svg)](https://github.com/jangevaare/Pathogen.jl/releases/latest)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/jangevaare/Pathogen.jl/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/jangevaare/Pathogen.jl.svg?branch=master)](https://travis-ci.org/jangevaare/Pathogen.jl)
[![codecov.io](http://codecov.io/github/jangevaare/Pathogen.jl/coverage.svg?branch=master)](http://codecov.io/github/jangevaare/Pathogen.jl?branch=master)

Authors: Justin Angevaare, Zeny Feng, Rob Deardon

![Epidemic curve](examples/epiplot.png)

Pathogen.jl is a Julia software package for individual level models of infectious diseases (Deardon et al, 2010). It's capabilities include stochastic simulation and [Bayesian] inference of SEIR, SEI, SIR, and SI individual level models, with fully customizable functions describing individual specific transition rates between disease states (i.e. form of, and relevant risk factors to, susceptibility, transmissibility, transmissability, latency, removal, and sparks functions). Pathogen.jl is written purely in Julia, which enables this generality without incurring performance costs.

![MCMC](examples/posterior.png)

Pathogen.jl infers transmission pathways (i.e. who-infected-who). This inference is completed using a Gibbs step in our specialized MCMC algorithm. This specialized MCMC algorithm also performs event time data augmentation. A detailed overview of this algorithm can be found [here](https://arxiv.org/abs/2002.05850).

## Installation
The current release can be installed from the Julia REPL with:

```julia
pkg> add Pathogen
```

The development version (master branch) can be installed with:

```julia
pkg> add Pathogen#master
```

![Posterior Transmission Network](examples/posterior_tn.png)

Examples of Pathogen.jl workflow are included in the examples directory as a Jupyter notebooks.
1. [SIR simulation, inference, and visualization](https://github.com/jangevaare/Pathogen.jl/blob/master/examples/SIR%20TN-ILM%20Simulation%20and%20Inference.ipynb)
![Epidemic simulation](examples/epianimation.gif?raw=true)

## More information
This package is detailed in this [preprint article](https://arxiv.org/abs/2002.05850).

    @article{pathogenjl,
      title={Infectious Disease Transmission Network Modelling with {Julia}},
      author={Justin Angevaare and Zeny Feng and Rob Deardon},
      year={2020},
      eprint={2002.05850},
      archivePrefix={arXiv},
      url = {https://arxiv.org/abs/2002.05850}}
