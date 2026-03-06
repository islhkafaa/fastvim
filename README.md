# FastVim

A professional, modular Neovim configuration built for speed, aesthetics, and a premium development experience.

Featuring a deep integration with the Tokyo Night theme and customized for KDE Breeze environments.

## Features

- **Performance**: Powered by `lazy.nvim` for fast startup and lazy-loading.
- **LSP Support**: Full Language Server Protocol support via `mason` and `nvim-lspconfig`.
- **Debugging**: Industrial-grade debugging using `nvim-dap` with a professional UI.
- **Completion**: VS Code-like completion with `nvim-cmp` and `lspkind` icons.
- **Explorer**: Modern file management with `Neo-tree`, customized for clarity.
- **Fuzzy Finder**: Ultra-fast searching for files and text with `Telescope`.
- **Modern UI**: Redesigned command line, notifications, and popups using `Noice.nvim`.
- **Formatting & Linting**: Clean code guaranteed with `conform.nvim` and `nvim-lint`.
- **Navigation**: Lightning-fast screen jumping with `Flash.nvim`.
- **Statusline**: Breadcrumbs and context-aware statusline using `Lualine` and `Navic`.

## Installation

1. **Requirements**:
   - Neovim (0.9.0+)
   - A Nerd Font (e.g., JetBrainsMono Nerd Font)
   - Ripgrep (for Telescope)
   - FD (for Telescope)

2. **Clone the configuration**:

   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

3. **Launch Neovim**:
   ```bash
   nvim
   ```
   _Lazy.nvim will automatically install all plugins on the first run._

## Essential Keybinds

| Key          | Action                               |
| ------------ | ------------------------------------ |
| `<leader>e`  | Toggle File Explorer                 |
| `<leader>ff` | Search Files                         |
| `<leader>fg` | Live Grep (Search through text)      |
| `s`          | Flash Jump (Jump anywhere on screen) |
| `<leader>cf` | Format current file                  |
| `Ctrl + \`   | Toggle Floating Terminal             |
| `<F5>`       | Start Debugging                      |
| `<leader>xx` | Toggle Diagnostics List (Trouble)    |
