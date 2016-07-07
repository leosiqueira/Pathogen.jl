@recipe function plot(events::Events)
  xguide --> "Time"
  yguide --> ""
  @series begin
    seriestype := :steppost
    time, count = epiplot(events, :S)
    xlims --> (-1., maximum(time)+1.)
    label := "S"
    time, count
  end
  @series begin
    seriestype := :steppost
    time, count = epiplot(events, :E)
    xlims --> (-1., maximum(time)+1.)
    label := "E"
    time, count
  end
  @series begin
    seriestype := :steppost
    time, count = epiplot(events, :I)
    xlims --> (-1., maximum(time)+1.)
    label := "I"
    time, count
  end
  @series begin
    seriestype := :steppost
    time, count = epiplot(events, :R)
    xlims --> (-1., maximum(time)+1.)
    label := "R"
    time, count
  end
end


@recipe function plot(population::DataFrame, events::Events, time::Float64, paths=true::Bool)
  xguide --> ""
  yguide --> ""
  legend --> :right
  if paths
    xpath, ypath = pathplot(population, events, time)
    if size(xpath, 2) > 0
      @series begin
        seriestype := :path
        seriescolor := :black
        label := ""
        xpath, ypath
      end
    end
  end
  @series begin
    x, y = popplot(population, events, time, :S)
    seriestype := :scatter
    label := "S"
    x, y
  end
  @series begin
    x, y = popplot(population, events, time, :E)
    seriestype := :scatter
    label := "E"
    x, y
  end
  @series begin
    x, y = popplot(population, events, time, :I)
    seriestype := :scatter
    label := "I"
    x, y
  end
  @series begin
    x, y = popplot(population, events, time, :R)
    seriestype := :scatter
    label := "R"
    x, y
  end
end
