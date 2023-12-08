
# Fundamentals

- When networks are involved, statistical inference becomes tricky.

- The IID assumption is violated by construction.

- Although it is tempting to use the same tools as in the IID case, they
  are not valid.

# Types of problems

Overall, we can classify the problems according to two dimensions:

- **Behavior** Is the individual level behavior random or deterministic?

- **Network** Is the network random or deterministic?

Of the following cases, which ones can be treated with “regular
statistical methods”?

> 1.  Egocentric study 1: Analyze how the network structure affects
>     health outcomes.
>
> 2.  Egocentric study 2: Investigate what network structures are more
>     prevalent in a population sample.
>
> 3.  Egocentric study 3: Elucidate whether the prevalence of a given
>     network structure is higher in one population than in another.
>
> 4.  Country-level networks: Analyze whether neighboring countries tend
>     to adopt international treaties at the same time.
>
> 5.  Phylogenomics: Study a given phenotype in a population of
>     organisms related by a phylogenetic tree.

# Available methods

## When the network is deterministic

### Single network

If the network is fixed (or treated as if it were fixed,) it is most
likely that a traditional statistical analysis can be performed. For
instance, if we are interested in influence behavior between
adolescents, and we assume influence is a process that takes time, then
a lagged regression may suffice (Haye et al. 2019; Valente and Vega Yon
2020; Valente, Wipfli, and Vega Yon 2019).

<span id="eq-lagged-regression">$$
\mathbf{y}_t = \rho \mathbf{W} \mathbf{y}_{t-1} + \mathbf{X} \bm{\beta} + \bm{\varepsilon}, \quad \varepsilon_i \sim \mbox{N}\left(0, \sigma^2\right)
 \qquad(1)$$</span>

where $\mathbf{y}_t$ is a vector of behaviors at time $t$, $\mathbf{W}$
is the row-stochastic adjacency matrix of the network, $\mathbf{X}$ is a
matrix of covariates, and the elements of
$\bm{\varepsilon}\equiv \{\varepsilon_i\}$ distribute normal with mean
zero and variance $\sigma^2$.

Nonetheless, if assuming a lagged influence effect is no longer
possible, then the regular regression model is no longer valid. Instead,
we can resort to a Spatial Autocorrelation Regression Model \[SAR\] (see
LeSage 2008):

<span id="eq-sar">$$
\mathbf{y} = \rho \mathbf{W} \mathbf{y} + \mathbf{X} \bm{\beta} + \bm{\varepsilon},\quad \bm{\varepsilon} \sim \mbox{MVN}\left(0, \Sigma^2\right)
 \qquad(2)$$</span>

furthermore

$$
\mathbf{y} = \left(I - \rho\mathbf{W}\right)^{-1}\left(\mathbf{X}\bm{\beta} + \bm{\varepsilon}\right)
$$

Where $\bm{\varepsilon}$ now distributes Multivariate Normal with mean
zero and covariance matrix $\Sigma^2 \mathbf{I}$.

<div>

> **Tip**
>
> What is the appropriate network to use in the SAR model? According to
> LeSage and Pace (2014), it is not very important. Since
> $(I_n - \rho \mathbf{W})^{-1} = \rho \mathbf{W} + \rho^2 \mathbf{W}^2 + \dots$.

</div>

### Multiple networks

Sometimes, instead of a single network, we are interested in
understanding how network-level properties affect the behavior of
individuals. For instance, we may be interested in understanding the
relation between triadic closure and income within a sample of
independent egocentric networks; in such a case, as the networks are
independent, a simple regression analysis may suffice.

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-hayeSmokingDiffusionNetworks2019" class="csl-entry">

Haye, Kayla de la, Heesung Shin, George G. Vega Yon, and Thomas W.
Valente. 2019. “Smoking Diffusion Through Networks of Diverse, Urban
American Adolescents over the High School Period.” *Journal of Health
and Social Behavior*. <https://doi.org/10.1177/0022146519870521>.

</div>

<div id="ref-lesageIntroductionSpatialEconometrics2008"
class="csl-entry">

LeSage, James P. 2008. “An Introduction to Spatial Econometrics.” *Revue
d’économie Industrielle* 123 (123): 19–44.
<https://doi.org/10.4000/rei.3887>.

</div>

<div id="ref-lesageBiggestMythSpatial2014" class="csl-entry">

LeSage, James P., and R. Kelley Pace. 2014. “The Biggest Myth in Spatial
Econometrics.” *Econometrics* 2 (4): 217–49.
<https://doi.org/10.2139/ssrn.1725503>.

</div>

<div id="ref-valenteDiffusionContagionProcesses2020" class="csl-entry">

Valente, Thomas W., and George G. Vega Yon. 2020. “Diffusion/Contagion
Processes on Social Networks.” *Health Education & Behavior* 47 (2):
235–48. <https://doi.org/10.1177/1090198120901497>.

</div>

<div id="ref-valenteNetworkInfluencesPolicy2019" class="csl-entry">

Valente, Thomas W., Heather Wipfli, and George G. Vega Yon. 2019.
“Network Influences on Policy Implementation: Evidence from a Global
Health Treaty.” *Social Science and Medicine*.
<https://doi.org/10.1016/j.socscimed.2019.01.008>.

</div>

</div>
