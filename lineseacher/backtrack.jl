function backtrack_linesearcher(; alpha=0.4, beta=0.8)
    function linesearch{T}(p::OptimizationProblem, x::Vector{T}, d::Vector{T})
        t = convert(T, 1)

        fx = objval(p, x)
        dfx = gradient(p, x)

        while objval(p, x + t*d) > fx + alpha * t * dot(dfx, d)
            t = beta * t
        end
        return t
    end

    return linesearch
end