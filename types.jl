
using ForwardDiff

abstract OptimizationProblem

function dimension(p::OptimizationProblem)
    error("return dimension of the variable")
end

function objval{T}(p::OptimizationProblem, x::Vector{T})
    
end

function gradient{T}(p::OptimizationProblem, x::Vector{T})
    error("return the gradient at x")
end
function solve_hessian{T}(p::OptimizationProblem, x::Vector{T}, d::Vector{T})
    error("solve for hessian at x and store it in g")
end

# this function will only be called when exact linesearch is used
function linesearch{T}(p::OptimizationProblem, x::Vector{T}, d::Vector{T})
    error("compute exact line search at x in direction d")
end

type WorkingSet{T}
    x             ::Vector{T}
    x_prev        ::Vector{T}
    g             ::Vector{T}
    g_prev        ::Vector{T}
    f             ::T
    f_prev        ::T
    d             ::Vector{T}
    t             ::T
    iter          ::Integer
    f_all         ::Vector{T}
    x_all         ::Matrix{T}
    g_all         ::Matrix{T}
    d_all         ::Matrix{T}
    t_all         ::Vector{T}
end
