defmodule ElixirBowlingKata do

  def bowl(frames) do
    sum_sub_list(spairs(frames)) + sum_list(frames)
  end

  def spairs(frames) do
    frames_with_index = Enum.with_index(frames)
    Enum.map(frames_with_index, fn(x) ->
      if(sum_sub_list(elem(x, 0)) == 10) do
        sum_sub_list(Enum.at(frames, elem(x, 1) + 1))
      else
        0
      end
    end)
  end

  def sum_list([h|t]) do
    sum_sub_list(h) + sum_list(t)
  end

  def sum_sub_list([h|t]) do
    h + sum_sub_list(t)
  end

  def sum_list([]) do
    0
  end

  def sum_sub_list([]) do
    0
  end
end
