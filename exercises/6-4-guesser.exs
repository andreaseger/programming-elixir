defmodule Chop do
  def guess(actual, min..max) do
    IO.puts "Is it #{halfway(min,max)}? (#{min},#{max})"
    guess(actual, halfway(min,max), min..max)
  end

  def guess(actual, actual, _) do
    IO.puts "its #{actual}"
  end
  def guess(actual, guess, min.._) when guess > actual do
    IO.puts "Is it #{halfway(min,guess)}? (#{min},#{guess})"
    guess(actual, halfway(min,guess), min..guess)
  end
  def guess(actual, guess,_..max) when guess < actual do
    IO.puts "Is it #{halfway(guess+1,max)}? (#{guess+1},#{max})"
    guess(actual, halfway(guess+1,max), guess+1..max)
  end

  def halfway(min,max) when rem(max-min,2) == 1 do
    min+div(max-min,2)
  end
  def halfway(min,max) do
    min+div(max-min,2)-1
  end
end

