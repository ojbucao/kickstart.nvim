# Neovim Configuration Cheatsheet

## 🔍 Telescope (Fuzzy Finder)

### Content Search (like :Ag)
- `<leader>sg` - **[S]earch by [G]rep** - Search text/regex inside all files (live updates)
- `<leader>ac` - **Ack/Grep search** - Alternative mapping for grep search
- `<leader>sw` - **[S]earch current [W]ord** - Search word under cursor in all files
- `<leader>s/` - **Search in Buffer** - Fuzzy search current buffer only
- **Supports regex**: `function.*test`, `^import`, `TODO|FIXME`, etc.
- **Path display**: `Ctrl-p` to cycle path modes while in Telescope

### File/Path Search
- `<leader>sf` - **[S]earch [F]iles** - Find files by name (NOT contents)
- `<leader>s.` - **Search Recent Files** - Recently opened files
- `<leader>sn` - **[S]earch [N]eovim files** - Search Neovim config files
- `<leader><leader>` - **Search Buffers** - Find open buffers

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

### Telescope Navigation
- Arrow keys or `Ctrl-j/k` - Navigate results
- `Enter` - Open file
- `Ctrl-x` - Open in horizontal split
- `Ctrl-v` - Open in vertical split
- `Ctrl-t` - Open in new tab
- `Ctrl-u/d` - Scroll preview up/down
- `Ctrl-/` - Show help in Telescope

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

## 🎯 Autopairs

- Automatically closes brackets, quotes, and other pairs
- Type `(` → get `()` with cursor in middle
- Type `{` → get `{}`
- Type `"` → get `""`
- Type `[` → get `[]`
- Press `Enter` between `{}` → creates formatted block:
  ```
  {
    |cursor here
  }
  ```

## 🧪 Testing (vim-test)

- `<leader>tv` - **Test Visit** - Switch between test and implementation file
- `<leader>tn` - **Test Nearest** - Run test nearest to cursor
- `<leader>tf` - **Test File** - Run current test file
- `<leader>ts` - **Test Suite** - Run entire test suite
- `<leader>tl` - **Test Last** - Run last test
- Alternative shortcuts:
  - `<leader>t` - Run nearest test
  - `<leader>T` - Run test file
  - `<leader>a` - Run all tests
  - `<leader>l` - Run last test
  - `<leader>g` - Go to test file
- Uses vimux for tmux integration
- Configured for: RSpec, Minitest, Cargo test, Jest, Mocha

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

### Navigation
- `Ctrl-o` - Jump back to previous location
- `Ctrl-i` - Jump forward (opposite of Ctrl-o)
- `Ctrl-^` or `Ctrl-6` - Toggle between current and last file
- `g;` - Go to previous edit location
- `g,` - Go to next edit location

### General
- `kk` - Exit insert mode (alternative to Esc)
- `<leader>nh` - Clear search highlights
- `<leader>fw` - Fix trailing whitespace
- `<F8>` - Toggle Tagbar (code outline)

## 🎄 Treesitter Features

### Incremental Selection
- `Ctrl-Space` - Start/expand selection (word → expression → block → function)
- `Backspace` (visual) - Shrink selection
- `Ctrl-S` - Shrink selection

### Syntax Features
- Automatic syntax highlighting
- Smart indentation
- Code folding:
  - `za` - Toggle fold at cursor
  - `zo` / `zc` - Open/close fold
  - `zR` / `zM` - Open/close all folds
  - `zj` / `zk` - Navigate to next/previous fold
  - `zi` - Toggle folding on/off globally

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
- `<leader>fw` - Fix trailing whitespace
- `:FixWhitespace` - Remove all trailing whitespace

### indent-blankline
- Shows vertical indent guidelines
- Very subtle gray lines (customized for Gruvbox)
- `:IBLToggle` - Toggle indent lines on/off
- `:IBLEnable` / `:IBLDisable` - Enable/disable indent lines

