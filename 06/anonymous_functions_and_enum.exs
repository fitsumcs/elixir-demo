# 06 - Anonymous functions and higher-order Enum usage

defmodule Lesson06 do
  def summarize_scores(scores) do
    total = Enum.sum(scores)
    count = length(scores)
    average = total / count

    %{
      total: total,
      count: count,
      average: average
    }
  end

  def passing_scores(scores, min_score) do
    Enum.filter(scores, fn score -> score >= min_score end)
  end

  def curve_scores(scores, bonus) do
    scores
    |> Enum.map(&(&1 + bonus))
    |> Enum.map(&min(&1, 100))
  end

  def grade_labels(scores) do
    Enum.map(scores, fn score ->
      cond do
        score >= 90 -> "A"
        score >= 80 -> "B"
        score >= 70 -> "C"
        score >= 60 -> "D"
        true -> "F"
      end
    end)
  end
end

scores = [55, 67, 73, 88, 91]

IO.puts("== Raw scores ==")
IO.inspect(scores, charlists: :as_lists)

IO.puts("\n== Summary map ==")
IO.inspect(Lesson06.summarize_scores(scores))

IO.puts("\n== Passing (>= 70) ==")
IO.inspect(Lesson06.passing_scores(scores, 70), charlists: :as_lists)

IO.puts("\n== Curved by +5 (cap at 100) ==")
curved = Lesson06.curve_scores(scores, 5)
IO.inspect(curved, charlists: :as_lists)

IO.puts("\n== Grade labels for curved scores ==")
IO.inspect(Lesson06.grade_labels(curved))
