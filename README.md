# Finite-Element-Method-in-1-D
Approximate functions in 1-D by the Finite Element Method (FEM) using Julia programming language

The provided code approximates continuous functions in a one-dimensional domain by the Finite Element Method (FEM). The idea of this method is to divide the domain into elements (discretization) and join piecewise polynomials to get a global approximation. The function is approximated by the following piecewise linear function:
![Sampling design](https://github.com/jmrmcode/Finite-Element-Method-in-1-D/blob/master/math-20200517.png)

The function to be approximated is declire by the user on line 4
