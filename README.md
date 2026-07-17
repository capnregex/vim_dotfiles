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
| `pack/tpope/start/*` | Native Vim packages (git submodules) |

### Packages (tpope)

| Package | Purpose |
|---------|---------|
| [vim-rails](https://github.com/tpope/vim-rails) | Rails navigation & helpers |
| [vim-bundler](https://github.com/tpope/vim-bundler) | Bundler integration |
| [vim-dispatch](https://github.com/tpope/vim-dispatch) | Async `:Make` / compilers |
| [vim-sleuth](https://github.com/tpope/vim-sleuth) | Heuristic indent detection |

Ruby/git syntax and filetype plugins come from **Vim’s runtime** (9.x), not vendored copies.

## History

Previously used **Pathogen** + `bundle/`. Migrated to native `pack/*/start/*` packages (2026). Branch `remove_pathogen` was an earlier unfinished attempt.

## Neovim

Omarchy’s Neovim/LazyVim config lives separately under `~/.config/nvim` and is not managed here.
