# Neovim Configuration Cheatsheet

## 🔍 Telescope (Fuzzy Finder)

### File Navigation
- `<leader>sf` - **[S]earch [F]iles** - Find files in project
- `<leader>sg` - **[S]earch by [G]rep** - Live grep through all files
- `<leader>ac` - **Ack/Grep search** - Alternative grep search
- `<leader>sw` - **[S]earch current [W]ord** - Search word under cursor
- `<leader>s.` - **Search Recent Files** - Recently opened files
- `<leader>sn` - **[S]earch [N]eovim files** - Search Neovim config files
- `<leader><leader>` - **Search Buffers** - Find open buffers
- `<leader>s/` - **Search in Buffer** - Fuzzy search current buffer

### Help & Documentation
- `<leader>sh` - **[S]earch [H]elp** - Search help documentation
- `<leader>sk` - **[S]earch [K]eymaps** - Browse all keymaps
- `<leader>sd` - **[S]earch [D]iagnostics** - Browse diagnostics
- `<leader>sr` - **[S]earch [R]esume** - Resume last search
- `<leader>ss` - **[S]earch [S]ymbols** - Document symbols
- `<leader>ws` - **[W]orkspace [S]ymbols** - Project-wide symbols
- `<leader>st` - **[S]earch [T]odo** - Find TODO comments

### Git Integration
- `<leader>gs` - **[G]it [S]tatus** - View git status with Telescope

## 💡 LSP (Language Server Protocol)

### Code Navigation
- `grd` - **[G]oto [D]efinition** - Jump to definition (works across files)
- `grr` - **[G]oto [R]eferences** - Find all references
- `gri` - **[G]oto [I]mplementation** - Jump to implementation
- `grD` - **[G]oto [D]eclaration** - Jump to declaration
- `grt` - **[G]oto [T]ype Definition** - Jump to type definition
- `gra` - **Code [A]ction** - Show available code actions (fixes, refactors)

### Code Intelligence
- `K` - **Hover Documentation** - Show documentation for symbol
- `<leader>rn` - **[R]e[n]ame** - Rename symbol project-wide
- `<leader>q` - **Diagnostic Quickfix** - Open diagnostic list
- `<leader>th` - **[T]oggle Inlay [H]ints** - Toggle type hints

## ⚡ Flash.nvim (Jump Navigation)

- `s` - **Flash Jump** - Jump to any character/word on screen
  - Type 1-2 characters, then press the label letter to jump
- `S` - **Flash Treesitter** - Jump between code structures (functions, classes)
- `r` (in operator mode) - **Remote Flash** - Operate on remote text
- `R` (visual/operator) - **Treesitter Search** - Search using treesitter
- `Ctrl-s` (in search) - **Toggle Flash** - Enable flash during search

## 🎯 Vertigo (Vertical Navigation)

- `<leader>j` - **Vertigo Down** - Jump down with labels
- `<leader>k` - **Vertigo Up** - Jump up with labels
- Works in normal, visual, and operator modes

## 🌳 Neo-tree (File Explorer)

- `<leader>e` - **Toggle Neo-tree** - Open/close file explorer
- `\\` - **Alternative Neo-tree Toggle**
- Inside Neo-tree:
  - `a` - Add file/directory
  - `d` - Delete
  - `r` - Rename
  - `y` - Copy
  - `x` - Cut
  - `p` - Paste
  - `c` - Copy to clipboard
  - `m` - Move
  - `R` - Refresh
  - `?` - Show help

## ✏️ Editing Enhancements

### Surround (vim-surround)
- `cs"'` - **Change Surround** - Change " to '
- `ds"` - **Delete Surround** - Delete surrounding "
- `ysiw"` - **Add Surround** - Surround word with "
- `yss)` - **Surround Line** - Surround entire line with ()
- Visual mode + `S"` - Surround selection with "

### Commentary
- `gcc` - **Comment Line** - Toggle comment on current line
- `gc` + motion - **Comment Motion** - Comment text object (e.g., `gcap` for paragraph)
- Visual + `gc` - **Comment Selection** - Toggle comment on selection

