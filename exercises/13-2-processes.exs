defmodule Echo do
  def echo do
    receive do
      {sender, msg} ->
        sender <- {:ok, msg}
    end
  end
end


spawn(Echo, :echo, []) <- {self, :betty}
spawn(Echo, :echo, []) <- {self, :fred}


receive do
  {:ok, response} -> IO.inspect response
end
receive do
  {:ok, response} -> IO.inspect response
end
