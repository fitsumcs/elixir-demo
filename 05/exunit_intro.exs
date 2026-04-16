# 05 - ExUnit basics in a single script

ExUnit.start()

defmodule Lesson05 do
  def even?(n) when is_integer(n), do: rem(n, 2) == 0
  def even?(_), do: false
end

defmodule Lesson05Test do
  use ExUnit.Case, async: true

  test "even?/1 returns true for even integers" do
    assert Lesson05.even?(2)
    assert Lesson05.even?(100)
  end

  test "even?/1 returns false for odd integers" do
    refute Lesson05.even?(3)
  end

  test "even?/1 returns false for non-integers" do
    refute Lesson05.even?(3.14)
    refute Lesson05.even?("4")
  end
end
