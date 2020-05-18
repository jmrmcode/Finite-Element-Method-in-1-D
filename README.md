# Finite-Element-Method-in-1-D
Approximate functions in 1-D by the Finite Element Method (FEM) using Julia programming language

The provided code approximates continuous functions in a one-dimensional domain by the Finite Element Method (FEM). The idea of this method is to divide the domain into elements (discretization) and join piecewise polynomials to get a global approximation. The function is approximated by the following local piecewise linear functions for each element:

![Local functions](https://github.com/jmrmcode/Finite-Element-Method-in-1-D/blob/master/localFunctions.png)

which is derived from the global functions at the node j:

![Global functions](https://github.com/jmrmcode/Finite-Element-Method-in-1-D/blob/master/globalFunctions.png)

See [WIKIVERSITY](https://en.wikiversity.org/wiki/Introduction_to_finite_elements/Finite_element_basis_functions) for more details.

The function to be approximated is declared by the user on line #4 of the code (by default the function is sin(x) + cos(x)).
The code is written using [Julia programming language](https://julialang.org/).