### vim-unimpaired
- `]q` / `[q` - Navigate quickfix list
- `]l` / `[l` - Navigate location list
- `]b` / `[b` - Navigate buffers
- `]t` / `[t` - Navigate tabs
- `]p` / `[p` - Paste with proper indentation

### Vimux (Tmux Integration)
- `<leader>vp` - Prompt for tmux command
- `<leader>vl` - Run last tmux command
- `<leader>vq` - Close tmux runner

## 💎 Ruby/Rails

- **vim-rails** Navigation:
  - `:A` - Alternate file (controller ↔ view)
  - `:R` - Related file
  - `:Emodel`, `:Eview`, `:Econtroller` - Jump to MVC files
- **vim-endwise** - Auto-adds `end` to blocks
- **Solargraph** LSP provides intellisense

## 🦀 Rust

- `<leader>rc` - Open Cargo.toml
- `<leader>rd` - Open docs.rs documentation
- `<leader>rr` - Run project
- `<leader>ra` - Rust code actions
- `K` - Hover with actions (in Rust files)
- **crates.nvim** - Shows version info in Cargo.toml
- Clippy runs on save automatically

## 🌐 JavaScript/TypeScript/HTML

- **Auto-tag** - Auto-close and rename HTML tags
- **Package Info** (in package.json):
  - `<leader>ns` - Show package versions
  - `<leader>nh` - Hide package info
  - `<leader>nu` - Update package
  - `<leader>nd` - Delete package
  - `<leader>ni` - Install package
- **typescript-tools.nvim** - Enhanced TS support with inlay hints
- ESLint and Prettier configured

## 🐳 Docker

- `<leader>dc` - View Docker containers
- `<leader>di` - View Docker images
- `<leader>dC` - Docker Compose commands
- LSP support for Dockerfile and docker-compose.yml
- Syntax highlighting for Dockerfiles

## 🔧 Auto-formatting (conform.nvim)

- `<leader>f` - Format current buffer
- **Auto-formats on save** for:
  - Ruby: rubocop
  - Rust: rustfmt
  - JavaScript/TypeScript: Prettier
  - Python: Black + isort
  - Lua: stylua
  - Go: gofmt
  - HTML/CSS/JSON/YAML: Prettier
- Disable for C/C++ by default

## 📊 UI Enhancements

### Lualine (Status Bar)
- Shows mode, git branch, diagnostics, filename, file type, position
- Gruvbox themed to match colorscheme

### Bufferline (Tab Bar)
- `Shift-h` / `Shift-l` - Previous/next buffer
- `[b` / `]b` - Alternative buffer navigation
- `<leader>bd` - Delete current buffer
- `<leader>bp` - Pin/unpin buffer
- `<leader>bo` - Close other buffers
- `<leader>br` - Close buffers to the right
- `<leader>bl` - Close buffers to the left
- Shows LSP diagnostics in tabs

## 🎨 Colorscheme

- **Gruvbox** (hard contrast) - Currently active
- `:Telescope colorscheme` - Browse and preview colorschemes

## 💼 Mason (LSP/Tool Manager)

- `:Mason` - Open Mason UI
- `:MasonInstall <tool>` - Install language server/tool
- `:MasonUninstall <tool>` - Uninstall tool
- `:MasonUpdate` - Update all tools

### Configured Language Servers:
- **Ruby**: solargraph, rubocop
- **Rust**: rust-analyzer (via rustaceanvim)
- **JavaScript/TypeScript**: ts_ls, eslint
- **HTML/CSS**: html, cssls, emmet_ls
- **Docker**: dockerls, docker_compose_language_service
- **JSON**: jsonls
- **YAML**: yamlls
- **Lua**: lua_ls

## 📝 Notes

- `<leader>` is set to Space
- Most mappings support dot-repeat with vim-repeat plugin
- Use `:Telescope keymaps` to discover more mappings
- Check `:checkhealth` for plugin status and issues