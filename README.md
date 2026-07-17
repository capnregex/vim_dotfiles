# vim_dotfiles

Classic **Vim / gVim** configuration (not Neovim). Designed to live as:

```text
~/.vim/          ← this repository
~/.vimrc         → source ~/.vim/vimrc
~/.gvimrc        → source ~/.vim/gvimrc   (optional; see below)
```

## Install

```bash
# Backup any existing config
mv ~/.vim ~/.vim.bak 2>/dev/null || true

git clone --recursive git@github.com:capnregex/vim_dotfiles.git ~/.vim

# Entry points (if not already present)
echo 'source ~/.vim/vimrc'  > ~/.vimrc
echo 'source ~/.vim/gvimrc' > ~/.gvimrc   # GUI only
```

**System tools** (for fuzzy find; install via distro packages if missing):

- `fzf` — required for fuzzy pickers  
- `fd` — faster file listing (optional; used when present)  
- `ripgrep` (`rg`) — content search for `:Rg`  

On Omarchy these are typically already installed.

Update plugins later:

```bash
cd ~/.vim
git pull
git submodule update --init --recursive
```

## Layout

| Path | Role |
|------|------|
| `vimrc` / `gvimrc` | Main config (terminal / GUI) |
| `plugin/mkdir.vim` | `:W` writes creating parent dirs; `:Mkdir` |
| `pack/tpope/start/*` | tpope packages (git submodules) |
| `pack/junegunn/start/*` | fzf + fzf.vim |
| `notes.md` | Ideas deferred for later |

### Packages

| Package | Purpose |
|---------|---------|
| [vim-rails](https://github.com/tpope/vim-rails) | Rails navigation & helpers |
| [vim-bundler](https://github.com/tpope/vim-bundler) | Bundler integration |
| [vim-dispatch](https://github.com/tpope/vim-dispatch) | Async `:Make` / compilers |
| [vim-sleuth](https://github.com/tpope/vim-sleuth) | Heuristic indent detection |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git (`:Git`, blame, …) |
| [vim-surround](https://github.com/tpope/vim-surround) | Surround text objects |
| [vim-commentary](https://github.com/tpope/vim-commentary) | `gc` comment/uncomment |
| [vim-repeat](https://github.com/tpope/vim-repeat) | Better `.` after plugin maps |
| [vim-endwise](https://github.com/tpope/vim-endwise) | Auto `end` for Ruby |
| [fzf](https://github.com/junegunn/fzf) + [fzf.vim](https://github.com/junegunn/fzf.vim) | Fuzzy files/buffers/search |

Ruby/git syntax and filetype plugins come from **Vim’s runtime** (9.x), not vendored copies.

### Leader maps (space)

| Map | Command |
|-----|---------|
| `<leader>f` | `:Files` |
| `<leader>F` | `:GFiles` |
| `<leader>b` | `:Buffers` |
| `<leader>/` | `:Rg` |
| `<leader>h` | `:History` |
| `<leader>l` | `:BLines` |
| `<leader>gs` | `:Git` |
| `<leader>gb` | `:Git blame` |

## History

Previously used **Pathogen** + `bundle/`. Migrated to native `pack/*/start/*` packages (2026). Branch `remove_pathogen` was an earlier unfinished attempt.

## Neovim

Omarchy’s Neovim/LazyVim config lives separately under `~/.config/nvim` and is not managed here. Deferred ideas: see [notes.md](./notes.md).
