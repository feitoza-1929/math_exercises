defmodule ArithmeticsTest do
  use ExUnit.Case
  doctest Arithmetics

  test "greets the world" do
    assert Arithmetics.hello() == :world
  end
end
