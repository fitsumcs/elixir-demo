# 10 - Concurrency with Task (async work)

defmodule Lesson10 do
  @doc "Pretend slow work: sleep `ms` then return a simple result."
  def pretend_work_ms(ms) do
    Process.sleep(ms)
    ms * 2
  end
end

defmodule Lesson10.Demo do
  def run do
    IO.puts("== Sequential: two 100ms sleeps ==")
    t0 = System.monotonic_time(:millisecond)
    a = Lesson10.pretend_work_ms(100)
    b = Lesson10.pretend_work_ms(100)
    IO.puts("results #{a}, #{b}; elapsed ~#{System.monotonic_time(:millisecond) - t0} ms")

    IO.puts("\n== Parallel: Task.async + Task.await ==")
    t0 = System.monotonic_time(:millisecond)
    task_a = Task.async(fn -> Lesson10.pretend_work_ms(100) end)
    task_b = Task.async(fn -> Lesson10.pretend_work_ms(100) end)
    x = Task.await(task_a)
    y = Task.await(task_b)
    IO.puts("results #{x}, #{y}; elapsed ~#{System.monotonic_time(:millisecond) - t0} ms")
    IO.puts("(parallel runs overlap, so total time is often close to one sleep, not two)")
  end
end

Lesson10.Demo.run()
