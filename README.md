# Elixir Practice Repo

This repository contains small Elixir exercises and scripts.

## Current Structure

- `01/basic.exs` - simple starter script that prints a message.
- `02/core_data_and_pattern_matching.exs` - numbers, strings, lists, tuples, maps, and pattern matching.
- `03/modules_and_functions.exs` - module definition, functions, guards, and pipe operator.
- `04/control_flow_and_recursion.exs` - `case`, `cond`, tagged tuples, and tail recursion.
- `05/exunit_intro.exs` - basic `ExUnit` assertions in a single runnable script.

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
```

Expected output:

`01` through `04` print labeled learning examples. `05` runs tests and shows a test summary.

## Notes

- Suggested learning order is `01` -> `02` -> `03` -> `04` -> `05`.
- After `05`, a good next step is converting this into a Mix project (`mix new`) and moving tests into a `test/` directory.

