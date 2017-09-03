defmodule ElixirBowlingKata do

  def bowl(frames) do
    sum_frames(frames)
  end

  def sum_frames([h|t]) do
    sum_frame(h) + sum_frames(t)
  end

  def sum_frames([]) do
    0
  end

  def sum_frame([h|t]) do
    h + sum_frame(t)
  end

  def sum_frame([]) do
    0
  end
end
