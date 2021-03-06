@recipe function f(x::Vector{RiskParameters{T}}) where T <: EpidemicModel
  xguide --> "Iteration"
  yguide --> "Value"
  legend --> :none
  convert(Array{Float64, 2}, x)
end

@recipe function f(iter,
                   x::Vector{RiskParameters{T}}) where T <: EpidemicModel
  xguide --> "Iteration"
  yguide --> "Value"
  legend --> :none
  iter, convert(Array{Float64, 2}, x[iter])
end
