# 11 - Agent: tiny in-memory state (good first OTP building block)

defmodule Lesson11.Demo do
  def run do
    {:ok, counter} = Agent.start_link(fn -> 0 end)

    IO.puts("== Agent initial value ==")
    IO.puts(Agent.get(counter, & &1))

    IO.puts("\n== Agent.update accumulates ==")
    Agent.update(counter, &(&1 + 1))
    Agent.update(counter, &(&1 + 5))
    IO.puts(Agent.get(counter, & &1))

    IO.puts("\n== Agent.get can compute from state without changing it ==")
    doubled = Agent.get(counter, fn n -> n * 2 end)
    IO.puts("doubled view: #{doubled}, stored value still: #{Agent.get(counter, & &1)}")
  end
end

Lesson11.Demo.run()
