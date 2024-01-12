# JuliaCon talk on AD

## Title

* The state of automatic differentiation in Julia
* Autodiff in Julia from the user perspective
* A quick guide to autodiff in Julia
* A quick tour of AD in Julia
* Navigating the Julia AD ecosystem
* AD in Julia: A Beginner's Guide to Backends and Beyond
* From Basics to Backends: A Complete Guide to Automatic Differentiation in Julia


## Draft outline
* Complexity of the Julia ecosystem
	* Number of backends can be overwhelming / confusing (just open https://juliadiff.org/)
		* Devs: Which backend do you use?
		* Users: Which function/method is differentiable with which backend?
	* Lots of folklore in Julia community
* A quick taxonomy of AD systems
	* We want gradients and more generally Jacobians
	* AD systems only compute VJPs and JVPs
		* For function $f: \mathbb{R}^n \rightarrow \mathbb{R}^m$
			* $n$ JVPs to compute Jacobian
			* $m$ VJPs to compute Jacobian ($m=1$ for e.g. neural networks with scalar loss)
		* VJPs and JVPs compose really really well due to the chain rule
		* we are not actually allocating potential huge Jacobian matrices but working with functions
			* functions computing JVPs: pushforwards
			* functions computing VJPs: pullbacks
		* good way to broadly categorize AD systems
	* there are other exotic approaches
* Structure of Autodiff in Julia (compared to e.g. Python) "Julia Dreams Big"
	* Ambitious goal: language-wide AD
		* Packages use different AD "backends"
	*  PyTorch and JAX: sub-ecosystems
		* AD "backends" have their own ecosystems
* Reverse-mode's "two language problem"
	* Different ways to write Julia code (see "1.5 language problem")
	* In autodiff it's reversed (Zygote doesn't support mutation)
* Using Julia AD in 2024
	* There are three types of users: 
		* people developing AD systems
		* people who want to make their functions differentiable
		* people who want to differentiate over a function
	* AD developers
	* Making functions differentiable
		* Probably want compatibility with as many backends as possible
		* How do you do this with ChainRules, Enzyme, ForwardDiff while being fast?
		* Is it even possible to have code differentiable across all backends?
	* Differentiating over a function
		* Which backend is compatible with my problem?
		* Which backend is the fastest?
* The solutions (?)
	* Reverse-diff over mutating code being solved by Enzyme
		* Why don't we all just use Enzyme? Complicated interface
	* AbstractDiff / Diff'Interface
		* Abstract API allows quickly testing all backends and benchmarking them against each other

## Sources

- https://adrianhill.de/julia-ml-course/L6_Automatic_Differentiation/
- https://jax.readthedocs.io/en/latest/notebooks/autodiff_cookbook.html
