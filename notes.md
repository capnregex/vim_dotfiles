# Later ideas (not implemented yet)

Parking lot for improvements discussed while modernizing this config.
Do these only if a real need shows up — the “sensible set” is already in `vimrc` + `pack/`.

## Fuzzy find alternatives (skip unless fzf is insufficient)

- [ ] **ctrlp.vim** — older pure-Vim fuzzy; slower on large trees
- [ ] **LeaderF** — fast, more moving parts than fzf.vim
- [ ] Telescope / snacks pickers — **Neovim only** (use `~/.config/nvim` LazyVim instead)

## More tpope plugins

- [ ] **vim-unimpaired** — `]q`/`[q` quickfix, `]n` conflict markers, option toggles
- [ ] **vim-eunuch** — `:Rename`, `:Delete`, `:SudoWrite` (overlaps a bit with `:W` / `:Mkdir`)
- [ ] **vim-obsession** or simple sessions — restore window layouts
- [ ] **vim-projectionist** — custom alternate-file maps beyond rails.vim

## Appearance

- [ ] Dark colorscheme that fits Omarchy/Hyprland (e.g. habamax, desert, or a small theme pack)
- [ ] Statusline: keep default, or light **lightline** / **airline** (airline is heavier)
- [ ] GUI font beyond Monospace (JetBrainsMono Nerd Font is already on Omarchy)

## Navigation / files

- [ ] Lean on **netrw** more (`:Lexplore`) before adding a file-tree plugin
- [ ] **vinegar.vim** — netrw improvements (tpope)
- [ ] Project root helpers if rails.vim + fzf are not enough

## LSP / completion (prefer Neovim for heavy IDE)

- [ ] Keep serious LSP/completion in **Neovim + LazyVim** (`~/.config/nvim`)
- [ ] Avoid **coc.nvim** / **YouCompleteMe** in classic gVim unless there is a strong reason
- [ ] If needed later: minimal completion only (e.g. mucomplete) without full LSP

## Ruby / Rails

- [ ] Revisit **vim-rvm** only if someone uses RVM again (removed; mise is primary)
- [ ] Test-running maps via **dispatch** (`:Dispatch`, `:Focus`) for RSpec/Minitest
- [ ] Optional: vim-test + dispatch integration

## Config hygiene

- [ ] Global git excludes for `*~` / `.*.swp` (see `~/.grok/notes/gitignore-editor-artifacts.md`)
- [ ] Local overrides via `~/.vim/vimrc.local` / `gvimrc.local` (already gitignored) for machine-only maps
- [ ] Consider `set clipboard=unnamedplus` on Wayland if GUI clipboard maps feel awkward in terminal Vim

## Explicitly out of scope here

- Full IDE parity with LazyVim
- Tree-sitter, DAP debuggers, AI plugins (use Neovim or external tools)
