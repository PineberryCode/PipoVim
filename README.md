# PIPOVIM
Welcome to my personal Vim configuration! This repository contains my `.vimrc` file, designed to enhance the Vim editing experience with a focus on modern development, auto-completion, and navigation.

### Prerequisites
Before proceeding with the installation, ensure you have the following installed on your system:
* **Curl**: Needed to install `vim-plug`.
* **Node.js & npm/yarn**: Essential for `coc.nvim` and its language server extensions. You can install Node.js from [nodejs.org](https://nodejs.org/).
* **FZF CLI**: The `fzf.vim` plugin requires the `fzf` command-line tool. You will install it as part of the plugin setup, but it's good to be aware.

### Features
This configuration sets up Vim with several quality-of-life improvements:

- **Search Improvements**: incsearch incrementally highlights matches as you type, making searching more intuitive.
- **Smart Auto-Closing**: Automatically closes common pairs like quotes, parentheses, brackets, and angle brackets, and positions the cursor inside them (inoremap for `''`, `""`, `()`, `[]`, `{}`, `<>`).

### Plugins
This configuration leverages `vim-plug` to manage a set of powerful plugins:

| Plugin | Description |
| :----- | :----- |
| `tpope/vim-sensible` | A collection of common-sense Vim options that just make Vim feel better. |
| `prabirshrestha/vim-lsp` | Language Server Protocol (LSP) client for Vim, enabling IDE-like features. |
| `mattn/vim-lsp-settings` | Automatic LSP client settings for various languages. |
| `prabirshrestha/asyncomplete.vim` | Asynchronous auto-completion framework. |
| `prabirshrestha/asyncomplete-lsp.vim` | LSP source for asyncomplete.vim. |
| `Shougo/ddc.vim` | A powerful and extensible completion framework (likely used alongside or as an alternative/fallback to asyncomplete.vim in some contexts). |
| `shun/ddc-vim-lsp` | LSP source for ddc.vim. |
| `rust-lang/rust.vim` | Vim plugin for Rust language support. |
| `dense-analysis/ale` | Asynchronous Linting and Fixing (ALE) for syntax checking and linting. |
| `neoclide/coc.nvim` | Conquer of Completion – a powerful Intellisense engine for Vim, supporting LSP, snippets, and more. This is a major component for advanced completion and code actions. |
| `tpope/vim-fugitive` | The premier Git wrapper for Vim. Makes Git operations seamless from within your editor. |
| `vim-airline/vim-airline` | A lean and mean status/tabline for Vim, providing useful information at a glance. |
| `vim-airline/vim-airline-themes` | Provides additional themes for Vim-Airline. |
| `preservim/tagbar` | Displays an outline of the current file, showing functions, classes, and other tags for quick navigation. |
| `junegunn/fzf` | A general-purpose command-line fuzzy finder. |
| `junegunn/fzf.vim` | Vim integration for `fzf`, enabling fuzzy finding for files, buffers, commands, and more directly within Vim. |


### Usage & Keybindings

* **Auto-Completion**: The configuration sets up `TAB` for navigating completion suggestions and `Shift-TAB` for going backwards.
* **Code Actions (Coc.nvim)**:
  * `leader` + `a` (normal mode): Trigger code actions at the cursor.
  * `leader` + `a` (visual mode): Trigger code actions for the selected text.
    (Assuming `<leader>` is set to `\` by default, or whatever you have configured.)

> [!NOTE]
> Enable autocomplete for Rust, installing theses: `coc-tsserver`, `coc-rust-analyzer` & `coc-json`

Command: 
```vim
 :CocInstall coc-tsserver coc-rust-analyzer coc-json
```
