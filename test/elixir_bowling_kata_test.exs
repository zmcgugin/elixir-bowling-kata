defmodule ElixirBowlingKataTest do
  use ExUnit.Case
  doctest ElixirBowlingKata

  test "bowling all gutters results in a score of 0" do
    frames = [[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]
    assert ElixirBowlingKata.bowl(frames) == 0
  end
end
