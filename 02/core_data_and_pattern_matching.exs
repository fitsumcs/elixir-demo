# 02 - Core data types and pattern matching

IO.puts("== Numbers and arithmetic ==")
a = 10
b = 3
IO.puts("a + b = #{a + b}")
IO.puts("a / b = #{a / b}")

IO.puts("\n== Strings and interpolation ==")
name = "Elixir learner"
IO.puts("Welcome, #{name}!")

IO.puts("\n== Lists and tuples ==")
numbers = [1, 2, 3, 4]
point = {:ok, 42}
IO.inspect(numbers, label: "numbers")
IO.inspect(point, label: "point tuple")

IO.puts("\n== Maps ==")
user = %{name: "Sam", level: 1}
IO.inspect(user, label: "user map")
IO.puts("User name is #{user.name}")

IO.puts("\n== Pattern matching basics ==")
[first | rest] = numbers
{:ok, value} = point
%{level: level} = user

IO.puts("first = #{first}")
IO.inspect(rest, label: "rest")
IO.puts("value from tuple = #{value}")
IO.puts("level from map = #{level}")

IO.puts("\n== Immutability example ==")
level = level + 1
IO.puts("new level = #{level}")
