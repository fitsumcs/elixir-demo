# 09 - Protocols: one interface, many types

defmodule Lesson09.Rectangle do
  defstruct [:width, :height]
end

defmodule Lesson09.Circle do
  defstruct [:radius]
end

defprotocol Lesson09.Describe do
  @doc "Return a short human-readable description of the value."
  def describe(term)
end

defimpl Lesson09.Describe, for: Lesson09.Rectangle do
  def describe(%{width: w, height: h}) do
    "rectangle #{w} x #{h}"
  end
end

defimpl Lesson09.Describe, for: Lesson09.Circle do
  def describe(%{radius: r}) do
    "circle radius #{r}"
  end
end

defimpl Lesson09.Describe, for: BitString do
  def describe(text), do: "string: #{inspect(text)}"
end

defmodule Lesson09.Demo do
  def run do
    rect = %Lesson09.Rectangle{width: 4, height: 5}
    circle = %Lesson09.Circle{radius: 3}

    IO.puts("== Same function, different types ==")
    IO.puts(Lesson09.Describe.describe(rect))
    IO.puts(Lesson09.Describe.describe(circle))
    IO.puts(Lesson09.Describe.describe("hello"))

    IO.puts("\n== Dispatch in a list ==")
    for item <- [rect, circle, "plain"] do
      IO.puts(Lesson09.Describe.describe(item))
    end
  end
end

Lesson09.Demo.run()
