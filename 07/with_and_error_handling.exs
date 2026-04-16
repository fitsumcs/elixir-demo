# 07 - Error handling with tagged tuples and `with`

defmodule Lesson07 do
  def parse_int(text) do
    case Integer.parse(text) do
      {num, ""} -> {:ok, num}
      _ -> {:error, :invalid_integer}
    end
  end

  def validate_non_zero(0), do: {:error, :division_by_zero}
  def validate_non_zero(n), do: {:ok, n}

  def safe_divide(a, b), do: {:ok, a / b}

  def divide_strings(a_text, b_text) do
    with {:ok, a} <- parse_int(a_text),
         {:ok, b} <- parse_int(b_text),
         {:ok, b} <- validate_non_zero(b),
         {:ok, result} <- safe_divide(a, b) do
      {:ok, result}
    else
      {:error, :invalid_integer} -> {:error, "inputs must be integers"}
      {:error, :division_by_zero} -> {:error, "cannot divide by zero"}
    end
  end
end

IO.puts("== Successful parse + divide ==")
IO.inspect(Lesson07.divide_strings("20", "4"))

IO.puts("\n== Invalid input ==")
IO.inspect(Lesson07.divide_strings("twenty", "4"))

IO.puts("\n== Division by zero ==")
IO.inspect(Lesson07.divide_strings("20", "0"))
