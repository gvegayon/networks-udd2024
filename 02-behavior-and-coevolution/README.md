# Behavior and coevolution

<!-- \newcommand{\bmi}[1]{\boldsymbol{#1}} -->
# Introduction

This section focuses on inference involving network and a secondary
outcome. While there are many ways of studying the coevolution or
dependence between network and behavior, in this section we focus on two
classes of analysis: When the network is fixed, and when both network
and behavior influence each other.

Whether we treat the network as given or endogenous sets the complexity
of conducting statistical inference. If the focus of our research is on
individual-level outcomes embedded in a network and not on the network
itself, data analysis becomes much simpler. Here, we will deal with
three particular cases: (1) when network effects are lagged, (2)
egocentric networks, and (3) when network effects are contemporaneous.
On the other hand, if network and behavior co-evolve, the most common
approach is to use

# Lagged exposure

If we assume that network influence in the form of exposure is lagged,
we have one of the simplest cases for network inference. Here, instead
of dealing with convoluted statistical models, the problem reduces to
estimate a simple linear regression model. Generally, lagged exposure
effects look like this:

$$
y_i = \rho \left(\sum_{j\neq i}X_{ij}\right)^{-1}\left(\sum_{j\neq i}y_j X_{ij}\right) + \bm{ \theta }^{\mathbf{t}}\bm{w_i} + \varepsilon,\quad \varepsilon \sim \mbox{N}(0, \sigma^2)
$$

# Egocentric networks

# Network effects are endogenous

Here we have two different approaches: Spatial Autocorrelation \[SAR\],
and Autologistic actor attribute model \[ALAAM\]. The first one is a
generalization of the linear regression model that accounts for spatial
dependence. The second is a close relative of ERGMs that treats
covariates as endogenous and network as exogenous. Overall, ALAAMs are
more flexible than SARs, but SARs are easier to estimate.

**SAR** Formally, SAR models can be used to estimate network exposure
effects. The general form is:

$$
\boldsymbol{y} = \rho \boldsymbol{W} \boldsymbol{y} + \boldsymbol{\theta}^{\mathbf{t}} \boldsymbol{X} + \epsilon,\quad \epsilon \sim \mbox{MVN}(0, \Sigma)
$$

where $\bm{y}\equiv \{y_i\}$ is a vector of outcomes the outcome, $\rho$
is an autocorrelation coefficient, $\bm{W} \in \{w_{ij}\}$ is a
row-stochastic square matrix of size $n$, $\bm{\theta}$ is a vector of
model parameters, $\bm{X}$ is the corresponding matrix with exogenous
variables, and $\epsilon$ is a vector of errors that distributes
multivariate normal with mean 0 and covariance $\Sigma$.\[^notation\]
The SAR model is a generalization of the linear regression model that
accounts for spatial dependence. The SAR model can be estimated using
the `spdep` package in R (Roger Bivand 2022).

Although the SAR model was developed for spatial data, it is easy to
apply it to network data. Furthermore, each entry of the vector
$\bm{Wy}$ has the same definition as network exposure, namely

$$
\bm{Wy} \equiv \left\{\sum_{j}y_j w_{ij}\right\}_i
$$

Since $\bm{W}$ is row-stochastic, $\bm{Wy}$ is a weighted average of the
outcome of the neighbors of $i$, *i.e.*, a vector of network exposures.

**ALAAM** While ALAAMs can also be used to estimate network exposure
effects, we can use them to build more complex models beyond exposure.
The general form is:

$$
\Pr\left(\bm{Y} = \bm{y}|\bm{W},\bm{X}\right) = \exp{\left(\bm{\theta}^{\mathbf{t}}s(\bm{y},\bm{W}, \bm{X})\right)}\times\eta(\bm{\theta})^{-1}
$$

$$
\eta(\bm{\theta}) = \sum_{\bm{y}}\exp{\left(\bm{\theta}^{\mathbf{t}}s(\bm{y},\bm{W}, \bm{X})\right)}
$$

Where $\bm{Y}\equiv \{y_i \in (0, 1)\}$ is a vector of binary individual
outcomes, $\bm{W}$ denotes the social network, $\bm{X}$ is a matrix of
exogenous variables, $\bm{\theta}$ is a vector of model parameters,
$s(\bm{y},\bm{W}, \bm{X})$ is a vector of sufficient statistics, and
$\eta(\bm{\theta})$ is a normalizing constant.

## Spatial Autocorrelation

The SAR model can be used to do statistical inference on network
exposure effects. The general form is:

## Autologistic actor attribute model

This model, presented in Robins, Pattison, and Elliott (2001),

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-lusherExponentialRandomGraph2013" class="csl-entry">

Lusher, Dean, Johan Koskinen, and Garry Robins. 2013. *Exponential
Random Graph Models for Social Networks: Theory, Methods, and
Applications*. Cambridge University Press.

</div>

<div id="ref-robinsNetworkModelsSocial2001b" class="csl-entry">

Robins, Garry, Philippa Pattison, and Peter Elliott. 2001. “Network
Models for Social Influence Processes.” *Psychometrika* 66 (2): 161–89.
<https://doi.org/10.1007/BF02294834>.

</div>

<div id="ref-Bivand2022" class="csl-entry">

Roger Bivand. 2022. “R Packages for Analyzing Spatial Data: A
Comparative Case Study with Areal Data.” *Geographical Analysis* 54 (3):
488–518. <https://doi.org/10.1111/gean.12319>.

</div>

</div>
