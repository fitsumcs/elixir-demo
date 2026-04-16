# Elixir Practice Repo

This repository contains small Elixir exercises: runnable scripts at the repo root and a standard Mix application in a subfolder.

## How this project is set up

**Lesson scripts (root)**  
Lessons live in numbered folders (`01/`, `02/`, …) as plain `.exs` files. They were added incrementally as a learning path so you can run any file with `elixir` without a project compile step.

**Mix application (`practice/`)**  
The [`practice/`](practice/) app was created as a **separate folder inside this repo** (so the existing lessons were not overwritten):

```bash
mix new practice --module Practice --sup
```

That command scaffolds a normal Mix project with an OTP **Application** module and an empty **supervision tree** (`--sup`). Use `practice/` for `mix compile`, `mix test`, Hex dependencies, and anything that follows the usual Mix layout. Lesson scripts stay at the repository root.

**CI**  
GitHub Actions runs `mix deps.get` and `mix test` with `working-directory: practice`.

## Mix application

```bash
cd practice
mix deps.get
mix test
```

## Current structure

- `practice/` - Mix / OTP application (`mix test`, `mix compile`, deps).
- `01/basic.exs` - simple starter script that prints a message.
- `02/core_data_and_pattern_matching.exs` - numbers, strings, lists, tuples, maps, and pattern matching.
- `03/modules_and_functions.exs` - module definition, functions, guards, and pipe operator.
- `04/control_flow_and_recursion.exs` - `case`, `cond`, tagged tuples, and tail recursion.
- `05/exunit_intro.exs` - basic `ExUnit` assertions in a single runnable script.
- `06/anonymous_functions_and_enum.exs` - anonymous functions, captures, and practical `Enum` pipelines.
- `07/with_and_error_handling.exs` - tagged tuple error flow and `with` for clean chaining.
- `08/structs_and_updates.exs` - named keys, `defstruct`, pattern matching, and `%{struct | ...}` updates.
- `09/protocols.exs` - `defprotocol` / `defimpl` and dispatch over different types.
- `10/tasks_and_concurrency.exs` - `Task.async` / `Task.await` and overlapping work.
- `11/agent_intro.exs` - `Agent` for small shared state and updates.
- `12/genserver_intro.exs` - minimal `GenServer` with `call` and `handle_call`.

## Prerequisites

- [Elixir](https://elixir-lang.org/install.html) installed locally.

Verify installation:

```bash
elixir --version
```

## Run the lesson scripts

From the repository root:

```bash
elixir 01/basic.exs
elixir 02/core_data_and_pattern_matching.exs
elixir 03/modules_and_functions.exs
elixir 04/control_flow_and_recursion.exs
elixir 05/exunit_intro.exs
elixir 06/anonymous_functions_and_enum.exs
elixir 07/with_and_error_handling.exs
elixir 08/structs_and_updates.exs
elixir 09/protocols.exs
elixir 10/tasks_and_concurrency.exs
elixir 11/agent_intro.exs
elixir 12/genserver_intro.exs
```

Expected output:

`01` through `04`, `06` through `12` print labeled learning examples. `05` runs tests and shows a test summary.
