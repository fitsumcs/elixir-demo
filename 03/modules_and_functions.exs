# 03 - Modules, functions, and the pipe operator

defmodule Lesson03 do
  def greet(name) do
    "Hello, #{name}!"
  end

  def square(n), do: n * n

  def describe_number(n) when is_integer(n) and n > 0, do: "positive integer"
  def describe_number(0), do: "zero"
  def describe_number(n) when is_integer(n) and n < 0, do: "negative integer"
  def describe_number(_), do: "not an integer"

  def double_all(list) do
    list
    |> Enum.map(fn n -> n * 2 end)
  end
end

IO.puts("== Module function calls ==")
IO.puts(Lesson03.greet("Sam"))
IO.puts("square(6) = #{Lesson03.square(6)}")

IO.puts("\n== Guard clauses ==")
IO.puts("7 is #{Lesson03.describe_number(7)}")
IO.puts("0 is #{Lesson03.describe_number(0)}")
IO.puts("-2 is #{Lesson03.describe_number(-2)}")
IO.puts("3.14 is #{Lesson03.describe_number(3.14)}")

IO.puts("\n== Pipe operator with Enum ==")
result = Lesson03.double_all([1, 2, 3, 4])
IO.inspect(result, label: "doubled list")