### Autopairs
- Automatically closes brackets, quotes, etc.
- `(` → `()` with cursor in middle
- Works with `{`, `[`, `"`, `'`, `` ` ``

### Multiple Cursors (mini.nvim)
- `Alt+n` - Select next occurrence
- `Alt+p` - Select previous occurrence
- `Alt+a` - Select all occurrences

## 🎨 UI Enhancements

### Todo Comments
- Highlights TODO, FIXME, NOTE, etc. in comments
- `<leader>st` - Search all todos in project

### Which-key
- Shows available keybindings when you pause after pressing a key
- `<leader>` - Wait to see all leader mappings
- `g` - Wait to see all g mappings

### Gitsigns
- Shows git changes in the gutter
- `]h` - Next hunk
- `[h` - Previous hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hS` - Stage buffer
- `<leader>hu` - Undo stage hunk
- `<leader>hR` - Reset buffer
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>hd` - Diff this
- `<leader>hD` - Diff this ~
- `<leader>tb` - Toggle blame line
- `<leader>td` - Toggle deleted

## 🔧 Autocompletion (blink.cmp)

- `Tab` / `Shift-Tab` - Navigate suggestions
- `Enter` - Accept completion
- `Ctrl-Space` - Trigger completion manually
- `Ctrl-b` / `Ctrl-f` - Scroll docs
- `Ctrl-e` - Close completion menu
- `Ctrl-k` - Toggle signature help
- Supports:
  - LSP completions
  - Snippets
  - Buffer words
  - File paths

## 🧪 Testing (vim-test)

- `<leader>tn` - **Test Nearest** - Run test nearest to cursor
- `<leader>tf` - **Test File** - Run current test file
- `<leader>ts` - **Test Suite** - Run entire test suite
- `<leader>tl` - **Test Last** - Run last test
- `<leader>tv` - **Test Visit** - Visit test file
- Uses vimux for tmux integration

## 🚀 GitHub Copilot

- `Tab` - Accept suggestion (in insert mode)
- `Alt+]` - Next suggestion
- `Alt+[` - Previous suggestion
- `Alt+\` - Trigger suggestion
- `<leader>cp` - Open Copilot panel

## 📋 Custom Keybindings

### Window Management
- `<C-h/j/k/l>` - Navigate between windows
- `<leader>ww` - Switch windows
- `<leader>wh/j/k/l` - Move to specific window direction

### General
- `kk` - Exit insert mode (alternative to Esc)
- `<leader>nh` - Clear search highlights
- `<F8>` - Toggle Tagbar (code outline)

## 🎄 Treesitter Features

### Incremental Selection
- `Ctrl-Space` - Start/expand selection (word → expression → block → function)
- `Backspace` (visual) - Shrink selection
- `Ctrl-S` - Shrink selection

### Syntax Features
- Automatic syntax highlighting
- Smart indentation
- Code folding (`za` toggle, `zR` open all, `zM` close all)

## 📦 Additional Utilities

### mini.nvim Suite
- **mini.ai** - Enhanced text objects
  - `vaa` - Select around argument
  - `diq` - Delete inside quotes (any type)
  - `ci(` - Change inside parentheses
- **mini.surround** - Alternative surround operations
- **mini.pairs** - Auto-pairing brackets

### vim-sleuth
- Automatically detects and sets indentation settings

### vim-trailing-whitespace
- Highlights trailing whitespace in red
- `:FixWhitespace` - Remove all trailing whitespace

### vim-unimpaired
- `]q` / `[q` - Navigate quickfix list
- `]l` / `[l` - Navigate location list
- `]b` / `[b` - Navigate buffers
- `]t` / `[t` - Navigate tabs
- `]p` / `[p` - Paste with proper indentation

## 🎨 Colorscheme

- **Gruvbox** (hard contrast) - Currently active
- `:Telescope colorscheme` - Browse and preview colorschemes

## 💼 Mason (LSP/Tool Manager)

- `:Mason` - Open Mason UI
- `:MasonInstall <tool>` - Install language server/tool
- `:MasonUninstall <tool>` - Uninstall tool
- `:MasonUpdate` - Update all tools

## 📝 Notes

- `<leader>` is set to Space
- Most mappings support dot-repeat with vim-repeat plugin
- Use `:Telescope keymaps` to discover more mappings
- Check `:checkhealth` for plugin status and issues