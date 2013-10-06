defmodule MyList do
  def sum(l), do: _sum(l,0)

  defp _sum([],total),    do: total
  defp _sum([h|t],total), do: _sum(t,h+total)

  def sum2([]), do: 0
  def sum2([head|tail]) do
    head + sum2(tail)
  end

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, fun) do
    reduce(tail, fun.(head, value), fun)
  end

  def mapsum(coll, func) do
    map(coll,func) |> sum
  end
  def mapsum2([],_), do: 0
  def mapsum2([head|tail],func), do: func.(head) + mapsum(tail, func)

  def max(coll), do: _max(coll,0)
  defp _max([],m), do: m
  defp _max([head|tail],m) when head > m do
    _max(tail,head)
  end
  defp _max([_head|tail],m), do: _max(tail,m)

  def caesar(list, n) do
    map(list, &(97+rem(&1-97+n,26) ))
  end

  def span(a,a), do: [a]
  def span(from, to) do
    [from | span(from+1, to)]
  end
end

