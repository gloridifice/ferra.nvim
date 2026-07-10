# AGENTS.md — ferra.nvim

## Architecture (must know)

This is a **compiled colorscheme**, not a runtime highlight script. On `:colorscheme ferra`, it loads a pre-compiled bytecode cache from `vim.fn.stdpath("cache") .. "/ferra"`. The cache is a single binary blob produced by `lua/ferra/lib/compiler.lua`.

**Rule: any change to highlights, palette, or options requires `:FerraCompile` to regenerate the cache.** Agents frequently forget this and wonder why edits don't show up.

The compiler merges `editor` + `syntax` + `treesitter` + `lsp` + integrations + terminal colors into one table, then dumps it as bytecode. The theme's `load()` path: `colors/ferra.lua` → `require("ferra").load()` → `loadfile(compiled_cache)`.

## Single flavour only

This repo stripped catppuccin's 4 flavours (latte/frappe/macchiato/mocha) down to one: `ferra`. The `flavours` table in `init.lua` is `{ ferra = 1 }`. All `U.vary_color({ latte = ... })` branching has been removed.

- Palette definition: `lua/ferra/palettes/ferra.lua`
- 11 ferra colours are mapped onto catppuccin's 26 palette keys so existing `groups/` files work with minimal changes.

## How colours work

Do **not** put raw hex strings in `groups/*.lua`. Every highlight uses palette keys like `C.text`, `C.pink`, `C.bg32`. The actual hex values live only in `lua/ferra/palettes/ferra.lua`.

| ferra colour | palette key(s) it maps to |
|---|---|
| night `#2b292d` | `base`, `crust` |
| ash `#383539` | `mantle`, `surface0` |
| umber `#4d424b` | `surface1`, `surface2` |
| bark `#6F5D63` | `overlay0`, `overlay1`, `overlay2` |
| blush `#fecdb2` | `text`, `rosewater`, `subtext1` |
| mist `#D1D1E0` | `mauve`, `sky`, `sapphire`, `subtext0` |
| sage `#B1B695` | `green`, `teal` |
| coral `#ffa07a` | `peach`, `blue`, `flamingo` |
| rose `#F6B6C9` | `pink`, `lavender` |
| ember `#e06b75` | `red`, `maroon` |
| honey `#F5D76E` | `yellow` |

## Developer commands

| Task | Command |
|---|---|
| Recompile cache after any highlight/palette change | `:FerraCompile` |
| Run tests (requires plenary.nvim installed) | `nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedDirectory tests/ {minimal_init = 'tests/minimal_init.vim', sequential = true}"` |
| Check formatting | `stylua --check --config-path=stylua.toml .` |
| Auto-format | `stylua --config-path=stylua.toml .` |

## Common edit patterns

- **Change a syntax colour** → edit `lua/ferra/groups/syntax.lua` or `treesitter.lua`, then `:FerraCompile`.
- **Change the base background** → edit `lua/ferra/palettes/ferra.lua` (the only palette file), then `:FerraCompile`.
- **Add a new integration** → create `lua/ferra/groups/integrations/<plugin>.lua` with a `M.get()` function returning highlights, then `:FerraCompile`.
- **Add a user-facing option** → add it to `default_options` in `lua/ferra/init.lua`, consume it in `groups/` or `lib/mapper.lua`, then `:FerraCompile`.

## Testing

Tests live in `tests/` and use plenary.nvim's busted wrapper. CI runs them on every PR/push to `main`. If you add a new option, add a test in the appropriate spec file.

## Lint / format

- **StyLua** is the Lua formatter. Config: `stylua.toml`.
- CI fails if `stylua --check` fails.
- No separate Lua linter is configured in CI (selene.toml exists but is not enforced).

## Gotchas

- `lua/ferra/groups/` still uses catppuccin palette key names (`C.coral`, `C.pink`, etc.) because the 11 ferra colours are **mapped** onto those 26 keys. Don't rename the keys unless you also rewrite every group file.
- `@property` and `@variable.member` were previously `lavender` (rose) and were changed to `text` (blush) per user request. If debugging colour issues, use `:Inspect` on the token under cursor.
- The `weaken_delimiters` option toggles `Delimiter` and `@punctuation.bracket` between `C.text` (blush, default) and `C.bg32` (bark).
