# Elixir Practice Repo

This repository contains small Elixir exercises and scripts.

## Current Structure

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

## Prerequisites

- [Elixir](https://elixir-lang.org/install.html) installed locally.

Verify installation:

```bash
elixir --version
```

## Run the Scripts

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
```

Expected output:

`01` through `04`, `06` through `11` print labeled learning examples. `05` runs tests and shows a test summary.


