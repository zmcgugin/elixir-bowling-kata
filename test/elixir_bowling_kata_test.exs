defmodule ElixirBowlingKataTest do
  use ExUnit.Case
  doctest ElixirBowlingKata

  test "bowl all gutters results in a score of 0" do
    frames = [[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]]
    assert ElixirBowlingKata.bowl(frames) == 0
  end

  test "bowl should sum frames for a total score" do
    frames = [[5,3], [2,7]]
    assert ElixirBowlingKata.bowl(frames) == 17
  end

end
