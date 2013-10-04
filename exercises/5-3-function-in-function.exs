prefix = fn
  pre -> fn
    name -> "#{pre} #{name}"
  end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")
