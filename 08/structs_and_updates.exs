# 08 - Structs, pattern matching, and immutable updates

defmodule Lesson08.User do
  @enforce_keys [:id, :name]
  defstruct [:id, :name, :active]

  def new(id, name) do
    %__MODULE__{id: id, name: name, active: true}
  end
end

defmodule Lesson08 do
  def greeting(%Lesson08.User{name: name}) when is_binary(name) do
    "Hello, #{name}!"
  end

  def deactivate(%Lesson08.User{} = user) do
    %{user | active: false}
  end

  def status_label(%Lesson08.User{active: true}), do: "active"
  def status_label(%Lesson08.User{active: false}), do: "inactive"
end

IO.puts("== Create struct ==")
alice = Lesson08.User.new(1, "Alice")
IO.inspect(alice, structs: false)

IO.puts("\n== Pattern-matched function ==")
IO.puts(Lesson08.greeting(alice))

IO.puts("\n== Immutable update (%{struct | field: value}) ==")
alice_inactive = Lesson08.deactivate(alice)
IO.inspect(alice_inactive, structs: false)
IO.puts("original still active: #{Lesson08.status_label(alice)}")
IO.puts("updated copy: #{Lesson08.status_label(alice_inactive)}")
