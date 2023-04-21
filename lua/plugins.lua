-- __________.__               .__
-- \______   \  |  __ __  ____ |__| ____   ______
--  |     ___/  | |  |  \/ ___\|  |/    \ /  ___/
--  |    |   |  |_|  |  / /_/  >  |   |  \\___ \
--  |____|   |____/____/\___  /|__|___|  /____  >
--                     /_____/         \/     \/

return require 'packer'.startup(function(use)
    ---------------------------=== Essential Dependencies ===---------------------------
    -- Improve Startup Time
    use 'lewis6991/impatient.nvim'

    -- Packer Package Manager
    use 'wbthomason/packer.nvim'

    -- Async Runtime
    use 'nvim-lua/plenary.nvim'

    -- Popup
    use 'nvim-lua/popup.nvim'

    ---------------------------=== Language Server Config ===---------------------------
    -- Baseline LSP Config
    use { 'neovim/nvim-lspconfig', config = [[require 'config.lspconfig']] }

    -- LSP Completion Engine
    use { 'hrsh7th/nvim-cmp', config = [[require 'config.cmp']] }

    -- nvim-cmp Extensions
    use 'hrsh7th/cmp-path'

    use 'hrsh7th/cmp-cmdline'

    use 'hrsh7th/cmp-buffer'

    use 'hrsh7th/cmp-git'

    use 'hrsh7th/cmp-nvim-lsp'

    use 'hrsh7th/cmp-nvim-lsp-signature-help'

    use 'lukas-reineke/lsp-format.nvim'

    ---------------------------===   Language  Specific   ===---------------------------
    -- Rust cargo.toml
    use { 'Saecki/crates.nvim', config = [[require 'crates'.setup()]] }

    -- Debugging dependency for rust-tools
    use 'mfussenegger/nvim-dap'

    -- Jumping to beginning/end of a Python block with %
    use 'tmhedberg/matchit'

    -- Python Indentation
    use 'Vimjas/vim-python-pep8-indent'

    ---------------------------===        Utilities       ===---------------------------
    -- LSP diagnostics handler
    use { 'folke/trouble.nvim', config = [[require 'config.trouble']] }

    -- Todo Highlighting
    use { 'folke/todo-comments.nvim', config = [[require 'config.todo_comments']] }

    -- Barbar Tabline
    use { 'romgrk/barbar.nvim', config = [[require 'config.barbar']] }

    -- Terminal improvements
    use { 'akinsho/toggleterm.nvim', tag = '*', config = [[require 'config.toggleterm']] }

    -- Code review diff helper
    use 'AndrewRadev/diffurcate.vim'

    -- Move lines of code
    use { 'fedepujol/move.nvim', config = [[require 'config.move']] }

    -- Commenting
    use { 'terrortylor/nvim-comment', config = [[require 'nvim_comment'.setup()]] }

    -- Running code
    use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim', config = [[require 'config.code_runner']] }

    -- Better undoing
    use { 'mbbill/undotree', config = [[require 'config.undotree']] }

    -- Auto Pairs
    use { 'jiangmiao/auto-pairs', config = [[require 'config.autopairs']] }

    -- Snippet Support
    use 'L3MON4D3/LuaSnip'

    -- Harpoon File Marker
    use { 'ThePrimeagen/harpoon', config = [[require 'config.harpoon']] }

    -- Telescope Fuzzy Finder
    use { 'nvim-telescope/telescope.nvim', config = [[require 'config.telescope']] }

    -- Telescope Extensions
    use 'jvgrootveld/telescope-zoxide'

    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Zen Mode
    use { 'shortcuts/no-neck-pain.nvim', config = [[require 'config.no_neck_pain']] }

    -- File Tree
    use { 'nvim-tree/nvim-tree.lua', config = [[require 'config.nvim_tree']] }

    -- Nvim Tree Icons
    use 'nvim-tree/nvim-web-devicons'

    -- Git support
    use 'tpope/vim-fugitive'

    ---------------------------===    Editor Formatting   ===---------------------------
    -- Start Menu
    use { 'goolord/alpha-nvim', config = [[require 'config.alpha']] }

    -- bottom line replacement
    use { 'nvim-lualine/lualine.nvim', config = [[require 'config.lualine']] }

    -- Git decorations
    use { 'lewis6991/gitsigns.nvim', config = [[require 'config.gitsigns']] }

    -- Indent lines
    use 'lukas-reineke/indent-blankline.nvim'

    -- Syntax Highlighting
    use { 'nvim-treesitter/nvim-treesitter', config = [[require 'config.treesitter']], run = ':TSUpdate' }

    ---------------------------===         Themes         ===---------------------------
    use { 'catppuccin/nvim', config = [[require 'config.theme']] }
end)
