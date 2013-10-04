fizz_buzz = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,a) -> "#{a}"
end
#IO.puts fizz_buzz.(0,0,1)
#IO.puts fizz_buzz.(1,0,2)
#IO.puts fizz_buzz.(0,5,3)
#IO.puts fizz_buzz.(6,5,4)

meh = fn
  n -> fizz_buzz.(rem(n,3),rem(n,5),n)
end

IO.puts meh.(10)
IO.puts meh.(11)
IO.puts meh.(12)
IO.puts meh.(13)
IO.puts meh.(14)
IO.puts meh.(15)
IO.puts meh.(16)
