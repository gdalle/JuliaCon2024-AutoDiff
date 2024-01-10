# JuliaCon talk on AD

## Title

The state of automatic differentiation in Julia

Autodiff in Julia from the user perspective

A quick guide to autodiff in Julia

## Ideas

- [ ] Different ways to write Julia code (based on the 1.5 language)
- [ ] In autodiff it's reversed (Zygote doesn't support mutation)
- [ ] Much more difficult than PyTorch and JAX: generic instead of sub-ecosystems
- [ ] We don't know what is differentiable with which backend
- [ ] JuliaDiff is scary and confusing (just open https://juliadiff.org/)
- [ ] Julia community has lots of folklore
- [ ] How do you make your code differentiable, and fast
- [ ] How do you call autodiff inside a function
- [ ] Which backend do you use
- [ ] Is it possible to have code differentiable across all backends?
- [ ] Why don't we all just use Enzyme? Complicated interface
- [ ] Abstract API allows quickly testing all backends and benchmarking them against each other
- [ ] How to make your code compatible with ChainRules, Enzyme, ForwardDiff
- [ ] Can we handle higher-order autodiff?
- [ ] Take hidden knowledge from Discourse / Slack and distill it https://discourse.julialang.org/t/state-of-machine-learning-in-julia/74385/3 
- [ ] Fundamental things are VJPs and JVPs

## Sources

- https://adrianhill.de/julia-ml-course/L6_Automatic_Differentiation/
- https://jax.readthedocs.io/en/latest/notebooks/autodiff_cookbook.html
