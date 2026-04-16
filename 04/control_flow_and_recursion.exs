# 04 - Control flow (`case`/`cond`) and recursion

defmodule Lesson04 do
  def classify_login({:ok, user}) do
    case user do
      %{role: "admin"} -> "admin login"
      %{role: "member"} -> "member login"
      _ -> "unknown role login"
    end
  end

  def classify_login({:error, reason}), do: "login failed: #{reason}"

  def temperature_status(celsius) do
    cond do
      celsius < 0 -> "freezing"
      celsius < 20 -> "cool"
      celsius < 30 -> "warm"
      true -> "hot"
    end
  end

  def sum_list(list), do: do_sum_list(list, 0)

  defp do_sum_list([], acc), do: acc
  defp do_sum_list([head | tail], acc), do: do_sum_list(tail, acc + head)
end

IO.puts("== case with tagged tuples ==")
IO.puts(Lesson04.classify_login({:ok, %{name: "Sam", role: "admin"}}))
IO.puts(Lesson04.classify_login({:ok, %{name: "Lee", role: "member"}}))
IO.puts(Lesson04.classify_login({:error, "invalid password"}))

IO.puts("\n== cond example ==")
for temp <- [-5, 10, 24, 34] do
  IO.puts("#{temp}C is #{Lesson04.temperature_status(temp)}")
end

IO.puts("\n== recursion (tail-recursive sum) ==")
IO.puts("sum [1,2,3,4,5] = #{Lesson04.sum_list([1, 2, 3, 4, 5])}")
