# 12 - GenServer: explicit message handling (step up from Agent)

defmodule Lesson12.Counter do
  use GenServer

  # Client API (runs in the caller process)

  def start_link(initial_count \\ 0) do
    GenServer.start_link(__MODULE__, initial_count)
  end

  def get(pid), do: GenServer.call(pid, :get)

  def increment(pid), do: GenServer.call(pid, :increment)

  def reset(pid), do: GenServer.call(pid, :reset)

  # Server callbacks (run in the GenServer process)

  @impl true
  def init(count) when is_integer(count) do
    {:ok, count}
  end

  @impl true
  def handle_call(:get, _from, count) do
    {:reply, count, count}
  end

  @impl true
  def handle_call(:increment, _from, count) do
    new = count + 1
    {:reply, new, new}
  end

  @impl true
  def handle_call(:reset, _from, _count) do
    {:reply, :ok, 0}
  end
end

defmodule Lesson12.Demo do
  def run do
    {:ok, pid} = Lesson12.Counter.start_link(0)

    IO.puts("== Initial get ==")
    IO.puts(Lesson12.Counter.get(pid))

    IO.puts("\n== increment returns new value and updates state ==")
    IO.puts(Lesson12.Counter.increment(pid))
    IO.puts(Lesson12.Counter.increment(pid))
    IO.puts(Lesson12.Counter.get(pid))

    IO.puts("\n== reset ==")
    Lesson12.Counter.reset(pid)
    IO.puts(Lesson12.Counter.get(pid))
  end
end

Lesson12.Demo.run()
